<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>


<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <link href="Login.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form class="Login">
        <input checked id='signin' name='action' type='radio' value='signin'>
        <label for='signin'>Sign in</label>
        <input id='signup' name='action' type='radio' value='signup'>
        <label for='signup'>Sign up</label>
        <input id='reset' name='action' type='radio' value='reset'>
        <label for='reset'>Reset</label>
        <div id='wrapper'>
        <div id='arrow'></div>
        <input id='email' placeholder='Email' type='text'>
        <input id='pass' placeholder='Password' type='password'>
        <input id='repass' placeholder='Repeat password' type='password'>
        </div>
        <button type='submit' >
        <span>
            Reset password
            <br>
            Sign in
            <br>
            Sign up
        </span>
        </button>
    </form>
</body>
</html>
