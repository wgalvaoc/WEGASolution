<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PesquisarFabricante.aspx.cs" Inherits="SITE.Pages.PesquisarFabricante" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <!--Responsividade-->
    <!--<meta name="viewport" content="width=device-width, initial-scale=1" />-->

    <title>Pesquisar Fabricante</title>

    <link type="text/css" rel="stylesheet" href="../Content/bootstrap.css" />
    <link type="text/css" rel="stylesheet" href="../Content/Style.css" />
    <!--Icones e simbolos-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <meta name="description" content="Sistema de Gestão de Patrimônio, desenvolvido por WEGA Solution" />
    <meta name="keywords" content="Gestão, Patrimônio" />
    <meta name="author" content="Wellington Galvão" />
    <link rel="icon" href="../Imagens/Icone.png" />
</head>
<script src="Scripts/jquery-1.9.1.min.js"></script>
<script src="Scripts/bootstrap.min.js"></script>
<body>
    <form id="form1" runat="server">
        <header>
            <a id="TextoLogo" href="../Default.aspx"><span style="color: #FF34B3;">.libr</span><span style="color: #00BFFF;">a.</span></a>
            <p id="TextoHeader">Sistema de Gestão e Controle de Patrimônio</p>

            <!--SUPORTE SKYPE-->
            <script type="text/javascript" src="https://secure.skypeassets.com/i/scom/js/skype-uri.js"></script>
            <div id="SkypeButton_Call_wgalvaoc_1">
                <script type="text/javascript">
                    Skype.ui({
                        "name": "chat",
                        "element": "SkypeButton_Call_wgalvaoc_1",
                        "participants": ["wgalvaoc"],
                        "imageColor": "white",
                        "imageSize": 32
                    });
                </script>
            </div>

        </header>

        <div class="DivLinhaTopo">
        </div>

        <nav id="NavMenu">
            <ul>
                <li>
                    <a href="../Default.aspx">
                        <div>
                            HOME
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <div>
                            CADASTRO
                        </div>
                    </a>
                    <div>
                        <ul>
                            <li><a href="../Pages/CadastroFabricante.aspx">FABRICANTE</a></li>
                            <li><a href="#">MODELO</a></li>
                            <li><a href="#">EQUIPAMENTO</a></li>
                            <li><a href="#">USUÁRIO</a></li>
                            <li><a href="#">CARGO</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="#">
                        <div>
                            CONSULTA
                        </div>
                    </a>
                    <div>
                        <ul>
                            <li><a href="../Pages/ConsultaFabricante.aspx">FABRICANTE</a></li>
                            <li><a href="#">EQUIPAMENTO</a></li>
                            <li><a href="#">MODELO</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="#">
                        <div>
                            ANOMALIA
                        </div>
                    </a>
                </li>
            </ul>
        </nav>

        <section id="SectionBanner">
            <div>
                <h3>PESQUISAR FABRICANTE</h3>
            </div>


            <div id="DivCadastro">

                <div id="DivCadastroFabricante">
                    <br />
                    CÓDIGO FABRICANTE:

                    <br />
                    <br />
                    <asp:TextBox runat="server" ID="txtID" CssClass="form-control" Width="50%">
                    </asp:TextBox>
                    <br />
                    <asp:Button runat="server" ID="btnPesquisar" Text="Pesquisar" CssClass="btn btn-info" OnClick="btnPesquisarFabricante" />
                    <asp:Button runat="server" ID="btnLimpar" Text="Limpar" CssClass="btn btn-default" OnClick="btnLimparFabricante" />
                    <br />
                    <br />

                    <asp:Panel runat="server" ID="pnlFabricante">
                        NOME FABRICANTE:
                        <br />
                        <br />

                        <asp:TextBox runat="server" ID="txtNomeFabricante" CssClass="form-control" Width="100%">
                        </asp:TextBox>
                        <br />

                        <asp:Button runat="server" ID="btnAtualizar" Text="Atualizar" CssClass="btn btn-warning" OnClick="btnAtualizarFabricante" />

                        <asp:Button runat="server" ID="btnDeletar" Text="Deletar" CssClass="btn btn-danger" OnClick="btnDeletarFabricante" />

                    </asp:Panel>

                    <asp:Label runat="server" ID="lblMensagem">
                    </asp:Label>
                    <br />

                </div>

            </div>

        </section>

        <div class="DivLinhaTopo">
        </div>

        <section id="SectionContato" class="SectionContato">
            <h3>SOBRE NÓS.</h3>
        </section>

        <section class="SectionContato">
            <div class="DivTextoSobreNos">
                <p>QUEM SOMOS</p>
                <p>NOSSOS DIFERENCIAIS</p>
                <p>RESPONSABILIDADE SOCIOAMBIENTAL</p>
                <p>QUALIFICAÇÃO PROFISSIONAL</p>
            </div>
            <div class="DivTextoSobreNos">
                <p>CONTROLE PATRIMONIAL</p>
                <p>REORGANIZAÇÃO DE ATIVO</p>
                <p>AVALIAÇÃO DE ATIVO</p>
                <p>INVENTÁRIO DE ESTOQUE</p>
            </div>
            <div id="DivSocial">
                <div>
                    <img class="ImgRedesSociais" src="../Imagens/AppFacebook.png" alt="Facebook" />
                </div>
                <div>
                    <img class="ImgRedesSociais" src="../Imagens/AppG.png" alt="Google +" />
                </div>
                <div>
                    <img class="ImgRedesSociais" src="../Imagens/AppInstagram.png" alt="Instagram" />
                </div>
                <div>
                    <img class="ImgRedesSociais" src="../Imagens/AppLinkedin.png" alt="Linkedin" />
                </div>
                <div>
                    <img class="ImgRedesSociais" src="../Imagens/AppYoutube.png" alt="Youtube" />
                </div>
                <div>
                    <img class="ImgRedesSociais" src="../Imagens/AppTwitter.png" alt="Twitter" />
                </div>
                <div>
                    <img class="ImgRedesSociais" src="../Imagens/AppGithub.png" alt="GitHub" />
                </div>
                <div>
                    <a href="mailto:wgalvao@msn.com">
                        <img class="ImgRedesSociais" src="../Imagens/AppEmail.png" alt="Email" />
                    </a>
                </div>
                <div>
                    <a href="tel:xx73999815292">
                        <img class="ImgRedesSociais" src="../Imagens/AppWhatsApp.png" alt="WhatsApp" />
                    </a>
                </div>
            </div>
        </section>

        <footer>
            <p id="textoRodape">© Todos Direitos Reservados 2017 | WEGA Interactive Solution</p>
            <a href="wwww.wegasolution.com.br">
                <img src="../Imagens/logoWega.png" alt="Logo WEGA Solution" style="width: 130px;" /></a>
        </footer>
    </form>
</body>
</html>
