using System;

namespace SimpleLogin
{
    public partial class Welcome : System.Web.UI.Page
    {
        // 페이지가 로드될 때 실행되는 이벤트
        protected void Page_Load(object sender, EventArgs e)
        {
            // 세션에 저장된 "Username" 값이 있는지 확인
            if (Session["Username"] != null)
            {
                // 세션에 저장된 사용자 이름을 레이블에 표시
                lblUsername.Text = Session["Username"].ToString();
            }
            else
            {
                // 세션 값이 없으면 로그인 페이지로 리디렉션
                Response.Redirect("/login/login.aspx");
            }
        }

        // 로그아웃 버튼 클릭 이벤트
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            // 현재 세션을 종료
            Session.Abandon();

            // 로그인 페이지로 리디렉션
            Response.Redirect("/login/login.aspx");
        }
    }
}
