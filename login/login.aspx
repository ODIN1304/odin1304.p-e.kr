<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="SimpleLogin.Login" %>
<!-- 
1. 페이지 지시문 (Page Directive):
   - Language: 페이지에서 사용할 프로그래밍 언어를 지정합니다 (C#).
   - AutoEventWireup: 이벤트가 자동으로 연결되는지 여부를 지정합니다 (true는 자동 연결).
   - CodeBehind: 코드비하인드 파일의 경로를 지정합니다 (login.aspx.cs).
   - Inherits: 코드비하인드 클래스의 이름을 지정합니다 (SimpleLogin.Login). 
-->

<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <!-- 페이지의 제목을 설정합니다. 브라우저 탭에서 표시됩니다. -->
</head>
<body>
    <!-- 서버 컨트롤을 포함하는 폼 요소를 정의합니다. -->
    <form id="form1" runat="server">
        <!-- 
        - id: HTML 요소의 고유 ID.
        - runat="server": ASP.NET 서버 컨트롤임을 지정합니다.
        -->

        <div>
            <!-- 로그인 양식의 제목을 표시합니다. -->
            <h2>Login</h2>

            <!-- 메시지를 표시할 레이블 컨트롤 -->
            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label><br />
            <!-- 
            - lblMessage: 로그인 성공/실패 메시지를 표시하기 위한 레이블 컨트롤.
            - Text 속성: 초기 텍스트는 비어있습니다.
            -->

            <!-- 사용자 이름 입력을 위한 레이블과 텍스트박스 -->
            <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
            <!-- lblUsername: 'Username:' 텍스트를 표시합니다. -->
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox><br />
            <!-- txtUsername: 사용자 이름을 입력받는 텍스트 박스 컨트롤. -->

            <!-- 비밀번호 입력을 위한 레이블과 텍스트박스 -->
            <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
            <!-- lblPassword: 'Password:' 텍스트를 표시합니다. -->
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br />
            <!-- txtPassword: 비밀번호를 입력받는 텍스트 박스 컨트롤.
                 TextMode="Password"는 입력값을 마스킹(****) 처리합니다. -->

            <!-- 로그인 버튼 -->
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            <!-- 
            - btnLogin: 로그인 동작을 트리거하는 버튼 컨트롤.
            - Text 속성: 버튼에 표시될 텍스트는 "Login".
            - OnClick 속성: 클릭 시 실행될 이벤트 핸들러는 "btnLogin_Click".
            -->
        </div>
    </form>
</body>
</html>
