<%@ Page Language="C#" %>

<%// import das bibliotecas necessarias para acesso ao banco de dados, configuracao, etc...
//Para manipular e prove acesso para classes ADO.NET%>
<%@ Import Namespace="System.Data" %>

<%// Arquivo de configuracao, para pegar porta, string de conexao%>
<%@ Import Namespace="System.Configuration"%>

<%//Cliente SQL%>
<%@ Import Namespace="System.Data.SqlClient"%>

<%//Parte de autenticacao, login e senha%>
<%@ Import Namespace="System.Web.Security"%>

<%

// Set this headers at IIS HTTP Response Headers
//if (HttpContext.Current.Request.HttpMethod == "OPTIONS")
//{
//	//Response.AddHeader("Access-Control-Allow-Origin", "http://ec2-54-207-103-15.sa-east-1.compute.amazonaws.com");
//	Response.AddHeader("Access-Control-Allow-Origin", "*");
//	Response.AddHeader("Access-Control-Allow-Headers", "Access-Control-Allow-Origin, Origin, Content-Type, Content-Length, Accept, Authorization, X-Requested-With");
//	Response.AddHeader("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE, OPTIONS, HEAD");
//	//Response.AddHeader("Access-Control-Allow-Credentials", "true");
//	Response.AddHeader("Access-Control-Max-Age", "1209600");
//Response.Write("{\"message\": \"ok\"}");
//	Response.StatusCode = 200;
//	return;
//}

// verifica se a requisicao veio via GET (requisicao de pagina)
if (HttpContext.Current.Request.HttpMethod == "GET")
{
    if (Request.QueryString.ToString().Length == 0) {
        Response.StatusCode = 400;
        Response.Write("{\"message\": \"Codigo ou Descrição é um parametro obrigatorio e não foi informado. Exemplo: http://integracao.altamira.com.br/material?search=CANTONEIRA\"}");
        return;
    }

    // cria conexao com o banco de dados
    using (SqlConnection connection = new SqlConnection("Server=(local);Database=INTEGRACAO;User Id=integracao;Password=#35az09@;"))
    {
        // cria comando sql para localizar o usuario dentro da tabela
        using (SqlCommand cmd = new SqlCommand("MATERIAL"))
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@search", Request.QueryString["search"]);
	    cmd.Parameters.AddWithValue("@start", Request.QueryString["start"]);
	    cmd.Parameters.AddWithValue("@max", Request.QueryString["max"]);
            
            // atribui a conexao ao comando
            cmd.Connection = connection;
            
            // abre a conexao
            connection.Open();
            
            // executa o comando para localizar o usuario no banco de dados
            String json = Convert.ToString(cmd.ExecuteScalar());
            
            //Response.ContentType = "application/json; charset=iso-8859-1";

            if (json == null || json == "")
            {
                        Response.StatusCode = 404;
                        Response.Write("{\"message\": \"Material não encontrado !\"}");
            } else {
                        Response.StatusCode = 200;
                        Response.Write(json);
            }

            // fecha a conexao
            connection.Close();
        }
    }
    // The action is a GET
}

%>