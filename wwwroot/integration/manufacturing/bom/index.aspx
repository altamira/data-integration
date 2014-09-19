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

// verifica se a requisicao veio via GET (requisicao de pagina)
if (HttpContext.Current.Request.HttpMethod == "GET")
{
    if (Request.QueryString.ToString().Length == 0) {
        Response.StatusCode = 400;
        Response.Write("{\"message\": \"Número do Pedido é um parametro obrigatorio e não for informado. Exemplo: http://integracao.altamira.com.br/manufacturing/bom?72271.\"}");
        return;
    }

    // cria conexao com o banco de dados
    using (SqlConnection connection = new SqlConnection("Server=(local);Database=INTEGRACAO;User Id=integracao;Password=#35az09@;"))
    {
        // cria comando sql para localizar o usuario dentro da tabela
        using (SqlCommand cmd = new SqlCommand("MANUFACTURING_BOM"))
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@order", Request.QueryString.ToString());
            
            // atribui a conexao ao comando
            cmd.Connection = connection;
            
            // abre a conexao
            connection.Open();
            
            // executa o comando para localizar o usuario no banco de dados
            String json = Convert.ToString(cmd.ExecuteScalar());
            
            Response.ContentType = "application/json";

            if (json == null || json == "")
            {
                        Response.StatusCode = 404;
                        Response.Write("{\"message\": \"Pedido não encontrado !\"}");
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