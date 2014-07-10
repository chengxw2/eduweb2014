<html>
<head>
	<meta name='layout' content='main'/>
	<title><g:message code="springSecurity.login.title"/></title>
	<style type='text/css' media='screen'>
	#login {
		
		height:auto;
		padding: 0px;
		text-align: center;
		background-color:#F2F2F2;
		margin-top:-100px;
		float:left;
	}

	#login .inner {
		width: 340px;
		height:350px;
		float:right;
		padding-top:50px;
		padding-bottom: 6px;
		margin-right:40px;
		text-align: left;
		background-color:#dbdbdb ;
		-moz-box-shadow: 2px 2px 2px #ffffff;
		-webkit-box-shadow: 2px 2px 2px #ffffff;
		-khtml-box-shadow: 2px 2px 2px #ffffff;
		box-shadow: 2px 2px 2px #fffff;
	}

	#login .inner .fheader {
		padding: 18px 26px 14px 26px;
		background-color:#ff5210;
		margin: 0px 0 14px 0;
		color: #2e3741;
		font-size: 18px;
		font-weight: bold;
	}
	
	

	#login .inner .cssform p {
		clear: left;
		margin: 0;
		padding: 4px 0 3px 0;
		padding-left: 105px;
		margin-bottom: 20px;
		height: 1%;
	}

	#login .inner .cssform input[type='text'] {
		width: 120px;
	}

	#login .inner .cssform label {
		font-weight: bold;
		float: left;
		text-align: right;
		margin-left: -105px;
		width: 110px;
		padding-top: 3px;
		padding-right: 10px;
	}

	#login #remember_me_holder {
		padding-left: 120px;
	}

	#login #submit {
		margin-left: 15px;
	}
	
	#login .texto_principal{
	width:500px;;
    float:left;
    text-align:left;
    margin-left:30px;
    margin-top:60px;
	}
	
	#login .texto_principal h1{
	font-size:40px;
	color:#2E9AFE;
	}
		
	#login  .espacio_blanco {
	height:40px;
	}

	#login #remember_me_holder label {
		float: none;
		margin-left: 0;
		text-align: left;
		width: 200px
	}

	#login .inner .login_message {
		padding: 6px 25px 20px 25px;
		color: #c33;
	}

	#login .inner .text_ {
		width: 120px;
	}

	#login .inner .chk {
		height: 12px;
	}
	
	#medio_bajo{
	background:url(../images/medio_bajo.jpg) repeat-x;
	height:300px;
	float:left;
	}
	
	.texto{
	 width:300px;
	 float:left;
	 text-align:left;
	 margin-left:20px;
	 margin-top:80px;
	}
	
	.texto p{
	 font-size:13px;
	}
	
	</style>
</head>

<body>
<div id='login'>
    <div class='texto_principal'>
	     <h1>Plataforma Educativa</h1>
		 <p>Lorem Ipsum is simply dummy text of the printing 
	     and typesetting industry. Lorem Ipsum has been the 
	     industry's standard dummy text ever since the 1500s,
	     when an unknown printer took a galley </p>
	     <img src='../images/chicos.png' width='384' height='147'/>
	</div>
	<div class='inner'>
		<div class='fheader'><g:message code="springSecurity.login.header"/></div>

		<g:if test='${flash.message}'>
			<div class='login_message'>${flash.message}</div>
		</g:if>

		<form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
			<p>
				<label for='username'><g:message code="springSecurity.login.username.label"/>:</label>
				<input type='text' class='text_' name='j_username' id='username'/>
			</p>

			<p>
				<label for='password'><g:message code="springSecurity.login.password.label"/>:</label>
				<input type='password' class='text_' name='j_password' id='password'/>
			</p>

			<p id="remember_me_holder">
				<input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
				<label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>
			</p>

			<p>
				<input type='submit' id="submit" value='${message(code: "springSecurity.login.button")}'/>
			</p>
		</form>
	</div>
	<div id='medio_bajo'>
	  <div class='texto'>
	     <h1>Colaboración</h1>
	     <p>Lorem Ipsum is simply dummy text of the printing 
	     and typesetting industry. Lorem Ipsum has been the 
	     industry's standard dummy text ever since the 1500s,
	     when an unknown printer took a galley </p>
	  </div>
	   <div class='texto'>
	     <h1>Integración</h1>
	     <p>Lorem Ipsum is simply dummy text of the printing 
	     and typesetting industry. Lorem Ipsum has been the 
	     industry's standard dummy text ever since the 1500s,
	     when an unknown printer took a galley </p>
	  </div>
	   <div class='texto'>
	      <h1>Comunicación</h1> 
	      <p>Lorem Ipsum is simply dummy text of the printing 
	     and typesetting industry. Lorem Ipsum has been the 
	     industry's standard dummy text ever since the 1500s,
	     when an unknown printer took a galley </p>
	  </div>
	</div>
</div>
<script type='text/javascript'>
	<!--
	(function() {
		document.forms['loginForm'].elements['j_username'].focus();
	})();
	// -->
</script>
</body>
</html>
