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
using System.Data.OleDb;

public partial class Cadastros : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["restrito"].ToString().Equals("ComAcesso"))
        {
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }

    public void LimparCampos()
    {
        txtNome.Text = null;
        txtIdade.Text = null;
        ddlUf.Text = null;
        txtLogon.Text = null;
        txtSenha.Text = null;
    }

    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        if ((!txtNome.Text.Equals("")) && (!txtIdade.Text.Equals("")) && (!ddlUf.Text.Equals("")) && (!txtLogon.Text.Equals("")) && (!txtSenha.Text.Equals("")))
        {
            String nome = txtNome.Text;
            int idade = Convert.ToInt32(txtIdade.Text);
            String uf = ddlUf.Text;
            String logon = txtLogon.Text;
            String senha = txtSenha.Text;
            String salva = Controle.CriaUsuario(nome, idade, uf, logon, senha);
            if (salva.Equals("Usuario Salvo"))
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "alerta", "alert('Usuário salvo com sucesso!')", true);
                LimparCampos();
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "alerta", "alert(" + salva + ")", true);
                lblMensagem.Text = salva;
            }
        }
        else
        {
            lblMensagem.Text = "Dados Obrigatórios";
        }
    }

    protected void btnAlterar_Click(object sender, EventArgs e)
    {
        if ((!txtNome.Text.Equals("")) && (!txtIdade.Text.Equals("")) && (!ddlUf.Text.Equals("")) && (!txtLogon.Text.Equals("")) && (!txtSenha.Text.Equals("")))
        {
            String nome = txtNome.Text;
            int idade = Convert.ToInt32(txtIdade.Text);
            String uf = ddlUf.Text;
            String logonNovo = txtLogon.Text;
            String senhaNova = txtSenha.Text;
            String logon = Session["logon"].ToString();
            String senha = Session["senha"].ToString();
            String altera = Controle.AlteraUsuario(nome, idade, uf, logonNovo, senhaNova, logon, senha);
            if (altera.Equals("Usuario Salvo"))
            {
                LimparCampos();
                Session["restrito"] = "SemAcesso";
                Response.Redirect("Login.aspx");
            }
            else
            {
                lblMensagem.Text = altera;
            }
        }
        else
        {
            lblMensagem.Text = "Dados Obrigatórios";
        }
    }

    protected void rblNovoAltera_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblNovoAltera.SelectedIndex.Equals(1))
        {
            btnSalvar.Visible = false;
            btnAlterar.Visible = true;
            try
            {
                String logon = Session["logon"].ToString();
                String senha = Session["senha"].ToString();
                UsuarioBO usr = Controle.BuscaDadosUsuario(logon, senha);
                txtNome.Text = usr.Nome;
                txtIdade.Text = usr.Idade.ToString();
                ddlUf.Text = usr.Uf;
                txtLogon.Text = usr.Logon;
                txtSenha.Text = usr.Senha;
            }
            catch (Exception)
            {
            }
        }
        else
        {
            btnSalvar.Visible = true;
            btnAlterar.Visible = false;
            LimparCampos();
        }
    }
}
