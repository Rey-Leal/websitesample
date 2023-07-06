using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.OleDb;
using System.Web.Mail;

/// <summary>
/// Summary description for Controle
/// </summary>
public class Controle
{
    public Controle()
    {
    }

    public static String CriaUsuario(String nome, int idade, String uf, String logon, String senha)
    {
        senha = Criptografa.Senha(senha);
        UsuarioBO usr = new UsuarioBO(nome, idade, uf, logon, senha);
        UsuarioDAO dao = new UsuarioDAO();
        return dao.SalvaUsuario(usr);
    }

    public static String AlteraUsuario(String nome, int idade, String uf, String logonNovo, String senhaNova, String logon, String senha)
    {
        senhaNova = Criptografa.Senha(senhaNova);
        senha = Criptografa.Senha(senha);
        UsuarioBO usr = new UsuarioBO(nome, idade, uf, logonNovo, senhaNova);
        UsuarioDAO dao = new UsuarioDAO();
        return dao.AlteraUsuario(usr, logon, senha);
    }

    public static String Logon(String logon, String senha)
    {
        senha = Criptografa.Senha(senha);
        UsuarioDAO usrDAO = new UsuarioDAO();
        return usrDAO.Logon(logon, senha);
    }

    public static DataSet ListaUsuarios()
    {
        UsuarioDAO usrDAO = new UsuarioDAO();
        return usrDAO.ListaUsuarios();
    }

    public static UsuarioBO BuscaDadosUsuario(String logon, String senha)
    {
        senha = Criptografa.Senha(senha);
        UsuarioDAO usrDAO = new UsuarioDAO();
        return usrDAO.BuscaDadosUsuario(logon, senha);
    }

    public static String EnviaSugestao(String nome, String email, String sugestao)
    {
        try
        {
            MailMessage message = new MailMessage();

            message.To = "reyleal@antuane.com.br";
            message.From = email;
            message.Subject = "Sugestão: (" + nome + ")";
            message.BodyFormat = MailFormat.Text;
            message.Body = sugestao;
            SmtpMail.SmtpServer = "mail.antuane.com.br";
            SmtpMail.Send(message);
            return ("E-Mail enviado com sucesso!");
        }
        catch (Exception)
        {
            return ("Erro no envio, tente mais tarde");
        }
    }

}
