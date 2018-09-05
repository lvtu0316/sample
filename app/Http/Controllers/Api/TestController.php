<?php

namespace App\Http\Controllers\Api;

use App\Http\Requests\Api\TestRequest;
use App\Models\Photo;
use App\Models\User;
use Illuminate\Http\Request;
use Auth;
use GuzzleHttp\Client;
use Illuminate\Support\Facades\Storage;


class TestController extends Controller
{
    public function index(TestRequest $request)
    {
        $code = $request->code;

        $miniProgram = \EasyWeChat::miniProgram();
        $data = $miniProgram->auth->session($code);

        // 如果结果错误，说明 code 已过期或不正确，返回 401 错误
        if (isset($data['errcode'])) {
            return $this->response->errorUnauthorized('code 不正确');
        }
        // 找到 openid 对应的用户
        $user = User::where('weapp_openid', $data['openid'])->first();
        $attributes['weixin_session_key'] = $data['session_key'];

        // 未找到对应用户则需要提交用户名密码进行用户绑定
        if (!$user) {

            // 获取对应的用户
            $user = new User();

            $user->weapp_openid = $data['openid'];
            $user->name = $request->nickName;
            $user->avatar = $request->avatarUrl;
            $user->save();
        } else{
            // 更新用户数据
            $user->save();
        }



        // 为对应用户创建 JWT
//        $token = Auth::guard('api')->fromUser($user);
        return $data['openid'];
//        return $this->respondWithToken($token)->setStatusCode(201);
    }

    public function photo(Photo $photo)
    {
        $query = $photo->query();
        $photos = $query->paginate(5)->toarray();

        return $photos;

    }
}
