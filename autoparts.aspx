<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="autoparts.aspx.cs" Inherits="Fabricio_Fonseca_10591210.autoparts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content">
		<div class="shop-item flat-tire">
			<div class="tire-left description" >
				<ul>
					<li><strong>FLAT TIRE</strong></li>
					<li>No time to waste! 5 minutes is all we need!</li>
					<li>Towing service included.</li>
					<li><strong>€40.00</strong></li>
				</ul>
				<asp:CheckBox ID="cbxTire" runat="server" Text="Add to Basket" />

			</div>
			<div class="tire-right">
				<!-- IMAGE -->
			</div>
		</div>
		<div class="shop-item car-polishing">
			<div class="polishing-right">
				<!-- IMAGE -->
			</div>
			<div class="polishing-left description ">
				<ul>
					<li><strong>PAINT POLISH</strong></li>
					<li>Will make your car look like new!</li>
					<li>remove scratches and stains.</li>
					<li><strong>€120.00</strong></li>
				</ul>
				<asp:CheckBox ID="cbxPolishing" runat="server" Text="Add to Basket" />
			</div>
			
		</div>
		<div class="shop-item oil-change">
			<div class="oil-left description">
				<ul>
					<li><strong>OIL CHANGE</strong></li>
					<li>To keep your car running always smoothly</li>
					<li>Talk to any of our staff to help you chose the best oil type for you motor.</li>
					<li><strong>€80.00</strong></li>
				</ul>
				<asp:CheckBox ID="cbxOil" runat="server" Text="Add to Basket" />
			</div>
			<div class="oil-right">
				<!-- IMAGE -->
			</div>
		</div>
		<div class="shop-item light-alignment">
			<div class="alignment-right">
				<!-- IMAGE -->
			</div>
			<div class="alignment-left description">
				<ul>
					<li><strong>FRONT LIGHTS ALIGNMENT</strong></li>
					<li>Eyes up ahead!</li>
					<li>Keeping your front lights align is essential for safety while driving</li>
					<li><strong>€65.00</strong></li>
				</ul>
				<asp:CheckBox ID="cbxLights" runat="server" Text="Add to Basket" />
			</div>
			
		</div>
		<div class="see-basket">
			<asp:Button ID="openBasket" Class="openBasket" runat="server" Text="Go to the basket" OnClick="openBasket_Click"/>
		</div>
    </div>
</asp:Content>
