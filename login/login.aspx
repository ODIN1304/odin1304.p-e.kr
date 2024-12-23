<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SimpleLogin.Login" %>
<!-- 
    이 디렉티브는 ASP.NET 페이지의 속성을 정의합니다.
    - Language: 페이지에서 사용되는 프로그래밍 언어를 지정합니다. 여기서는 C# 사용.
    - AutoEventWireup: 이벤트 처리기가 자동으로 연결되는지 여부를 나타냅니다. "true"로 설정되어 있음.
    - CodeBehind: 페이지의 코드 비하인드 파일을 지정합니다. Login.aspx.cs 파일이 해당됨.
    - Inherits: 이 페이지가 상속받는 클래스 이름을 지정합니다. SimpleLogin 네임스페이스의 Login 클래스.
-->

<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <!-- 
        페이지의 HTML 제목을 설정합니다. 브라우저의 탭에 "Login"이라는 제목이 표시됩니다.
    -->
</head>
<body>
    <!-- ASP.NET 서버 컨트롤을 포함하는 HTML 폼 -->
    <form id="form1" runat="server">
        <!-- 
            - id: 이 폼의 식별자. 코드에서 'form1'이라는 이름으로 참조됩니다.
            - runat="server": 이 폼이 서버에서 실행됨을 나타냅니다. ASP.NET의 모든 서버 컨트롤에는 필수입니다.
        -->

        <div>
            <!-- 
                레이아웃과 스타일링을 위한 div 컨테이너.
            -->

            <h2>Login</h2>
            <!-- 
                페이지 제목으로 "Login"을 표시합니다.
            -->

            <!-- 로그인 메시지 표시용 레이블 -->
            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
            <!-- 
                - ID: 컨트롤의 고유 식별자. 코드에서 'lblMessage'로 참조.
                - runat="server": 서버 측 컨트롤임을 지정.
                - Text: 레이블에 표시할 텍스트. 초기값은 비어 있음.
                -->

            <br />
            <!-- 줄바꿈 태그로 간격을 만듦 -->

            <!-- 사용자 이름 입력 필드와 설명 레이블 -->
            <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
            <!-- 
                - ID: 'lblUsername'로 코드에서 참조 가능.
                - Text: "Username:"이라는 텍스트가 레이블에 표시됨.
            -->
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            <!-- 
                - ID: 'txtUsername'이라는 고유 식별자. 사용자 이름 입력 필드.
                - TextBox: 사용자가 텍스트를 입력할 수 있는 컨트롤.
                - runat="server": 서버 측에서 동작.
            -->

            <br />
            <!-- 줄바꿈 -->

            <!-- 비밀번호 입력 필드와 설명 레이블 -->
            <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
            <!-- 
                - ID: 'lblPassword'라는 고유 식별자. "Password:"라는 텍스트를 표시.
            -->
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <!-- 
                - ID: 'txtPassword'라는 고유 식별자. 비밀번호 입력 필드.
                - TextMode="Password": 입력된 텍스트를 비밀번호 형식(숨겨진 상태)으로 표시.
                - runat="server": 서버 측 컨트롤.
            -->

            <br />
            <!-- 줄바꿈 -->

            <!-- 로그인 버튼 -->
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            <!-- 
                - ID: 'btnLogin'이라는 고유 식별자. 코드에서 참조 가능.
                - Text: 버튼에 표시될 텍스트("Login").
                - OnClick: 클릭 이벤트 처리기를 지정. 'btnLogin_Click' 메서드가 호출됨.
            -->
        </div>
    </form>
</body>
</html>
