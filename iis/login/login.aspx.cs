using System;
using System.Data.SqlClient;

namespace SimpleLogin
{
    public partial class Login : System.Web.UI.Page
    {
        // 버튼 클릭 이벤트 핸들러
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // 사용자가 입력한 사용자 이름과 비밀번호를 변수에 저장
            string username = txtUsername.Text;
            string password = txtPassword.Text;

            // 연결 문자열을 가져옵니다. (Web.config의 <connectionStrings>에서 설정)
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyDBConnectionString"].ConnectionString;

            // 데이터베이스 연결 객체를 생성합니다.
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // SQL 쿼리: 사용자 이름과 비밀번호가 일치하는 레코드가 존재하는지 확인
                string query = "SELECT COUNT(*) FROM ODIN_membersTbl WHERE Username = @Username AND Pwd = @Password";
                SqlCommand command = new SqlCommand(query, connection);

                // SQL 파라미터를 추가하여 SQL Injection을 방지합니다.
                command.Parameters.AddWithValue("@Username", username);
                command.Parameters.AddWithValue("@Password", password);

                try
                {
                    // 데이터베이스 연결을 엽니다.
                    connection.Open();

                    // 쿼리를 실행하고 결과로 반환된 사용자 수를 확인합니다.
                    int userCount = (int)command.ExecuteScalar();

                    if (userCount > 0) // 사용자가 존재하는 경우
                    {
                        // 세션에 사용자 이름을 저장하고 환영 페이지로 리디렉션합니다.
                        Session["Username"] = username;
                        Response.Redirect("/welcome/Welcome.aspx");
                    }
                    else // 사용자 이름 또는 비밀번호가 일치하지 않는 경우
                    {
                        lblMessage.Text = "Invalid username or password.";
                    }
                }
                catch (Exception ex) // 예외 처리
                {
                    // 오류 메시지를 사용자에게 표시합니다.
                    lblMessage.Text = "Error: " + ex.Message;

                    // 오류 로그를 파일에 기록합니다.
                    System.IO.File.AppendAllText(Server.MapPath("/logs/ErrorLog.txt"), ex.ToString());
                }
            }
        }
    }
}
