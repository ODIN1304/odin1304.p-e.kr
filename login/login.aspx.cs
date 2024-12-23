using System;
using System.Data.SqlClient;

namespace SimpleLogin
{
    public partial class Login : System.Web.UI.Page
    {
        // 로그인 버튼 클릭 이벤트 처리기
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // 사용자가 입력한 사용자 이름과 비밀번호를 변수에 저장
            string username = txtUsername.Text; // 사용자 이름 입력값
            string password = txtPassword.Text; // 비밀번호 입력값

            // 데이터베이스 연결 문자열을 web.config 파일에서 가져옴
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyDBConnectionString"].ConnectionString;

            // 데이터베이스 연결을 위해 SqlConnection 객체를 생성
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // 사용자 이름과 비밀번호를 확인하는 SQL 쿼리 작성
                string query = "SELECT COUNT(*) FROM ODIN_membersTbl WHERE Username = @Username AND Pwd = @Password";

                // SqlCommand 객체를 생성하여 SQL 쿼리를 데이터베이스에 실행
                SqlCommand command = new SqlCommand(query, connection);

                // SQL 쿼리에 파라미터 추가 (SQL 인젝션 방지)
                command.Parameters.AddWithValue("@Username", username); // 사용자 이름 파라미터
                command.Parameters.AddWithValue("@Password", password); // 비밀번호 파라미터

                try
                {
                    // 데이터베이스 연결 열기
                    connection.Open();

                    // 쿼리 실행 및 결과 반환 (사용자 수 확인)
                    int userCount = (int)command.ExecuteScalar();

                    if (userCount > 0)
                    {
                        // 로그인 성공 시
                        Session["Username"] = username; // 세션에 사용자 이름 저장
                        Response.Redirect("Welcome.aspx"); // Welcome.aspx 페이지로 리디렉션
                    }
                    else
                    {
                        // 로그인 실패 시
                        lblMessage.Text = "Invalid username or password."; // 오류 메시지 표시
                    }
                }
                catch (Exception ex)
                {
                    // 예외 처리
                    lblMessage.Text = "Error: " + ex.Message; // 오류 메시지를 사용자에게 표시
                    // 예외 정보를 로그 파일에 기록
                    System.IO.File.AppendAllText(Server.MapPath("~/Logs/ErrorLog.txt"), ex.ToString());
                }
            } // using 블록 종료 시 connection 객체가 자동으로 닫히고 해제됨
        }
    }
}
