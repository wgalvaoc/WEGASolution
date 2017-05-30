<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SITE.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <!--<meta name="viewport" content="width=device-width, initial-scale=1" />-->
    <!--Responsividade-->
    <title>Controle e Gestão de Patrimônio</title>
    <!--<link type="text/css" rel="stylesheet" href="../Content/bootstrap.css" />-->
    <link type="text/css" rel="stylesheet" href="Content/Layout.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <!--Icones e simbolos-->
    <meta name="description" content="Sistema de Gestão de Patrimônio, desenvolvido por WEGA Solution" />
    <meta name="keywords" content="Gestão, Patrimônio" />
    <meta name="author" content="Wellington Galvão" />
    <link rel="icon" href="../Imagens/Icone.png" />
</head>
<script src="Scripts/jquery-1.9.1.min.js"></script>
<script src="Scripts/bootstrap.min.js"></script>
<body>
    <form id="form1" runat="server">
        <nav>
            <a href="#">libra</a>

            <ul>
                <li><a href="#">CADASTRO</a></li>
                <li><a href="#">CONSULTA</a></li>
                <li><a href="#">ANOMALIA</a></li>
                <li><a href="#">DASHBOARD</a></li>
            </ul>
        </nav>

        <header>
            <h1>WEGA SOLUTION</h1>
            <p>Sobre a WEGA Solution</p>
            <a href="#">Leia Mais</a>
        </header>

        <section id="sobre">
            <h2>SOBRE</h2>
            <p>Sobre a WEGA Solution</p>
            <a href="#">Entre em Contato</a>
        </section>

        <section id="servicos">
            <h2>SERVIÇOS</h2>
            <h3>ANOMALIA</h3>
            <div>
                <img src="Imagens/logoWega.png" alt="Engrenagem" style="max-width: 100%;" />
                <h3>Sobre a WEGA Solution 1</h3>
                <p>WEGA Interactive Solution</p>
            </div>
            <h3>CADASTRO</h3>
            <div>
                <img src="Imagens/logoWega.png" alt="Engrenagem" style="max-width: 100%;" />
                <h3>Sobre a WEGA Solution 2</h3>
                <p>WEGA Interactive Solution</p>
            </div>

            <h3>CONSULTA</h3>
            <div>
                <img src="Imagens/logoWega.png" alt="Engrenagem" style="max-width: 100%;" />
                <h3>Sobre a WEGA Solution 3</h3>
                <p>WEGA Interactive Solution</p>
            </div>

        </section>

        <section id="portifolio">
            <h2>PORTIFÓLIO</h2>

            <img src="Imagens/logoWega.png" alt="Engrenagem" style="max-width: 100%;" />

            <img src="Imagens/logoWega.png" alt="Engrenagem" style="max-width: 100%;" />

            <img src="Imagens/logoWega.png" alt="Engrenagem" style="max-width: 100%;" />

            <img src="Imagens/logoWega.png" alt="Engrenagem" style="max-width: 100%;" />

            <img src="Imagens/logoWega.png" alt="Engrenagem" style="max-width: 100%;" />

            <img src="Imagens/logoWega.png" alt="Engrenagem" style="max-width: 100%;" />

        </section>

        <section id="contato">
            <h2>CONTATO</h2>
            <p>Fale conosco</p>
            <div>
                <img src="Imagens/logoWega.png" alt="Telefone" style="width: 200px;" />
                <p><a href="tel:xx73999815292">73 9 99815292</a></p>
            </div>
            <div>
                <img src="Imagens/logoWega.png" alt="Email" style="width: 200px;" />
                <p><a href="mailto:wgalvao@msn.com">wgalvao@msn.com</a></p>
            </div>
        </section>
        <footer>
            <p id="textoRodape">© Todos Direitos Reservados 2017 | WEGA Interactive Solution</p>
        </footer>

    </form>
</body>
</html>
