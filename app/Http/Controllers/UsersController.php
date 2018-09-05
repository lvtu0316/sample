<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;

class UsersController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth', [
            'except' => ['show', 'sign', 'store','index','confirmEmail']
        ]);
        $this->middleware('guest', [
            'only' => ['create']
        ]);
    }

    public function index()
    {
        $users = User::paginate(10);
        return view('users.index', compact('users'));
    }

    /*
     * 注册页面
     */
    public function sign()
    {
        return view('users.create');
    }

    /*
     * 个人用户主页
     */
    public function show(User $user)
    {
        $statuses = $user->statuses()
            ->orderBy('created_at','desc')
            ->paginate(25);
        return view('users.show', compact('user','statuses'));
    }



    /*
     * 注册保存
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|max:50',
            'email' => 'required|email|unique:users|max:255',
            'password' => 'required|confirmed|min:6'
        ]);
        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => bcrypt($request->password),
        ]);
        session()->flash('success', '欢迎，您将在这里开启一段新的旅程~');
        $this->sendEmailConfirmationTo($user);
        return redirect()->route('users.show', [$user]);
    }

    /*
     * 编辑个人资料页面
     */
    public function edit(User $user)
    {
		try{
			$this->authorize('update', $user);
            return view('users.edit', compact('user'));
		} catch(\Exception $e){
			abort(500, $e->getMessage());
		}
        
    }

    /*
     * 保存更新
     */
    public function update(User $user, Request $request)
    {
        $this->validate($request, [
            'name' => 'required|max:50',
            'password' => 'nullable|confirmed|min:6'
        ]);
        $this->authorize('update',$user);
        $data = [];
        $data['name'] = $request->name;
        if ($request->password)
        {
            $data['password'] = $request->password;
        }

        $user->update($data);

        return redirect()->route('users.show', $user->id);
    }

    /*
     * 删除用户操作
     */
    public function destroy(User $user)
    {
        $this->authorize('destroy', $user);
        $user->delete();
        session()->flash('success', '成功删除用户！');
        return back();
    }

    /*
     * 注册发送邮件
     */
    public function sendEmailConfirmationTo($user)
    {
        $view = 'emails.confirm';
        $data = compact('user');
        $from = 'lvtu0316@126.com';
        $name = 'Aufree';
        $to = $user->email;
        $subject = "感谢注册Sample应用！请确认你的邮箱。";
        Mail::send($view,$data,function ($message) use ($from, $name, $to, $subject) {
            $message->from($from, $name)->to($to)->subject($subject);
        });
    }

    /*
     * 激活
     */
    public function confirmEmail($token)
    {
        $user = User::where('activation_token', $token)->firstOrFail();

        $user->activated = true;
        $user->activation_token = null;
        $user->save();

        Auth::login($user);
        session()->flash('success', '恭喜你，激活成功！');
        return redirect()->route('users.show', [$user]);
    }

    /*
     * 关注人列表
     */
    public function followings(User $user)
    {
        $users = $user->followings()->paginate(30);
        $title = '关注的人';
        return view('users.show_follow', compact('users', 'title'));
    }

    /*
     * 粉丝列表
     */
    public function followers(User $user)
    {
        $users = $user->followers()->paginate(30);
        $title = '粉丝';
        return view('users.show_follow', compact('users', 'title'));
    }
}
