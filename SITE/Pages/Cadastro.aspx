<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="SITE.Pages.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cadastro</title>
    <link type="text/css" rel="stylesheet" href="../Content/Style.css" />
</head>

<body>
    <form id="form1" runat="server">
            <div id="divTopo">
            <div id="divLogo">
                <h1 id="textoLogo"><span style="color:orange;">.libr</span><span style="color: blue;">a.</span></h1>
            </div>
            <div id="divTextoTopo">
                <h3 id="textoTopo">Cadastro de Patrimônio</h3>
            </div>
            <div id="divContato">
                <img id="imgContato" src="../Imagens/contato.png" />
                <p class="textoMenu">CONTATO</p>
            </div>
        </div>

        <div id="divLinhaTopo">
        </div>

        <div>
            <header>
                <a href="../Default.aspx" class="links">
                    <div class="divMenu" id="divIcone1">
                        <img class="icone" src="../Imagens/home.png" />
                        <p class="textoMenu">HOME</p>
                    </div>
                </a>
                <!--Home-->
                <div class="divMenu" id="divIcone2">
                    <img class="icone" src="../Imagens/cadastrar.png" />
                    <p class="textoMenu">CADASTRAR CLIENTE</p>
                </div>
                <!--Cadastrar Cliente-->
                <a href="Consultar.aspx">
                <div class="divMenu" id="divIcone3">
                    <img class="icone" src="../Imagens/consultarClientes.png" />
                    <p class="textoMenu">CONSULTAR CLIENTE</p>
                </div>
                </a>
                <!--Consultar Cliente-->
                <div class="divMenu" id="divIcone4">
                    <img class="icone" src="../Imagens/consultarDados.png" />
                    <p class="textoMenu">CONSULTAR DADOS</p>
                </div>
                <!--Obter Dados Clientes-->
                <a href="Pages/Sobre.aspx" class="links">
                    <div class="divMenu" id="divIcone5">
                        <img class="icone" src="../Imagens/contato.png" />
                        <p class="textoMenu">SOBRE</p>
                    </div>
                </a>
            </header>
        </div>
        
    </form>
</body>
</html>
