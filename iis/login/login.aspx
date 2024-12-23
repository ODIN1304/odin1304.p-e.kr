<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="SimpleLogin.Login" %>
<!-- 
  ASP.NET 페이지 지시문입니다.
  - Language="C#": 페이지의 서버 측 코드 언어로 C#을 사용합니다.
  - AutoEventWireup="true": 이벤트 핸들러를 자동으로 연결합니다.
  - CodeBehind="login.aspx.cs": 연결된 코드 비하인드 파일의 경로입니다.
  - Inherits="SimpleLogin.Login": 이 페이지가 상속받는 클래스 이름입니다.
-->

<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <!-- 페이지의 제목을 "Login"으로 설정합니다. -->
</head>
<body>
    <!-- ASP.NET 서버 측 폼입니다. -->
    <form id="form1" runat="server">
        <!-- 
          id="form1": 폼의 고유 ID입니다.
          runat="server": 폼을 서버 컨트롤로 설정하여 서버에서 처리할 수 있도록 합니다.
        -->
        <div>
            <h2>Login</h2>
            <!-- 로그인 페이지의 제목입니다. -->
            
            <!-- 서버 측 레이블 컨트롤 -->
            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label><br />
            <!-- 
              lblMessage: 사용자에게 메시지(예: 오류 메시지)를 표시하기 위한 레이블입니다.
              Text="": 초기 텍스트는 비어 있습니다.
            -->

            <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
            <!-- 
              lblUsername: "Username:" 텍스트를 표시하는 레이블입니다.
            -->
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox><br />
            <!-- 
              txtUsername: 사용자가 사용자 이름을 입력할 수 있는 텍스트 박스입니다.
              runat="server": 서버 컨트롤로 동작하도록 설정합니다.
            -->

            <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
            <!-- 
              lblPassword: "Password:" 텍스트를 표시하는 레이블입니다.
            -->
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br />
            <!-- 
              txtPassword: 사용자가 비밀번호를 입력할 수 있는 텍스트 박스입니다.
              TextMode="Password": 입력한 텍스트를 숨김 상태(점 또는 별표)로 표시합니다.
            -->

            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            <!-- 
              btnLogin: "Login" 텍스트를 가진 버튼 컨트롤입니다.
              OnClick="btnLogin_Click": 사용자가 버튼을 클릭하면 서버 측에서 btnLogin_Click 메서드가 호출됩니다.
            -->
        </div>
    </form>
</body>
</html>
