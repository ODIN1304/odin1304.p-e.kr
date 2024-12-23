<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="SimpleLogin.Welcome" %>
<!-- 
  ASP.NET 페이지 지시문:
  - Language="C#": C#을 서버 측 코드 언어로 사용합니다.
  - AutoEventWireup="true": 이벤트 핸들러를 자동으로 연결합니다.
  - CodeBehind="Welcome.aspx.cs": 코드 비하인드 파일 경로를 지정합니다.
  - Inherits="SimpleLogin.Welcome": 이 페이지가 상속받는 클래스입니다.
-->

<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
    <!-- 페이지의 제목을 "Welcome"으로 설정합니다. -->
</head>
<body>
    <!-- 서버 측 폼입니다. -->
    <form id="form1" runat="server">
        <!-- 
          id="form1": 폼의 고유 ID입니다.
          runat="server": 폼을 서버에서 처리할 수 있도록 설정합니다.
        -->

        <!-- 환영 메시지 -->
        <h1>Welcome, <asp:Label ID="lblUsername" runat="server"></asp:Label>!</h1>
        <!-- 
          lblUsername: 서버 측 레이블로, 사용자 이름을 표시합니다.
          사용자가 로그인하면 세션 값에서 사용자 이름을 가져와 이 레이블에 표시됩니다.
        -->

        <hr />
        <!-- 구분선 -->

        <!-- 로그아웃 버튼 -->
        <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
        <!-- 
          btnLogout: "Logout" 버튼으로, 사용자가 클릭하면 로그아웃 이벤트가 발생합니다.
          OnClick="btnLogout_Click": 버튼 클릭 시 서버 측에서 btnLogout_Click 메서드가 호출됩니다.
        -->
    </form>
</body>
</html>
