using System;
using System.Data.SqlClient;

namespace SimpleLogin
{
    public partial class Login : System.Web.UI.Page
    {
        // 버튼 클릭 이벤트 핸들러
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // 사용자 입력 값을 텍스트박스에서 가져옵니다.
            string username = txtUsername.Text; // 입력된 사용자 이름
            string password = txtPassword.Text; // 입력된 비밀번호

            // 데이터베이스 연결 문자열을 웹 구성 파일(Web.config)에서 읽어옵니다.
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyDBConnectionString"].ConnectionString;

            // using 블록을 사용하여 SqlConnection 객체를 생성하고 자동으로 자원을 해제합니다.
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // SQL 쿼리: 지정된 사용자 이름과 비밀번호가 데이터베이스에 있는지 확인합니다.
                string query = "SELECT COUNT(*) FROM ODIN_membersTbl WHERE Username = @Username AND Pwd = @Password";
                
                // SqlCommand 객체를 생성하고 쿼리 및 연결 정보를 설정합니다.
                SqlCommand command = new SqlCommand(query, connection);

                // SQL 쿼리에서 매개변수를 사용하여 SQL 인젝션 공격을 방지합니다.
                command.Parameters.AddWithValue("@Username", username); // 사용자 이름 매개변수
                command.Parameters.AddWithValue("@Password", password); // 비밀번호 매개변수

                try
                {
                    // 데이터베이스 연결을 엽니다.
                    connection.Open();

                    // SQL 쿼리를 실행하고 결과를 반환받습니다. 
                    // ExecuteScalar()는 단일 값을 반환합니다.
                    int userCount = (int)command.ExecuteScalar();

                    if (userCount > 0) // 사용자가 존재하는 경우
                    {
                        // 세션(Session)에 사용자 이름을 저장합니다.
                        Session["Username"] = username;

                        // 인증에 성공하면 환영 페이지로 리디렉션합니다.
                        Response.Redirect("../welcome/Welcome.aspx");
                    }
                    else // 사용자가 존재하지 않는 경우
                    {
                        // 오류 메시지를 레이블에 표시합니다.
                        lblMessage.Text = "Invalid username or password.";
                    }
                }
                catch (Exception ex) // 예외가 발생한 경우
                {
                    // 오류 메시지를 레이블에 표시합니다.
                    lblMessage.Text = "Error: " + ex.Message;

                    // 발생한 예외를 로그 파일에 기록합니다.
                    System.IO.File.AppendAllText(Server.MapPath("~/logs/ErrorLog.txt"), ex.ToString());
                }
            } // using 블록이 끝나면 SqlConnection 객체가 자동으로 닫힙니다.
        }
    }
}
