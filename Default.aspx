<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Entregable3._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <table>
        <tr>
            <td>
                <asp:Label runat="server" Text="Numero de Tarjeta" />
            </td>
        </tr>
        <tr>
            <td>

                <asp:RegularExpressionValidator runat="server" ValidationGroup="Guardar" ControlToValidate="txtNumTarjeta"
                    Display="Dynamic" ErrorMessage="TDC no válido" ForeColor="#cc3300"
                    ValidationExpression="[0-9]{16,16}" />
                <asp:TextBox runat="server" ID="txtNumTarjeta" MaxLength="16"/>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Button runat="server" ID="btnAceptar" Text="Aceptar" OnClick="btnAceptar_Click" /></td>
        </tr>
    </table>

</asp:Content>
