<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>注册确认链接</title>
</head>
<body>
<h1>感谢我们相遇，您越权了。</h1>

<p>
    {{ $exception->getMessage() ? $exception->getMessage(): "具体的错误提示自己定义" }}
</p>


</body>
</html>