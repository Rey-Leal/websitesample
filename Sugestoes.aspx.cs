using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

public partial class Sugestoes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void LimparCampos()
    {
        txtNome.Text = "";
        txtEmail.Text = "";
        txtSugestao.Text = "";
    }
    protected void btnEnviar_Click(object sender, EventArgs e)
    {
        String nome = txtNome.Text;
        String email = txtEmail.Text;
        String sugestao = txtSugestao.Text;
        String enviaSugestao = Controle.EnviaSugestao(nome, email, sugestao);
        Page.ClientScript.RegisterStartupScript(Page.GetType(), "alerta", "alert('" + enviaSugestao + "')", true);
        LimparCampos();
    }
}
