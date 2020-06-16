//Verificado automaticamente em 16/06/2020 09:29
﻿{ 09.01.2017 }
unit vw_main;
{
================================================================================
|   DATA   |DESENVOLVEDOR|HISTORICO DA ALTERACAO DO CODIGO                     |
|----------|-------------|-----------------------------------------------------|
|21/02/2020|WANDER       |Botão “Atualização” passa a permitir que apenas o    |
|        07|             |usuário Master o execute.                            |
|----------|-------------|-----------------------------------------------------|
|21/02/2020|WANDER       |Passou a registrar log de usuário "saiu do sistema"  |
|        18|             |                                                     |
|----------|-------------|-----------------------------------------------------|
|22/03/2020|WANDER       |Incluida chamada para o cadastro de tipo de movimento|
|        37|             |                                                     |
|----------|-------------|-----------------------------------------------------|
|31/03/2020|WANDER       |Incluida chamada para o cadastro de tipo de movimento|
|        60|             |pois havia desaparecido nas ações do git             |
================================================================================
}

interface

uses
  System.SysUtils,

  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Windows,

  dxRibbon,
  dxBar, cxStyles,

  dxBarExtItems, cxBarEditItem,
  DateUtils,

  Vcl.StdCtrls,

  Vcl.ExtCtrls, Vcl.ComCtrls, inifiles,

  Shellapi,

  dxAlertWindow, FileCtrl,
  rel_comissao,
  vw_natureza_op, h_functions, v_dir, h_files, vw_Login,
  cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore,
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, dxSkinsdxBarPainter,
  dxSparkline, cxLabel, cxHyperLinkEdit, cxClasses, dxGDIPlusClasses, FireDAC.UI.Intf, FireDAC.VCLUI.Script, FireDAC.Stan.Intf,
  FireDAC.Comp.UI, m_cliente_conveniado, m_Cliente,
  VCLTee.TeCanvas, vw_convenio, Vcl.Buttons, rel_convenio, dxCameraControl, cxCheckGroup, dxStatusBar, dxRibbonStatusBar, u_diretorios,
  vw_agrupar_vendas, Dialogs, vw_Views, movimento_pdv, parametros_vendas,
  paramentros_produtos, paramentros_clientes, parametros_sistema_botoes,
  parametros_comanda, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cad_cliente_2, cadastro_produto2;

type
  Tfrm_main = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1Tab2: TdxRibbonTab;
    barMngr: TdxBarManager;
    dxBarManager1Bar7: TdxBar;
    dxBarManager1Bar20: TdxBar;
    dxBarManager1Bar4: TdxBar;
    NFe: TdxBarLargeButton;
    Empresa: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    Clientes: TdxBarButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    dxBarLargeButton17: TdxBarLargeButton;
    dxBarLargeButton18: TdxBarLargeButton;
    dxBarLargeButton19: TdxBarLargeButton;
    dxBarLargeButton20: TdxBarLargeButton;
    dxBarLargeButton21: TdxBarLargeButton;
    dxBarLargeButton22: TdxBarLargeButton;
    dxBarLargeButton23: TdxBarLargeButton;
    dxBarLargeButton24: TdxBarLargeButton;
    dxBarLargeButton25: TdxBarLargeButton;
    dxBarLargeButton28: TdxBarLargeButton;
    dxBarLargeButton35: TdxBarLargeButton;
    dxBarLargeButton36: TdxBarLargeButton;
    dxBarLargeButton38: TdxBarLargeButton;
    dxBarLargeButton29: TdxBarLargeButton;
    dxBarLargeButton30: TdxBarLargeButton;
    dxBarLargeButton31: TdxBarLargeButton;
    dxBarLargeButton32: TdxBarLargeButton;
    dxBarLargeButton33: TdxBarLargeButton;
    dxBarLargeButton34: TdxBarLargeButton;
    dxBarLargeButton40: TdxBarLargeButton;
    dxBarLargeButton43: TdxBarLargeButton;
    dxBarLargeButton44: TdxBarLargeButton;
    dxBarLargeButton46: TdxBarLargeButton;
    dxBarLargeButton47: TdxBarLargeButton;
    dxBarLargeButton48: TdxBarLargeButton;
    dxBarLargeButton16: TdxBarLargeButton;
    dxBarLargeButton49: TdxBarLargeButton;
    cxBarEditItem2: TcxBarEditItem;
    cxBarEditItem3: TcxBarEditItem;
    dxBarLargeButton50: TdxBarLargeButton;
    dxBarLargeButton51: TdxBarLargeButton;
    dxBarLargeButton52: TdxBarLargeButton;
    dxBarLargeButton53: TdxBarLargeButton;
    dxBarLargeButton54: TdxBarLargeButton;
    dxBarLargeButton55: TdxBarLargeButton;
    dxBarLargeButton56: TdxBarLargeButton;
    dxBarLargeButton57: TdxBarLargeButton;
    dxBarLargeButton58: TdxBarLargeButton;
    dxBarLargeButton59: TdxBarLargeButton;
    dxBarLargeButton60: TdxBarLargeButton;
    dxBarLargeButton61: TdxBarLargeButton;
    dxBarLargeButton62: TdxBarLargeButton;
    dxBarLargeButton65: TdxBarLargeButton;
    dxBarLargeButton66: TdxBarLargeButton;
    dxBarLargeButton68: TdxBarLargeButton;
    dxBarLargeButton69: TdxBarLargeButton;
    dxBarLargeButton70: TdxBarLargeButton;
    dxBarLargeButton71: TdxBarLargeButton;
    dxBarLargeButton72: TdxBarLargeButton;
    dxBarLargeButton73: TdxBarLargeButton;
    dxBarLargeButton74: TdxBarLargeButton;
    dxBarLargeButton75: TdxBarLargeButton;
    dxBarLargeButton76: TdxBarLargeButton;
    dxBarLargeButton77: TdxBarLargeButton;
    dxBarLargeButton78: TdxBarLargeButton;
    dxBarLargeButton79: TdxBarLargeButton;
    dxBarLargeButton80: TdxBarLargeButton;
    dxBarLargeButton81: TdxBarLargeButton;
    dxBarLargeButton82: TdxBarLargeButton;
    dxBarLargeButton83: TdxBarLargeButton;
    dxBarLargeButton85: TdxBarLargeButton;
    dxBarLargeButton86: TdxBarLargeButton;
    dxBarLargeButton87: TdxBarLargeButton;
    dxBarLargeButton90: TdxBarLargeButton;
    dxBarLargeButton91: TdxBarLargeButton;
    dxBarLargeButton94: TdxBarLargeButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarSubItem4: TdxBarSubItem;
    dxBarSubItem5: TdxBarSubItem;
    dxBarSubItem6: TdxBarSubItem;
    dxBarSubItem7: TdxBarSubItem;
    dxBarSubItem8: TdxBarSubItem;
    dxBarSubItem9: TdxBarSubItem;
    dxBarSubItem10: TdxBarSubItem;
    dxBarSubItem11: TdxBarSubItem;
    dxBarSubItem12: TdxBarSubItem;
    dxBarSubItem13: TdxBarSubItem;
    dxBarSubItem14: TdxBarSubItem;
    dxBarSubItem15: TdxBarSubItem;
    dxBarSubItem16: TdxBarSubItem;
    dxBarSubItem17: TdxBarSubItem;
    dxBarSubItem18: TdxBarSubItem;
    dxBarSubItem19: TdxBarSubItem;
    dxBarSubItem20: TdxBarSubItem;
    dxBarSubItem21: TdxBarSubItem;
    dxBarSubItem22: TdxBarSubItem;
    dxBarSubItem23: TdxBarSubItem;
    dxBarSubItem24: TdxBarSubItem;
    dxBarSubItem25: TdxBarSubItem;
    dxBarSubItem26: TdxBarSubItem;
    dxBarSubItem27: TdxBarSubItem;
    dxBarSubItem28: TdxBarSubItem;
    dxBarSubItem29: TdxBarSubItem;
    dxBarSubItem30: TdxBarSubItem;
    dxBarSubItem31: TdxBarSubItem;
    dxBarSubItem32: TdxBarSubItem;
    dxBarSubItem33: TdxBarSubItem;
    dxBarSubItem34: TdxBarSubItem;
    dxBarSubItem35: TdxBarSubItem;
    dxBarSubItem36: TdxBarSubItem;
    dxBarSubItem37: TdxBarSubItem;
    dxBarSubItem38: TdxBarSubItem;
    dxBarSubItem39: TdxBarSubItem;
    dxBarSubItem40: TdxBarSubItem;
    dxBarSeparator1: TdxBarSeparator;
    dxBarSeparator2: TdxBarSeparator;
    dxBarSeparator3: TdxBarSeparator;
    dxBarSubItem41: TdxBarSubItem;
    dxBarSeparator4: TdxBarSeparator;
    dxBarStatic1: TdxBarStatic;
    dxBarSubItem42: TdxBarSubItem;
    dxBarSubItem43: TdxBarSubItem;
    dxBarSubItem44: TdxBarSubItem;
    dxBarSubItem45: TdxBarSubItem;
    dxBarSubItem46: TdxBarSubItem;
    dxBarSubItem47: TdxBarSubItem;
    dxBarSubItem48: TdxBarSubItem;
    dxBarSubItem49: TdxBarSubItem;
    dxBarSubItem50: TdxBarSubItem;
    dxBarSubItem51: TdxBarSubItem;
    dxBarSubItem52: TdxBarSubItem;
    dxBarSubItem53: TdxBarSubItem;
    dxBarLargeButton169: TdxBarLargeButton;
    dxBarLargeButton170: TdxBarLargeButton;
    dxBarLargeButton171: TdxBarLargeButton;
    dxBarLargeButton172: TdxBarLargeButton;
    dxBarLargeButton173: TdxBarLargeButton;
    dxBarLargeButton175: TdxBarLargeButton;
    dxBarLargeButton176: TdxBarLargeButton;
    dxBarLargeButton177: TdxBarLargeButton;
    dxBarLargeButton178: TdxBarLargeButton;
    dxBarLargeButton179: TdxBarLargeButton;
    dxBarLargeButton180: TdxBarLargeButton;
    dxBarLargeButton181: TdxBarLargeButton;
    dxBarLargeButton182: TdxBarLargeButton;
    dxBarLargeButton183: TdxBarLargeButton;
    dxBarLargeButton184: TdxBarLargeButton;
    dxBarLargeButton185: TdxBarLargeButton;
    dxBarLargeButton186: TdxBarLargeButton;
    dxBarLargeButton187: TdxBarLargeButton;
    dxBarLargeButton188: TdxBarLargeButton;
    dxBarLargeButton189: TdxBarLargeButton;
    dxBarLargeButton190: TdxBarLargeButton;
    dxBarLargeButton191: TdxBarLargeButton;
    dxBarLargeButton192: TdxBarLargeButton;
    dxBarLargeButton195: TdxBarLargeButton;
    dxBarLargeButton196: TdxBarLargeButton;
    dxBarLargeButton197: TdxBarLargeButton;
    dxBarLargeButton198: TdxBarLargeButton;
    dxBarLargeButton199: TdxBarLargeButton;
    dxBarLargeButton200: TdxBarLargeButton;
    dxBarLargeButton201: TdxBarLargeButton;
    dxBarLargeButton202: TdxBarLargeButton;
    dxBarLargeButton203: TdxBarLargeButton;
    dxBarLargeButton204: TdxBarLargeButton;
    dxBarLargeButton205: TdxBarLargeButton;
    dxBarLargeButton206: TdxBarLargeButton;
    dxBarLargeButton207: TdxBarLargeButton;
    dxBarLargeButton208: TdxBarLargeButton;
    dxBarLargeButton209: TdxBarLargeButton;
    dxBarLargeButton210: TdxBarLargeButton;
    dxBarLargeButton211: TdxBarLargeButton;
    dxBarLargeButton212: TdxBarLargeButton;
    dxBarLargeButton213: TdxBarLargeButton;
    dxBarLargeButton214: TdxBarLargeButton;
    dxBarLargeButton215: TdxBarLargeButton;
    dxBarLargeButton216: TdxBarLargeButton;
    dxBarLargeButton217: TdxBarLargeButton;
    dxBarLargeButton218: TdxBarLargeButton;
    dxBarLargeButton219: TdxBarLargeButton;
    dxBarLargeButton220: TdxBarLargeButton;
    dxBarLargeButton222: TdxBarLargeButton;
    dxBarLargeButton223: TdxBarLargeButton;
    dxBarLargeButton224: TdxBarLargeButton;
    dxBarLargeButton225: TdxBarLargeButton;
    dxBarLargeButton226: TdxBarLargeButton;
    dxBarLargeButton227: TdxBarLargeButton;
    dxBarLargeButton228: TdxBarLargeButton;
    dxBarLargeButton229: TdxBarLargeButton;
    dxBarLargeButton230: TdxBarLargeButton;
    dxBarLargeButton234: TdxBarLargeButton;
    dxBarLargeButton235: TdxBarLargeButton;
    dxBarLargeButton236: TdxBarLargeButton;
    dxBarLargeButton237: TdxBarLargeButton;
    dxBarLargeButton238: TdxBarLargeButton;
    dxBarLargeButton239: TdxBarLargeButton;
    dxBarLargeButton240: TdxBarLargeButton;
    dxBarLargeButton242: TdxBarLargeButton;
    dxBarSubItem54: TdxBarSubItem;
    dxBarButton10: TdxBarButton;
    dxBarLargeButton243: TdxBarLargeButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarLargeButton245: TdxBarLargeButton;
    dxBarSubItem55: TdxBarSubItem;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarSubItem56: TdxBarSubItem;
    dxBarLargeButton246: TdxBarLargeButton;
    dxBarLargeButton247: TdxBarLargeButton;
    dxBarLargeButton248: TdxBarLargeButton;
    dxBarLargeButton249: TdxBarLargeButton;
    dxBarLargeButton250: TdxBarLargeButton;
    dxBarSubItem57: TdxBarSubItem;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarSubItem58: TdxBarSubItem;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarButton36: TdxBarButton;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
    dxBarButton39: TdxBarButton;
    dxBarButton40: TdxBarButton;
    dxBarSubItem59: TdxBarSubItem;
    dxBarSubItem60: TdxBarSubItem;
    dxBarSubItem61: TdxBarSubItem;
    dxBarButton46: TdxBarButton;
    dxBarButton48: TdxBarButton;
    dxBarButton49: TdxBarButton;
    dxBarButton54: TdxBarButton;
    dxBarButton55: TdxBarButton;
    dxBarSubItem62: TdxBarSubItem;
    dxBarButton56: TdxBarButton;
    dxBarButton57: TdxBarButton;
    dxBarLargeButton252: TdxBarLargeButton;
    dxBarLargeButton253: TdxBarLargeButton;
    dxBarLargeButton254: TdxBarLargeButton;
    dxBarLargeButton255: TdxBarLargeButton;
    dxBarLargeButton256: TdxBarLargeButton;
    dxBarLargeButton257: TdxBarLargeButton;
    dxBarButton58: TdxBarButton;
    dxBarLargeButton258: TdxBarLargeButton;
    dxBarLargeButton259: TdxBarLargeButton;
    dxBarLargeButton260: TdxBarLargeButton;
    dxBarLargeButton261: TdxBarLargeButton;
    dxBarLargeButton262: TdxBarLargeButton;
    dxBarLargeButton263: TdxBarLargeButton;
    dxBarLargeButton264: TdxBarLargeButton;
    dxBarSubItem63: TdxBarSubItem;
    dxBarSubItem64: TdxBarSubItem;
    dxBarSubItem65: TdxBarSubItem;
    dxBarSubItem66: TdxBarSubItem;
    dxBarSubItem67: TdxBarSubItem;
    dxBarButton59: TdxBarButton;
    dxBarButton60: TdxBarButton;
    dxBarButton61: TdxBarButton;
    dxBarButton62: TdxBarButton;
    dxBarButton63: TdxBarButton;
    dxBarButton64: TdxBarButton;
    dxBarSubItem68: TdxBarSubItem;
    dxBarSubItem69: TdxBarSubItem;
    dxBarSubItem70: TdxBarSubItem;
    dxBarLargeButton266: TdxBarLargeButton;
    dxBarLargeButton267: TdxBarLargeButton;
    dxBarLargeButton268: TdxBarLargeButton;
    dxBarLargeButton270: TdxBarLargeButton;
    dxBarLargeButton271: TdxBarLargeButton;
    dxBarLargeButton272: TdxBarLargeButton;
    dxBarLargeButton273: TdxBarLargeButton;
    dxBarLargeButton274: TdxBarLargeButton;
    dxBarLargeButton275: TdxBarLargeButton;
    dxBarLargeButton276: TdxBarLargeButton;
    dxBarLargeButton277: TdxBarLargeButton;
    dxBarLargeButton279: TdxBarLargeButton;
    dxBarLargeButton280: TdxBarLargeButton;
    dxBarLargeButton282: TdxBarLargeButton;
    dxBarLargeButton283: TdxBarLargeButton;
    dxBarLargeButton284: TdxBarLargeButton;
    dxBarLargeButton285: TdxBarLargeButton;
    BTN_atendimento_online: TdxBarLargeButton;
    dxBarLargeButton288: TdxBarLargeButton;
    dxBarLargeButton289: TdxBarLargeButton;
    dxBarLargeButton290: TdxBarLargeButton;
    dxBarLargeButton291: TdxBarLargeButton;
    dxBarLargeButton292: TdxBarLargeButton;
    dxBarLargeButton293: TdxBarLargeButton;
    dxBarLargeButton294: TdxBarLargeButton;
    dxBarLargeButton295: TdxBarLargeButton;
    dxBarLargeButton296: TdxBarLargeButton;
    BTN_pdv: TdxBarLargeButton;
    dxBarLargeButton298: TdxBarLargeButton;
    dxBarLargeButton299: TdxBarLargeButton;
    dxBarLargeButton300: TdxBarLargeButton;
    dxBarLargeButton301: TdxBarLargeButton;
    BTN_balanca: TdxBarLargeButton;
    dxBarLargeButton303: TdxBarLargeButton;
    dxBarLargeButton304: TdxBarLargeButton;
    dxBarLargeButton305: TdxBarLargeButton;
    dxBarLargeButton306: TdxBarLargeButton;
    BTN_param_sistema: TdxBarLargeButton;
    dxBarLargeButton309: TdxBarLargeButton;
    styles: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    BTN_copia_seguranca: TdxBarLargeButton;
    BTN_config_banco: TdxBarLargeButton;
    dxBarLargeButton314: TdxBarLargeButton;
    dxBarLargeButton315: TdxBarLargeButton;
    dxBarLargeButton316: TdxBarLargeButton;
    dxBarLargeButton317: TdxBarLargeButton;
    dxBarLargeButton319: TdxBarLargeButton;
    BTN_relatorios: TdxBarSubItem;
    dxBarSubItem72: TdxBarSubItem;
    dxBarSubItem73: TdxBarSubItem;
    dxBarSubItem74: TdxBarSubItem;
    dxBarSubItem75: TdxBarSubItem;
    dxBarSubItem76: TdxBarSubItem;
    dxBarSubItem77: TdxBarSubItem;
    dxBarSubItem78: TdxBarSubItem;
    BTN_rel_empresa: TdxBarButton;
    dxBarSubItem79: TdxBarSubItem;
    dxBarSubItem80: TdxBarSubItem;
    dxBarButton68: TdxBarButton;
    dxBarButton69: TdxBarButton;
    dxBarButton70: TdxBarButton;
    dxBarButton71: TdxBarButton;
    dxBarSubItem81: TdxBarSubItem;
    dxBarSubItem82: TdxBarSubItem;
    dxBarSubItem83: TdxBarSubItem;
    BTN_rel_Geral_estoque: TdxBarSubItem;
    cxBarEditItem1: TcxBarEditItem;
    dxBarListItem1: TdxBarListItem;
    dxBarSubItem85: TdxBarSubItem;
    dxBarSubItem86: TdxBarSubItem;
    Produtos1: TdxBarSubItem;
    Produtos2: TdxBarButton;
    BTN_param_fiscal: TdxBarLargeButton;
    dxBarLargeButton321: TdxBarLargeButton;
    dxBarButton72: TdxBarButton;
    dxBarButton73: TdxBarButton;
    dxBarButton74: TdxBarButton;
    dxBarButton75: TdxBarButton;
    dxBarSubItem87: TdxBarSubItem;
    dxBarLargeButton322: TdxBarLargeButton;
    BTN_rel_Geral_vendas: TdxBarSubItem;
    dxBarButton76: TdxBarButton;
    dxBarButton77: TdxBarButton;
    dxBarSubItem89: TdxBarSubItem;
    cxBarEditItem4: TcxBarEditItem;
    BTN_sair: TdxBarLargeButton;
    CadastroBTN_geral_cadastro: TdxBarSubItem;
    dxbrbtn1: TdxBarButton;
    dxbrbtn2: TdxBarButton;
    dxbrbtn3: TdxBarButton;
    dxbrbtn4: TdxBarButton;
    dxbrbtn5: TdxBarButton;
    BTN_c_colab: TdxBarButton;
    Cadastro1: TdxBarSubItem;
    Cadastro2: TdxBarSubItem;
    Cadastro3: TdxBarSubItem;
    dxbrbtn7: TdxBarButton;
    dxbrbtn8: TdxBarButton;
    dxbrbtn9: TdxBarButton;
    dxbrbtn10: TdxBarButton;
    dxbrbtn12: TdxBarButton;
    dxbrbtn13: TdxBarButton;
    dxbrbtn14: TdxBarButton;
    dxbrbtn15: TdxBarButton;
    dxbrbtn16: TdxBarButton;
    dxbrbtn17: TdxBarButton;
    Cadastro4: TdxBarSubItem;
    dxbrbtn18: TdxBarButton;
    dxbrbtn19: TdxBarButton;
    dxbrbtn20: TdxBarButton;
    dxbrbtn21: TdxBarButton;
    dxbrbtn22: TdxBarButton;
    dxbrbtn23: TdxBarButton;
    dxbrbtn24: TdxBarButton;
    Cadastro5: TdxBarSubItem;
    dxbrbtn25: TdxBarButton;
    Cadastro6: TdxBarSubItem;
    BTN_c_fornecedor: TdxBarButton;
    Cadastro7: TdxBarSubItem;
    dxbrbtn30: TdxBarButton;
    dxbrbtn31: TdxBarButton;
    dxbrbtn32: TdxBarButton;
    dxbrbtn33: TdxBarButton;
    dxbrbtn34: TdxBarButton;
    dxbrbtn35: TdxBarButton;
    dxbrbtn36: TdxBarButton;
    dxbrbtn37: TdxBarButton;
    dxbrbtn38: TdxBarButton;
    dxbrbtn39: TdxBarButton;
    dxbrbtn40: TdxBarButton;
    dxbrbtn41: TdxBarButton;
    dxBarLargeButton324: TdxBarLargeButton;
    BTN_nfce: TdxBarLargeButton;
    BTN_fechar_caixa: TdxBarLargeButton;
    BTN_abrir_caixa: TdxBarLargeButton;
    BTN_vendas: TdxBarLargeButton;
    dxBarLargeButton329: TdxBarLargeButton;
    dxBarLargeButton330: TdxBarLargeButton;
    BTN_clientes: TdxBarLargeButton;
    BTN_produto: TdxBarLargeButton;
    dxBarLargeButton337: TdxBarLargeButton;
    dxBarManager1Bar5: TdxBar;
    BTN_geral_financeiro: TdxBarSubItem;
    dxBarLargeButton339: TdxBarLargeButton;
    dxBarLargeButton340: TdxBarLargeButton;
    dxBarLargeButton341: TdxBarLargeButton;
    Cadastro9: TdxBarSubItem;
    Cadastro10: TdxBarSubItem;
    dxbrbtn45: TdxBarButton;
    dxbrbtn46: TdxBarButton;
    Cadastro11: TdxBarSubItem;
    dxbrbtn47: TdxBarButton;
    dxbrbtn48: TdxBarButton;
    dxbrbtn49: TdxBarButton;
    dxbrbtn51: TdxBarButton;
    dxbrbtn52: TdxBarButton;
    Cadastro12: TdxBarSubItem;
    dxbrbtn53: TdxBarButton;
    dxbrbtn54: TdxBarButton;
    Cadastro13: TdxBarSubItem;
    dxbrbtn55: TdxBarButton;
    dxbrbtn57: TdxBarButton;
    Cadastro14: TdxBarSubItem;
    dxbrbtn58: TdxBarButton;
    dxbrbtn59: TdxBarButton;
    dxbrbtn60: TdxBarButton;
    dxbrbtn61: TdxBarButton;
    BTN_os: TdxBarLargeButton;
    dxBarLargeButton346: TdxBarLargeButton;
    BTN_geral_fiscal: TdxBarSubItem;
    BTN_improta_nfe: TdxBarLargeButton;
    dxBarLargeButton349: TdxBarLargeButton;
    dxBarLargeButton351: TdxBarLargeButton;
    BTN_nfe: TdxBarLargeButton;
    BTN_nfse: TdxBarLargeButton;
    Cadastro16: TdxBarSubItem;
    Cadastro17: TdxBarSubItem;
    Cadastro18: TdxBarSubItem;
    Cadastro19: TdxBarSubItem;
    Cadastro20: TdxBarSubItem;
    dxbrbtn62: TdxBarButton;
    dxbrbtn63: TdxBarButton;
    dxbrbtn64: TdxBarButton;
    BTN_geral_utilit: TdxBarSubItem;
    dxbrbtn67: TdxBarButton;
    dxbrbtn69: TdxBarButton;
    Cadastro22: TdxBarSubItem;
    dxbrbtn70: TdxBarButton;
    dxbrbtn71: TdxBarButton;
    Cadastro23: TdxBarSubItem;
    dxBarLargeButton355: TdxBarLargeButton;
    dxBarLargeButton356: TdxBarLargeButton;
    dxBarLargeButton357: TdxBarLargeButton;
    dxBarLargeButton358: TdxBarLargeButton;
    dxBarLargeButton359: TdxBarLargeButton;
    dxBarLargeButton361: TdxBarLargeButton;
    Cadastro24: TdxBarSubItem;
    dxBarLargeButton364: TdxBarLargeButton;
    Cadastro25: TdxBarSubItem;
    dxBarLargeButton365: TdxBarLargeButton;
    dxBarLargeButton366: TdxBarLargeButton;
    dxBarLargeButton367: TdxBarLargeButton;
    Cadastro26: TdxBarSubItem;
    dxBarLargeButton368: TdxBarLargeButton;
    dxBarLargeButton371: TdxBarLargeButton;
    dxBarLargeButton372: TdxBarLargeButton;
    dxBarLargeButton373: TdxBarLargeButton;
    dxBarLargeButton374: TdxBarLargeButton;
    Cadastro27: TdxBarSubItem;
    dxBarLargeButton375: TdxBarLargeButton;
    dxBarLargeButton376: TdxBarLargeButton;
    dxBarLargeButton377: TdxBarLargeButton;
    Cadastro28: TdxBarSubItem;
    dxbrbtn72: TdxBarButton;
    dxbrbtn73: TdxBarButton;
    Cadastro29: TdxBarSubItem;
    dxbrbtn74: TdxBarButton;
    dxBarManager1Bar10: TdxBar;
    BTN_estoque: TdxBarSubItem;
    dxbrbtn75: TdxBarButton;
    dxbrbtn76: TdxBarButton;
    dxbrbtn77: TdxBarButton;
    Cadastro31: TdxBarSubItem;
    dxbrbtn78: TdxBarButton;
    dxbrbtn82: TdxBarButton;
    dxbrbtn83: TdxBarButton;
    Cadastro32: TdxBarSubItem;
    dxBarLargeButton379: TdxBarLargeButton;
    dxBarLargeButton380: TdxBarLargeButton;
    dxbrbtn84: TdxBarButton;
    dxbrbtn85: TdxBarButton;
    Cadastro33: TdxBarSubItem;
    dxbrbtn86: TdxBarButton;
    Cadastro34: TdxBarSubItem;
    dxBarLargeButton381: TdxBarLargeButton;
    Cadastro35: TdxBarSubItem;
    Cadastro36: TdxBarSubItem;
    dxBarLargeButton384: TdxBarLargeButton;
    dxBarLargeButton385: TdxBarLargeButton;
    dxBarLargeButton386: TdxBarLargeButton;
    dxBarLargeButton388: TdxBarLargeButton;
    dxBarLargeButton389: TdxBarLargeButton;
    dxBarManager1Bar11: TdxBar;
    dxBarLargeButton287: TdxBarLargeButton;
    dxBarLargeButton297: TdxBarLargeButton;
    dxBarLargeButton302: TdxBarLargeButton;
    dxBarLargeButton308: TdxBarLargeButton;
    dxBarLargeButton312: TdxBarLargeButton;
    dxBarLargeButton320: TdxBarLargeButton;
    Cadastro8: TdxBarSubItem;
    ordem_de_serviço: TdxBarLargeButton;
    dxBarLargeButton325: TdxBarLargeButton;
    dxBarLargeButton326: TdxBarLargeButton;
    dxBarLargeButton327: TdxBarLargeButton;
    dxBarLargeButton328: TdxBarLargeButton;
    dxBarLargeButton331: TdxBarLargeButton;
    dxBarLargeButton332: TdxBarLargeButton;
    dxBarLargeButton345: TdxBarLargeButton;
    dxBarLargeButton352: TdxBarLargeButton;
    dxBarLargeButton353: TdxBarLargeButton;
    dxBarLargeButton390: TdxBarLargeButton;
    Cadastro15: TdxBarSubItem;
    ordem_de_servico: TdxBarLargeButton;
    ordem_de_serviço2: TdxBarLargeButton;
    ordem_de_servico3: TdxBarLargeButton;
    ordem_de_servico4: TdxBarLargeButton;
    ordem_de_servico5: TdxBarLargeButton;
    ordem_de_servico6: TdxBarLargeButton;
    Cadastro21: TdxBarSubItem;
    Cadastro30: TdxBarSubItem;
    ordem_de_serviço10: TdxBarLargeButton;
    ordem_de_serviço11: TdxBarLargeButton;
    ordem_de_serviço12: TdxBarLargeButton;
    ordem_de_serviço13: TdxBarLargeButton;
    ordem_de_serviço14: TdxBarLargeButton;
    dxBarSeparator5: TdxBarSeparator;
    ordem_de_serviço15: TdxBarLargeButton;
    ordem_de_serviço16: TdxBarLargeButton;
    ordem_de_serviço17: TdxBarLargeButton;
    ordem_de_serviço18: TdxBarLargeButton;
    ordem_de_serviço19: TdxBarLargeButton;
    ordem_de_serviço20: TdxBarLargeButton;
    ordem_de_serviço21: TdxBarLargeButton;
    ordem_de_serviço22: TdxBarLargeButton;
    ordem_de_serviço23: TdxBarLargeButton;
    ordem_de_serviço24: TdxBarLargeButton;
    ordem_de_serviço25: TdxBarLargeButton;
    ordem_de_serviço26: TdxBarLargeButton;
    ordem_de_serviço27: TdxBarLargeButton;
    ordem_de_serviço28: TdxBarLargeButton;
    ordem_de_serviço29: TdxBarLargeButton;
    ordem_de_serviço30: TdxBarLargeButton;
    ordem_de_serviço31: TdxBarLargeButton;
    ordem_de_serviço32: TdxBarLargeButton;
    ordem_de_serviço33: TdxBarLargeButton;
    ordem_de_serviço34: TdxBarLargeButton;
    ordem_de_serviço35: TdxBarLargeButton;
    ordem_de_serviço36: TdxBarLargeButton;
    ordem_de_serviço37: TdxBarLargeButton;
    ordem_de_serviço38: TdxBarLargeButton;
    ordem_de_serviço39: TdxBarLargeButton;
    ordem_de_serviço40: TdxBarLargeButton;
    ordem_de_serviço41: TdxBarLargeButton;
    ordem_de_serviço42: TdxBarLargeButton;
    ordem_de_serviço43: TdxBarLargeButton;
    ordem_de_serviço44: TdxBarLargeButton;
    ordem_de_serviço45: TdxBarLargeButton;
    ordem_de_serviço46: TdxBarLargeButton;
    ordem_de_serviço47: TdxBarLargeButton;
    ordem_de_serviço48: TdxBarLargeButton;
    ordem_de_serviço49: TdxBarLargeButton;
    ordem_de_serviço50: TdxBarLargeButton;
    dxBarLargeButton323: TdxBarLargeButton;
    dxBarLargeButton391: TdxBarLargeButton;
    dxBarLargeButton392: TdxBarLargeButton;
    Image1: TImage;
    dxBarLargeButton393: TdxBarLargeButton;
    barra_status: TStatusBar;
    dxBarLargeButton394: TdxBarLargeButton;
    dxBarLargeButton395: TdxBarLargeButton;
    cxStyle3: TcxStyle;
    awmMensagem: TdxAlertWindowManager;
    dxBarButton82: TdxBarButton;
    dxBarSubItem71: TdxBarSubItem;
    dxBarButton83: TdxBarButton;
    dxBarLargeButton396: TdxBarLargeButton;
    dxBarLargeButton397: TdxBarLargeButton;
    lbl_empresa: TLabel;
    dxBarSubItem90: TdxBarSubItem;
    dxBarButton85: TdxBarButton;
    dxBarButton86: TdxBarButton;
    BTN_rel_comissoes: TdxBarButton;
    dxBarSubItem91: TdxBarSubItem;
    dxBarSubItem92: TdxBarSubItem;
    dxBarSubItem93: TdxBarSubItem;
    dxBarSubItem94: TdxBarSubItem;
    dxBarLargeButton399: TdxBarLargeButton;
    dxBarSubItem95: TdxBarSubItem;
    dxBarEdit1: TdxBarEdit;
    dxBarSubItem96: TdxBarSubItem;
    dxBarLargeButton401: TdxBarLargeButton;
    dxBarButton96: TdxBarButton;
    dxBarLargeButton402: TdxBarLargeButton;
    dxBarSubItem97: TdxBarSubItem;
    dxBarSubItem98: TdxBarSubItem;
    dxBarButton98: TdxBarButton;
    dxBarSubItem99: TdxBarSubItem;
    dxBarButton100: TdxBarButton;
    dxBarButton101: TdxBarButton;
    dxBarButton102: TdxBarButton;
    dxBarLargeButton403: TdxBarLargeButton;
    dxBarListItem2: TdxBarListItem;
    dxBarButton104: TdxBarButton;
    dxBarButton105: TdxBarButton;
    dxBarSubItem100: TdxBarSubItem;
    dxBarButton106: TdxBarButton;
    dxBarLargeButton404: TdxBarLargeButton;
    dxBarSubItem101: TdxBarSubItem;
    dxBarSubItem102: TdxBarSubItem;
    btnEtiquetas: TdxBarButton;
    dxBarButton108: TdxBarButton;
    dxBarSubItem103: TdxBarSubItem;
    BTNMOVCAIXA: TdxBarButton;
    dxBarSubItem104: TdxBarSubItem;
    dxBarSubItem105: TdxBarSubItem;
    dxBarSubItem106: TdxBarSubItem;
    dxBarButton111: TdxBarButton;
    dxBarLargeButton405: TdxBarLargeButton;
    dxBarButton114: TdxBarButton;
    cxBarEditItem5: TcxBarEditItem;
    CustomdxBarCombo1: TCustomdxBarCombo;
    dxBarSubItem107: TdxBarSubItem;
    dxBarSubItem108: TdxBarSubItem;
    dxBarSubItem109: TdxBarSubItem;
    dxBarSubItem110: TdxBarSubItem;
    dxBarButton117: TdxBarButton;
    dxBarLargeButton407: TdxBarLargeButton;
    dxBarLargeButton408: TdxBarLargeButton;
    dxBarLargeButton409: TdxBarLargeButton;
    btn_fluxo_caixa: TdxBarButton;
    btn_finan_cad: TdxBarSubItem;
    btn_cad_turno: TdxBarButton;
    btn_cad_form_pag: TdxBarButton;
    btn_cad_t_pag: TdxBarButton;
    btn_cad_banco: TdxBarButton;
    btn_cad_complementos: TdxBarButton;
    btn_cad_historico: TdxBarButton;
    btn_cad_centro_contas: TdxBarButton;
    btn_cad_plano_contas: TdxBarButton;
    btn_cad_taxas_cartoes: TdxBarButton;
    btn_cad_juros: TdxBarButton;
    dxBarLargeButton410: TdxBarLargeButton;
    dxBarLargeButton411: TdxBarLargeButton;
    dxBarLargeButton412: TdxBarLargeButton;
    dxBarLargeButton413: TdxBarLargeButton;
    btn_mde: TdxBarLargeButton;
    dxBarSubItem111: TdxBarSubItem;
    dxBarSubItem112: TdxBarSubItem;
    dxBarLargeButton414: TdxBarLargeButton;
    dxBarLargeButton415: TdxBarLargeButton;
    dxBarLargeButton416: TdxBarLargeButton;
    dxBarLargeButton417: TdxBarLargeButton;
    dxBarSubItem113: TdxBarSubItem;
    dxBarLargeButton418: TdxBarLargeButton;
    dxBarLargeButton419: TdxBarLargeButton;
    dxBarLargeButton420: TdxBarLargeButton;
    dxBarSubItem114: TdxBarSubItem;
    dxBarLargeButton421: TdxBarLargeButton;
    dxBarLargeButton422: TdxBarLargeButton;
    dxBarLargeButton423: TdxBarLargeButton;
    dxBarLargeButton424: TdxBarLargeButton;
    BTN_rel_Geral_comissoes: TdxBarSubItem;
    BTN_rel_vendedor: TdxBarLargeButton;
    dxBarLargeButton426: TdxBarLargeButton;
    BTN_rel_gerente: TdxBarLargeButton;
    BTN_rel_Geral_compras: TdxBarSubItem;
    dxBarLargeButton428: TdxBarLargeButton;
    dxBarLargeButton431: TdxBarLargeButton;
    dxBarLargeButton432: TdxBarLargeButton;
    dxBarLargeButton433: TdxBarLargeButton;
    dxBarLargeButton434: TdxBarLargeButton;
    BTN_rel_Geral_convenio: TdxBarSubItem;
    BTN_rel_conv_clientes: TdxBarLargeButton;
    dxBarLargeButton439: TdxBarLargeButton;
    BTN_rel_conv_movimentacao: TdxBarLargeButton;
    dxBarLargeButton441: TdxBarLargeButton;
    dxBarLargeButton442: TdxBarLargeButton;
    dxBarLargeButton443: TdxBarLargeButton;
    dxBarLargeButton444: TdxBarLargeButton;
    dxBarLargeButton445: TdxBarLargeButton;
    dxBarLargeButton446: TdxBarLargeButton;
    dxBarLargeButton447: TdxBarLargeButton;
    dxBarLargeButton449: TdxBarLargeButton;
    dxBarLargeButton450: TdxBarLargeButton;
    dxBarLargeButton451: TdxBarLargeButton;
    dxBarLargeButton452: TdxBarLargeButton;
    dxBarSubItem118: TdxBarSubItem;
    dxBarLargeButton453: TdxBarLargeButton;
    dxBarLargeButton454: TdxBarLargeButton;
    dxBarLargeButton455: TdxBarLargeButton;
    dxBarSubItem119: TdxBarSubItem;
    dxBarLargeButton456: TdxBarLargeButton;
    dxBarLargeButton457: TdxBarLargeButton;
    dxBarLargeButton458: TdxBarLargeButton;
    BTN_rel_Geral_financeiro: TdxBarSubItem;
    BTN_rel_Geral_fiscal: TdxBarSubItem;
    dxBarLargeButton463: TdxBarLargeButton;
    dxBarLargeButton464: TdxBarLargeButton;
    dxBarLargeButton465: TdxBarLargeButton;
    dxBarLargeButton466: TdxBarLargeButton;
    dxBarSubItem122: TdxBarSubItem;
    dxBarLargeButton467: TdxBarLargeButton;
    dxBarLargeButton468: TdxBarLargeButton;
    dxBarLargeButton469: TdxBarLargeButton;
    dxBarSubItem123: TdxBarSubItem;
    dxBarLargeButton470: TdxBarLargeButton;
    dxBarLargeButton471: TdxBarLargeButton;
    dxBarLargeButton472: TdxBarLargeButton;
    dxBarSubItem124: TdxBarSubItem;
    dxBarLargeButton475: TdxBarLargeButton;
    BTN_rel_clientes: TdxBarLargeButton;
    BTN_rel_colab: TdxBarLargeButton;
    BTN_rel_fornecedores: TdxBarLargeButton;
    dxBarLargeButton479: TdxBarLargeButton;
    BTN_rel_produto: TdxBarLargeButton;
    dxBarLargeButton481: TdxBarLargeButton;
    dxBarLargeButton482: TdxBarLargeButton;
    barMngrBar4: TdxBar;
    gp_finan: TdxBarSubItem;
    btnHistoricoCaixa: TdxBarButton;
    dxBarLargeButton440: TdxBarLargeButton;
    dxBarSubItem84: TdxBarSubItem;
    dxBarButton88: TdxBarButton;
    dxBarLargeButton476: TdxBarLargeButton;
    btnAuditoria: TdxBarLargeButton;
    dxBarLargeButton478: TdxBarLargeButton;
    barMngrBar5: TdxBar;
    dxBarLargeButton477: TdxBarLargeButton;
    dxBarLargeButton480: TdxBarLargeButton;
    dxBarSubItem88: TdxBarSubItem;
    dxBarLargeButton486: TdxBarLargeButton;
    dxBarLargeButton487: TdxBarLargeButton;
    dxBarSubItem115: TdxBarSubItem;
    dxBarLargeButton488: TdxBarLargeButton;
    dxBarLargeButton489: TdxBarLargeButton;
    dxBarLargeButton490: TdxBarLargeButton;
    dxBarLargeButton491: TdxBarLargeButton;
    dxBarLargeButton492: TdxBarLargeButton;
    dxBarLargeButton493: TdxBarLargeButton;
    dxBarLargeButton494: TdxBarLargeButton;
    dxBarLargeButton495: TdxBarLargeButton;
    dxBarLargeButton496: TdxBarLargeButton;
    dxBarSubItem116: TdxBarSubItem;
    dxBarLargeButton497: TdxBarLargeButton;
    dxBarLargeButton498: TdxBarLargeButton;
    dxBarSubItem117: TdxBarSubItem;
    dxBarLargeButton499: TdxBarLargeButton;
    dxBarLargeButton500: TdxBarLargeButton;
    dxBarSubItem120: TdxBarSubItem;
    dxBarSubItem121: TdxBarSubItem;
    dxBarLargeButton502: TdxBarLargeButton;
    dxBarLargeButton503: TdxBarLargeButton;
    dxBarLargeButton504: TdxBarLargeButton;
    dxBarLargeButton505: TdxBarLargeButton;
    dxBarLargeButton506: TdxBarLargeButton;
    dxBarLargeButton507: TdxBarLargeButton;
    dxBarSubItem125: TdxBarSubItem;
    dxBarLargeButton510: TdxBarLargeButton;
    dxBarLargeButton511: TdxBarLargeButton;
    dxBarLargeButton512: TdxBarLargeButton;
    dxBarLargeButton513: TdxBarLargeButton;
    dxBarSubItem126: TdxBarSubItem;
    dxBarSubItem127: TdxBarSubItem;
    dxBarLargeButton514: TdxBarLargeButton;
    dxBarLargeButton517: TdxBarLargeButton;
    dxBarLargeButton518: TdxBarLargeButton;
    dxBarLargeButton519: TdxBarLargeButton;
    dxBarLargeButton520: TdxBarLargeButton;
    dxBarLargeButton521: TdxBarLargeButton;
    dxBarLargeButton522: TdxBarLargeButton;
    dxBarLargeButton523: TdxBarLargeButton;
    dxBarLargeButton524: TdxBarLargeButton;
    dxBarLargeButton525: TdxBarLargeButton;
    dxBarLargeButton526: TdxBarLargeButton;
    dxBarLargeButton527: TdxBarLargeButton;
    dxBarSubItem128: TdxBarSubItem;
    dxBarSubItem129: TdxBarSubItem;
    dxBarSubItem130: TdxBarSubItem;
    dxBarLargeButton528: TdxBarLargeButton;
    dxBarLargeButton529: TdxBarLargeButton;
    dxBarLargeButton530: TdxBarLargeButton;
    dxBarLargeButton531: TdxBarLargeButton;
    dxBarSubItem131: TdxBarSubItem;
    dxBarLargeButton532: TdxBarLargeButton;
    dxBarLargeButton533: TdxBarLargeButton;
    dxBarLargeButton534: TdxBarLargeButton;
    dxBarLargeButton535: TdxBarLargeButton;
    dxBarLargeButton536: TdxBarLargeButton;
    dxBarLargeButton537: TdxBarLargeButton;
    dxBarLargeButton538: TdxBarLargeButton;
    dxBarLargeButton539: TdxBarLargeButton;
    dxBarLargeButton540: TdxBarLargeButton;
    dxBarLargeButton541: TdxBarLargeButton;
    dxBarLargeButton542: TdxBarLargeButton;
    dxBarLargeButton543: TdxBarLargeButton;
    dxBarLargeButton544: TdxBarLargeButton;
    dxBarSubItem132: TdxBarSubItem;
    barMngrBar2: TdxBar;
    dxBarSubItem133: TdxBarSubItem;
    gpestoque: TdxBarSubItem;
    dxBarLargeButton67: TdxBarLargeButton;
    dxBarLargeButton545: TdxBarLargeButton;
    barMngrBar1: TdxBar;
    dxBarLargeButton546: TdxBarLargeButton;
    dxBarLargeButton547: TdxBarLargeButton;
    dxBarLargeButton548: TdxBarLargeButton;
    dxBarSubItem134: TdxBarSubItem;
    dxBarSubItem135: TdxBarSubItem;
    dxBarSubItem136: TdxBarSubItem;
    dxBarLargeButton549: TdxBarLargeButton;
    dxBarLargeButton550: TdxBarLargeButton;
    dxBarLargeButton551: TdxBarLargeButton;
    dxBarLargeButton348: TdxBarLargeButton;
    dxBarLargeButton26: TdxBarLargeButton;
    Recebimento: TdxBarLargeButton;
    dxBarSubItem137: TdxBarSubItem;
    dxBarLargeButton27: TdxBarLargeButton;
    dxBarLargeButton37: TdxBarLargeButton;
    dxBarLargeButton39: TdxBarLargeButton;
    dxBarLargeButton41: TdxBarLargeButton;
    dxBarLargeButton42: TdxBarLargeButton;
    dxBarLargeButton45: TdxBarLargeButton;
    dxBarLargeButton63: TdxBarLargeButton;
    dxBarSubItem138: TdxBarSubItem;
    dxBarLargeButton64: TdxBarLargeButton;
    dxBarLargeButton84: TdxBarLargeButton;
    dxBarLargeButton88: TdxBarLargeButton;
    dxBarLargeButton89: TdxBarLargeButton;
    dxBarLargeButton92: TdxBarLargeButton;
    dxBarLargeButton93: TdxBarLargeButton;
    dxBarLargeButton95: TdxBarLargeButton;
    dxBarLargeButton96: TdxBarLargeButton;
    dxBarLargeButton97: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    dxBarLargeButton98: TdxBarLargeButton;
    dxBarLargeButton99: TdxBarLargeButton;
    dxBarLargeButton100: TdxBarLargeButton;
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure dxBarLargeButton7Click(Sender: TObject);
    procedure dxBarLargeButton301Click(Sender: TObject);
    procedure BTN_pdvClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton314Click(Sender: TObject);
    procedure dxBarLargeButton317Click(Sender: TObject);
    procedure dxBarLargeButton316Click(Sender: TObject);
    procedure dxBarLargeButton319Click(Sender: TObject);
    procedure BTN_param_sistemaClick(Sender: TObject);
    procedure dxBarButton69Click(Sender: TObject);
    procedure dxBarButton71Click(Sender: TObject);
    procedure dxBarButton70Click(Sender: TObject);
    procedure Produtos2Click(Sender: TObject);
    procedure dxBarButton73Click(Sender: TObject);
    procedure dxBarButton72Click(Sender: TObject);
    procedure dxBarButton74Click(Sender: TObject);
    procedure dxBarButton76Click(Sender: TObject);
    procedure dxBarButton77Click(Sender: TObject);
    procedure BTN_sairClick(Sender: TObject);
    procedure BTN_c_colabClick(Sender: TObject);
    procedure dxbrbtn23Click(Sender: TObject);
    procedure BTN_c_fornecedorClick(Sender: TObject);
    procedure BTN_nfceClick(Sender: TObject);
    procedure BTN_fechar_caixaClick(Sender: TObject);
    procedure BTN_vendasClick(Sender: TObject);
    procedure dxbrbtn10Click(Sender: TObject);
    procedure dxbrbtn19Click(Sender: TObject);
    procedure dxbrbtn20Click(Sender: TObject);
    procedure dxbrbtn18Click(Sender: TObject);
    procedure dxbrbtn17Click(Sender: TObject);
    procedure dxbrbtn15Click(Sender: TObject);
    procedure dxbrbtn24Click(Sender: TObject);
    procedure dxbrbtn13Click(Sender: TObject);
//    procedure BTN_clientesClick(Sender: TObject);
    procedure BTN_produtoClick(Sender: TObject);
    procedure BTN_balancaClick(Sender: TObject);
    procedure dxBarLargeButton386Click(Sender: TObject);
    procedure dxBarLargeButton384Click(Sender: TObject);
    procedure dxbrbtn77Click(Sender: TObject);
    procedure dxbrbtn76Click(Sender: TObject);
    procedure dxbrbtn75Click(Sender: TObject);
    procedure dxBarLargeButton287Click(Sender: TObject);
    procedure dxbrbtn47Click(Sender: TObject);
    procedure dxbrbtn69Click(Sender: TObject);
    procedure dxbrbtn16Click(Sender: TObject);
    procedure dxbrbtn30Click(Sender: TObject);
    procedure dxbrbtn37Click(Sender: TObject);
    procedure dxbrbtn35Click(Sender: TObject);
    procedure BTN_osClick(Sender: TObject);
    procedure dxbrbtn9Click(Sender: TObject);
    procedure dxBarLargeButton379Click(Sender: TObject);
    procedure dxBarLargeButton380Click(Sender: TObject);
    procedure dxBarLargeButton297Click(Sender: TObject);
    procedure dxbrbtn78Click(Sender: TObject);
    procedure dxbrbtn82Click(Sender: TObject);
    procedure dxbrbtn74Click(Sender: TObject);
    procedure dxbrbtn55Click(Sender: TObject);
    procedure dxbrbtn57Click(Sender: TObject);
    procedure dxBarLargeButton308Click(Sender: TObject);
    procedure dxbrbtn59Click(Sender: TObject);
    procedure BTN_nfeClick(Sender: TObject);
    procedure BTN_nfseClick(Sender: TObject);
    procedure dxbrbtn62Click(Sender: TObject);
    procedure dxbrbtn63Click(Sender: TObject);
    procedure dxbrbtn64Click(Sender: TObject);
    procedure dxbrbtn72Click(Sender: TObject);
    procedure dxbrbtn73Click(Sender: TObject);
    procedure dxBarLargeButton351Click(Sender: TObject);
    procedure dxbrbtn85Click(Sender: TObject);
    procedure dxbrbtn86Click(Sender: TObject);
    procedure dxBarLargeButton388Click(Sender: TObject);
    procedure dxBarLargeButton389Click(Sender: TObject);
    procedure dxbrbtn39Click(Sender: TObject);
    procedure dxbrbtn53Click(Sender: TObject);
    procedure dxbrbtn54Click(Sender: TObject);
    procedure dxbrbtn58Click(Sender: TObject);
    procedure dxbrbtn60Click(Sender: TObject);
    procedure dxbrbtn8Click(Sender: TObject);
    procedure dxbrbtn33Click(Sender: TObject);
    procedure dxbrbtn32Click(Sender: TObject);
    procedure dxbrbtn31Click(Sender: TObject);
    procedure dxbrbtn38Click(Sender: TObject);
    procedure dxbrbtn48Click(Sender: TObject);
    procedure dxbrbtn49Click(Sender: TObject);
    procedure dxbrbtn52Click(Sender: TObject);
    procedure dxbrbtn51Click(Sender: TObject);
    procedure dxbrbtn83Click(Sender: TObject);
    procedure dxbrbtn61Click(Sender: TObject);
    procedure BTN_improta_nfeClick(Sender: TObject);
    procedure dxbrbtn84Click(Sender: TObject);
    procedure dxBarLargeButton312Click(Sender: TObject);
    procedure dxBarLargeButton355Click(Sender: TObject);
    procedure dxBarLargeButton356Click(Sender: TObject);
    procedure dxBarLargeButton357Click(Sender: TObject);
    procedure dxBarLargeButton358Click(Sender: TObject);
    procedure dxBarLargeButton359Click(Sender: TObject);
    procedure dxBarLargeButton361Click(Sender: TObject);
    procedure dxBarLargeButton364Click(Sender: TObject);
    procedure dxBarLargeButton367Click(Sender: TObject);
    procedure dxBarLargeButton365Click(Sender: TObject);
    procedure dxBarLargeButton366Click(Sender: TObject);
    procedure dxBarLargeButton374Click(Sender: TObject);
    procedure dxBarLargeButton373Click(Sender: TObject);
    procedure dxBarLargeButton372Click(Sender: TObject);
    procedure dxBarLargeButton375Click(Sender: TObject);
    procedure dxBarLargeButton371Click(Sender: TObject);
    procedure dxBarLargeButton377Click(Sender: TObject);
    procedure dxBarLargeButton376Click(Sender: TObject);
    procedure dxbrbtn71Click(Sender: TObject);
    procedure dxbrbtn70Click(Sender: TObject);
    procedure dxBarLargeButton353Click(Sender: TObject);
    procedure dxBarLargeButton352Click(Sender: TObject);
    procedure dxbrbtn34Click(Sender: TObject);
    procedure ordem_de_servicoClick(Sender: TObject);
    procedure ordem_de_serviço11Click(Sender: TObject);
    procedure ordem_de_serviço12Click(Sender: TObject);
    procedure ordem_de_serviço14Click(Sender: TObject);
    procedure ordem_de_serviço13Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxRibbon1TabChanged(Sender: TdxCustomRibbon);
    procedure dxBarLargeButton392Click(Sender: TObject);
    procedure BTN_atendimento_onlineClick(Sender: TObject);
    procedure dxBarLargeButton393Click(Sender: TObject);
    procedure dxBarButton68Click(Sender: TObject);
    procedure dxBarButton75Click(Sender: TObject);
    procedure dxbrbtn14Click(Sender: TObject);
    procedure dxbrbtn36Click(Sender: TObject);
    procedure dxBarLargeButton395Click(Sender: TObject);
    procedure dxBarButton83Click(Sender: TObject);
    procedure dxBarLargeButton397Click(Sender: TObject);
    procedure ordem_de_servico3Click(Sender: TObject);
    procedure ordem_de_servico4Click(Sender: TObject);
    procedure ordem_de_servico5Click(Sender: TObject);
    procedure ordem_de_servico6Click(Sender: TObject);
    procedure BTN_param_fiscalClick(Sender: TObject);
    procedure dxBarButton85Click(Sender: TObject);
    procedure dxBarButton86Click(Sender: TObject);
    procedure BTN_rel_comissoesClick(Sender: TObject);
    procedure dxBarLargeButton401Click(Sender: TObject);
    procedure BTN_rel_empresaClick(Sender: TObject);
    procedure dxBarLargeButton396Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dxBarLargeButton402Click(Sender: TObject);

    procedure rel_lucratividade;
    procedure dxBarButton98Click(Sender: TObject);
    procedure dxBarButton104Click(Sender: TObject);
    procedure dxBarButton105Click(Sender: TObject);
    procedure btnEtiquetasClick(Sender: TObject);
    procedure dxBarButton106Click(Sender: TObject);
    procedure BTNMOVCAIXAClick(Sender: TObject);
    procedure dxBarButton101Click(Sender: TObject);
    procedure dxBarLargeButton405Click(Sender: TObject);
    procedure dxBarButton114Click(Sender: TObject);
    procedure chkPARAMETROS;
    procedure openPDV;
    procedure openCaixa;
    procedure dxBarLargeButton408Click(Sender: TObject);
    procedure btn_cad_turnoClick(Sender: TObject);
    procedure btn_cad_bancoClick(Sender: TObject);
    procedure btn_cad_form_pagClick(Sender: TObject);
    procedure btn_cad_t_pagClick(Sender: TObject);
    procedure btn_cad_plano_contasClick(Sender: TObject);
    procedure btn_cad_centro_contasClick(Sender: TObject);
    procedure btn_cad_complementosClick(Sender: TObject);
    procedure btn_cad_historicoClick(Sender: TObject);
    procedure btn_cad_taxas_cartoesClick(Sender: TObject);
    procedure btn_fluxo_caixaClick(Sender: TObject);
    procedure dxBarLargeButton410Click(Sender: TObject);
    procedure dxBarLargeButton412Click(Sender: TObject);
    procedure dxBarLargeButton411Click(Sender: TObject);
    procedure btn_cad_jurosClick(Sender: TObject);
    procedure BTN_rel_clientesClick(Sender: TObject);
    procedure BTN_rel_colabClick(Sender: TObject);
    procedure BTN_rel_fornecedoresClick(Sender: TObject);
    procedure dxBarLargeButton479Click(Sender: TObject);
    procedure BTN_rel_produtoClick(Sender: TObject);
    procedure dxBarLargeButton481Click(Sender: TObject);
    procedure BTN_rel_conv_movimentacaoClick(Sender: TObject);
    procedure dxBarLargeButton482Click(Sender: TObject);
    procedure btn_mdeClick(Sender: TObject);
    procedure btnHistoricoCaixaClick(Sender: TObject);
    procedure dxBarLargeButton440Click(Sender: TObject);
    procedure dxBarButton88Click(Sender: TObject);
    procedure dxBarLargeButton476Click(Sender: TObject);
    procedure btnAuditoriaClick(Sender: TObject);
    procedure dxBarLargeButton478Click(Sender: TObject);
    procedure dxBarLargeButton486Click(Sender: TObject);

    procedure dxBarLargeButton499Click(Sender: TObject);
    procedure dxBarLargeButton510Click(Sender: TObject);
    procedure dxBarLargeButton513Click(Sender: TObject);
    procedure BTN_clientesClick(Sender: TObject);
    procedure dxBarLargeButton514Click(Sender: TObject);
    procedure dxBarLargeButton525Click(Sender: TObject);
    procedure RecebimentoClick(Sender: TObject);
    procedure dxBarLargeButton26Click(Sender: TObject);
//    procedure dxBarLargeButton39Click(Sender: TObject);
    procedure dxBarLargeButton27Click(Sender: TObject);
    procedure dxBarLargeButton45Click(Sender: TObject);
    procedure dxBarLargeButton63Click(Sender: TObject);
    procedure dxBarLargeButton506Click(Sender: TObject);
    procedure dxBarLargeButton42Click(Sender: TObject);
    procedure dxBarLargeButton493Click(Sender: TObject);
    procedure dxBarLargeButton492Click(Sender: TObject);
    procedure dxBarLargeButton491Click(Sender: TObject);
    procedure dxBarLargeButton490Click(Sender: TObject);
    procedure dxBarLargeButton489Click(Sender: TObject);
    procedure dxBarLargeButton488Click(Sender: TObject);
    procedure dxBarLargeButton494Click(Sender: TObject);
    procedure dxBarLargeButton39Click(Sender: TObject);
    procedure dxBarLargeButton512Click(Sender: TObject);
    procedure dxBarLargeButton64Click(Sender: TObject);
    procedure dxBarLargeButton500Click(Sender: TObject);
    procedure dxBarLargeButton511Click(Sender: TObject);
    procedure dxBarLargeButton526Click(Sender: TObject);
    procedure dxBarLargeButton527Click(Sender: TObject);
    procedure dxBarLargeButton551Click(Sender: TObject);
    procedure dxBarLargeButton550Click(Sender: TObject);
    procedure dxBarLargeButton538Click(Sender: TObject);
    procedure dxBarLargeButton540Click(Sender: TObject);
    procedure dxBarLargeButton539Click(Sender: TObject);
    procedure dxBarLargeButton41Click(Sender: TObject);
    procedure dxBarLargeButton84Click(Sender: TObject);
    procedure dxBarLargeButton89Click(Sender: TObject);
    procedure dxBarLargeButton88Click(Sender: TObject);
    procedure dxBarLargeButton92Click(Sender: TObject);
    procedure dxBarLargeButton545Click(Sender: TObject);
    procedure dxBarLargeButton93Click(Sender: TObject);
    procedure dxBarLargeButton95Click(Sender: TObject);
    procedure dxBarLargeButton505Click(Sender: TObject);
    procedure dxBarLargeButton503Click(Sender: TObject);
    procedure dxBarLargeButton502Click(Sender: TObject);
    procedure dxBarLargeButton96Click(Sender: TObject);
    procedure dxBarLargeButton97Click(Sender: TObject);
    procedure dxBarLargeButton523Click(Sender: TObject);
    procedure dxBarLargeButton524Click(Sender: TObject);
    procedure dxBarLargeButton522Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarLargeButton98Click(Sender: TObject);
    procedure dxBarLargeButton99Click(Sender: TObject);
    procedure dxBarLargeButton100Click(Sender: TObject);



//    procedure dxBarButton125Click(Sender: TObject);
  private
  var
    TamanhoTotal: integer;

  public

  end;

var
  frm_main: Tfrm_main;
  caminhoftp: string;
  pastacliente: string;
  host: String;
  mde_button: Integer;

implementation

{$R *.dfm}
{$REGION 'There is nothing up here'}
// As a said, nothing. Go Away bro!
{$ENDREGION }

uses
  cadastro_empresa, cadastro_colaborador, cadastro_fornecedor,
  cadastro_grupo, cadastro_sub_grupo,  cadastro_produto,
  cadastro_unidade, vw_pdv,
  config_notas_banco, liberacao, u_funcoes, relatorios, parametros_acesso_geral,
  consul_nfce,
  venda_mercadoria, funcoes_sistema, cadastro_familia,
  v_Env, h_Dialogs, vw_rel_gen_periodo, vw_acesso_remoto,
  vw_importacao_nfe, vw_etiquetas, vw_rel_vendas_simples, c_Globals, rel_vw_movimentacao_caixa, vw_pontos_impressao, h_UIFunctions,
  cad_banco, cad_turno, forma_pagamento, cad_plano_contas,
  cad_centro_custo, cad_complementos, cad_historico, fluxo_caixa,
  cad_tipo_pagamento, rel_fornecedor, relatorio_colaboradores,
  rel_fiscal, rel_produtos, rel_clientes, abri_caixa, cad_caixa,
  controle_taxa_cartao, parametros_modulos, historico_caixas, auditoria,
  Atualizador, cad_usuario, Acessos, smcmodulador, cad_transportador, cad_veiculos,
  MenuConfiguracaoNfeNFce, totalizacao_pedido, venda_pedido, vw_cliente,
  cad_turnos, caixa_recebimento, cad_contador, cad_consultor, os_pet,
  fmr_suporte_smc, cad_regiao, cad_lei, cad_motorista,
  cad_veiculos_transportadora, alterar_senha, cad_rota, cad_marca,
  cad_atividade, Emissor_nfe, conta_pagar, conta_receber, terceiros, proprio,
  gerar_boletos, cad_sistemas, cad_bairro,
  vw_tipoDeMovimento, arquivos_fiscais, cad_vacina, animais, os_cursos,
  os_fotografia, cad_servico, cad_veiculos_clientes, os_mecanica;

  //historico_caixas, correcao_fiscal_tributacao_produtos, atulizar_ncm_cest, cad_juros_multas;

procedure Tfrm_main.dxBarButton101Click(Sender: TObject);
begin
  BTNMOVCAIXA.Click();
end;

procedure Tfrm_main.dxBarButton104Click(Sender: TObject);
begin
  // manworking;
  // if not TFunctions.CheckOpen(frm_vw_pvw_horizontal) then
  // frm_vw_pvw_horizontal := Tfrm_vw_pvw_horizontal.Create(nil);
  // frm_vw_pvw_horizontal.showmodal;
  dxBarButton106.Click();
end;

procedure Tfrm_main.dxBarButton105Click(Sender: TObject);
begin
  // manworking;

  // if not TFunctions.CheckOpen(frm_rel_pvw_vertical) then
  // frm_rel_pvw_vertical := Tfrm_rel_pvw_vertical.Create(nil);
  // frm_rel_pvw_vertical.showmodal;

  dxBarButton86.Click();

end;

procedure Tfrm_main.dxBarButton106Click(Sender: TObject);
begin
  if not TFunctions.CheckOpen(frm_vw_rel_vendas_simples) then
    frm_vw_rel_vendas_simples := tfrm_vw_rel_vendas_simples.Create(nil);
  frm_vw_rel_vendas_simples.showmodal;

end;

procedure Tfrm_main.dxBarButton114Click(Sender: TObject);
begin

  if not TFunctions.CheckOpen(frm_rel_convenio) then
    frm_rel_convenio := tfrm_rel_convenio.Create(nil);
  frm_rel_convenio.showmodal;

end;


procedure Tfrm_main.dxBarButton1Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(frm_cad_viculo_clientes) then
  begin
    frm_cad_viculo_clientes := Tfrm_cad_viculo_clientes.Create(nil);
    frm_cad_viculo_clientes.showmodal;
  end;
end;

procedure Tfrm_main.btn_fluxo_caixaClick(Sender: TObject);
begin
  if not TFunctions.CheckOpen(Frm_fluxo_caixa) then
  begin
    dxRibbon1.ShowTabGroups := false;
    Frm_fluxo_caixa:= TFrm_fluxo_caixa.Create(nil);
    Frm_fluxo_caixa.showmodal;
    Frm_fluxo_caixa:= nil;
    dxRibbon1.ShowTabGroups := True;
end;
end;

procedure Tfrm_main.btn_cad_historicoClick(Sender: TObject);
begin
  if not TFunctions.CheckOpen(FRM_cad_historico) then
  begin
    dxRibbon1.ShowTabGroups := false;
    FRM_cad_historico:= TFRM_cad_historico.Create(nil);
    FRM_cad_historico.showmodal;
    FRM_cad_historico:= nil;
    dxRibbon1.ShowTabGroups := True;
end;
end;



procedure Tfrm_main.btn_cad_jurosClick(Sender: TObject);
begin
(*
if not TFunctions.CheckOpen(Frm_multo_juros) then
Frm_multo_juros := TFrm_multo_juros.Create(nil);
Frm_multo_juros.ShowModal;
*)
end;

procedure Tfrm_main.btn_cad_taxas_cartoesClick(Sender: TObject);
begin
  if not TFunctions.CheckOpen(Frm_contro_taxa_cartoes) then
  begin
    dxRibbon1.ShowTabGroups := false;
    Frm_contro_taxa_cartoes:= TFrm_contro_taxa_cartoes.Create(nil);
    Frm_contro_taxa_cartoes.showmodal;
    Frm_contro_taxa_cartoes:= nil;
    dxRibbon1.ShowTabGroups := True;
  end;
end;

procedure Tfrm_main.btn_cad_turnoClick(Sender: TObject);
begin
  if not TFunctions.CheckOpen(Frm_cad_turno) then
  begin
    dxRibbon1.ShowTabGroups := false;
    Frm_cad_turno:= TFrm_cad_turno.Create(nil);
    Frm_cad_turno.showmodal;
    Frm_cad_turno:= nil;
    dxRibbon1.ShowTabGroups := True;
  end;
end;

procedure Tfrm_main.btn_cad_form_pagClick(Sender: TObject);
begin
  if not TFunctions.CheckOpen(FRM_forma_pagamento) then
  begin
    dxRibbon1.ShowTabGroups := false;
    FRM_forma_pagamento:= TFRM_forma_pagamento.Create(nil);
    FRM_forma_pagamento.showmodal;
    FRM_forma_pagamento:= nil;
    dxRibbon1.ShowTabGroups := True;
  end;
end;


procedure Tfrm_main.btn_cad_plano_contasClick(Sender: TObject);
begin
  if not TFunctions.CheckOpen(FRM_cad_plano_contas) then
  begin
    dxRibbon1.ShowTabGroups := false;
    FRM_cad_plano_contas:= TFRM_cad_plano_contas.Create(nil);
    FRM_cad_plano_contas.showmodal;
    FRM_cad_plano_contas:= nil;
    dxRibbon1.ShowTabGroups := True;
  end;
end;

procedure Tfrm_main.btn_cad_t_pagClick(Sender: TObject);
begin
  if not TFunctions.CheckOpen(FMR_tipo_pagamento) then
  begin
    dxRibbon1.ShowTabGroups := false;
    FMR_tipo_pagamento:= TFMR_tipo_pagamento.Create(nil);
    FMR_tipo_pagamento.showmodal;
    FMR_tipo_pagamento:= nil;
    dxRibbon1.ShowTabGroups := True;
  end;
end;


procedure Tfrm_main.btn_cad_bancoClick(Sender: TObject);
begin
  if not TFunctions.CheckOpen(Frm_cad_banco) then
  begin
    dxRibbon1.ShowTabGroups := false;
    Frm_cad_banco := TFrm_cad_banco.Create(nil);
    Frm_cad_banco.showmodal;
    Frm_cad_banco:= nil;
    dxRibbon1.ShowTabGroups := True;
  end;
end;

procedure Tfrm_main.btn_cad_centro_contasClick(Sender: TObject);
begin
  if not TFunctions.CheckOpen(FRM_cad_centro_custo) then
  begin
    dxRibbon1.ShowTabGroups := false;
    FRM_cad_centro_custo := TFRM_cad_centro_custo.Create(nil);
    FRM_cad_centro_custo.showmodal;
    FRM_cad_centro_custo:= nil;
    dxRibbon1.ShowTabGroups := True;
  end;
end;

procedure Tfrm_main.btn_cad_complementosClick(Sender: TObject);
begin
  if not TFunctions.CheckOpen(FRM_cad_complementos) then
  begin
    dxRibbon1.ShowTabGroups := false;
    FRM_cad_complementos := TFRM_cad_complementos.Create(nil);
    FRM_cad_complementos.showmodal;
    FRM_cad_complementos:= nil;
    dxRibbon1.ShowTabGroups := True;
 end;
end;

procedure Tfrm_main.btnHistoricoCaixaClick(Sender: TObject);
begin
if not TFunctions.CheckOpen(Frm_resumo_de_caixas) then
Frm_resumo_de_caixas := TFrm_resumo_de_caixas.Create(nil);
Frm_resumo_de_caixas.Showmodal;
end;

procedure Tfrm_main.BTNMOVCAIXAClick(Sender: TObject);
begin
  if not TFunctions.CheckOpen(frm_movimentacao_caixa) then
  frm_movimentacao_caixa := tfrm_movimentacao_caixa.Create(TEnv.Date.FirstDayOfMonth, now);
  frm_movimentacao_caixa.showmodal;
end;

procedure Tfrm_main.BTN_rel_empresaClick(Sender: TObject);
begin
  TFRM_relatorio.Create(nil).Empresa.Close;
end;

procedure Tfrm_main.dxBarButton68Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarButton69Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarButton70Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarButton71Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarButton72Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarButton73Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarButton74Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarButton75Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarButton76Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarButton77Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarButton83Click(Sender: TObject);
begin
  manworking;
  // if not u_funcoes.VerificaAberta(Frm_cad_historico) then
  // begin
  // dxRibbon1.ShowTabGroups := false;
  // with Frm_cad_historico do
  // begin
  // Frm_cad_historico := TFrm_cad_historico.Create(nil);
  // TIPO_HISTORICO := thEstoque;
  // Visible := false;
  // ShowModal;
  // Close;
  // end;
  // end;
  // dxRibbon1.ShowTabGroups := True;
end;

procedure Tfrm_main.dxBarButton85Click(Sender: TObject);
var
  dt_1, dt_2: tdate;
  showreport: Boolean;
begin
  try
    dt_1 := 0;
    dt_2 := 0;

    if not verificaaberta(frm_rel_gen_periodo) then
    begin
      frm_rel_gen_periodo := tfrm_rel_gen_periodo.Create('Livro de Entrada');
      frm_rel_gen_periodo.showmodal;
      dt_1 := frm_rel_gen_periodo.edt_dt_inicio.Date;
      dt_2 := frm_rel_gen_periodo.edt_dt_fim.Date;
      showreport := frm_rel_gen_periodo.m_sr;
      frm_rel_gen_periodo.free;
    end;

    if showreport then
    begin
      Frm_Relatorio := TFRM_relatorio.Create(nil);
      Frm_Relatorio.LivroEntrada(dt_1, dt_2, TReportKind.rkscreen);
      Frm_Relatorio.Close;
      Frm_Relatorio := nil;
    end;
  except
    on e: exception do
    begin
      TDialogs.wnAlerta('Livro de Entrada', 'Erro ao gerar livro de entrada:' + e.Message);
      Frm_Relatorio.Close;
      Frm_Relatorio := nil;
    end;
  end;
end;

procedure Tfrm_main.dxBarButton86Click(Sender: TObject);
var
  dt_1, dt_2: tdate;
  showreport: Boolean;
begin
  dt_1 := 0;
  dt_2 := 0;

  if not verificaaberta(frm_rel_gen_periodo) then
  begin
    frm_rel_gen_periodo := tfrm_rel_gen_periodo.Create('Livro de Saída');
    frm_rel_gen_periodo.showmodal;
    dt_1 := frm_rel_gen_periodo.edt_dt_inicio.Date;
    dt_2 := frm_rel_gen_periodo.edt_dt_fim.Date;
    showreport := frm_rel_gen_periodo.m_sr;
    frm_rel_gen_periodo.free;
  end;

  if showreport then
    TFRM_relatorio.Create(nil).LivroSaida(dt_1, dt_2).Close;
end;

procedure Tfrm_main.dxBarButton88Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(Frm_cad_turno) then
  begin
    dxRibbon1.ShowTabGroups := false;
    with Frm_cad_turno do
    begin
      Frm_cad_turno := TFrm_cad_turno.Create(nil);
      Visible := false;
      showmodal;
      Close;
    end;
  end;
  dxRibbon1.ShowTabGroups := True;
end;

procedure Tfrm_main.BTN_rel_comissoesClick(Sender: TObject);
begin
  if not verificaaberta(frm_rel_comissao) then
  begin
    frm_rel_comissao := tfrm_rel_comissao.Create(nil);
    frm_rel_comissao.showmodal;
    frm_rel_comissao.free;
  end;
end;

procedure Tfrm_main.dxBarButton98Click(Sender: TObject);
begin
  rel_lucratividade;
end;

procedure Tfrm_main.dxBarLargeButton100Click(Sender: TObject);
begin
  if not verificaaberta(Frm_Produto2) then
  begin
    Frm_Produto2 := TFrm_Produto2.Create(nil);
    Frm_Produto2.showmodal;
    Frm_Produto2.free;
  end;
end;

procedure Tfrm_main.dxBarLargeButton26Click(Sender: TObject);
begin
  frm_caixa_recebimento := Tfrm_caixa_recebimento.Create(nil);
  frm_caixa_recebimento.ShowModal;
end;

procedure Tfrm_main.dxBarLargeButton27Click(Sender: TObject);
begin
  if NOT u_funcoes.verificaaberta(frm_cad_consultor) then
  begin
  dxRibbon1.ShowTabGroups := false;
  frm_cad_consultor := Tfrm_cad_consultor.Create(nil);
  frm_cad_consultor.ShowModal;
  dxRibbon1.ShowTabGroups := True;
  end;
end;

procedure Tfrm_main.dxBarLargeButton287Click(Sender: TObject);
begin
  manworking;
  // if not u_funcoes.VerificaAberta(frm_abrir_caixa) then
  // begin
  // dxRibbon1.ShowTabGroups := false;
  // frm_lasencamento_caixa := tfrm_lancamento_caixa.Create(nil);
  // frm_lancamento_caixa.showmodal;
  // end;
  // dxRibbon1.ShowTabGroups := True;
end;

procedure Tfrm_main.dxBarLargeButton297Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.BTN_pdvClick(Sender: TObject);

    function CaixaValido: Boolean;
    begin
         Result := (simplequery('SELECT Situacao FROM Caixa where id = '+IntToStr(ID_CAIXA)).Fields[0].AsString = 'A');
    end;

begin
     if (simplequery('SELECT FINAN_C_ABR_FECH FROM PARAMETROS_MODULAR').Fields[0].AsString = m_true) then
     begin
          (*
          if not TEnv.Tuser.IsAdmin then
          begin
               if TFrm_liberacao.Execute then
                  openCaixa;
          end;
          *)

          if (ID_CAIXA = 0) or (not CaixaValido) then
             openCaixa;

          if ID_CAIXA > 0 then
             openPDV;
     end
     else
         openPDV;
end;

procedure Tfrm_main.dxBarLargeButton301Click(Sender: TObject);
begin

  if not u_funcoes.verificaaberta(Form_Empresa) then
  begin
    Form_Empresa := TForm_Empresa.Create(nil);
    Form_Empresa.showmodal;
  end;

end;

procedure Tfrm_main.dxBarLargeButton308Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.BTN_param_fiscalClick(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(frmMenuConfiguracaoNfeNFce) then
  begin
    frmMenuConfiguracaoNfeNFce := TfrmMenuConfiguracaoNfeNFce.Create(nil);
    frmMenuConfiguracaoNfeNFce.showmodal;
  end;
end;

procedure Tfrm_main.BTN_param_sistemaClick(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(frm_parametros_sistema) then
  begin
    frm_parametros_sistema := Tfrm_parametros_sistema.Create(nil);
    frm_parametros_sistema.showmodal;
  end;
end;

procedure Tfrm_main.dxBarLargeButton312Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarLargeButton314Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(Frm_Relatorio) then
  Frm_Relatorio := TFRM_relatorio.Create(Application);
  Frm_Relatorio.FRX_CLIENTE.LoadFromFile(Frm_Relatorio.PATH_CLIENTE, True);
  Frm_Relatorio.FRX_CLIENTE.showreport;
end;

procedure Tfrm_main.dxBarLargeButton316Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarLargeButton317Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarLargeButton319Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(Frm_Relatorio) then
  Frm_Relatorio := TFRM_relatorio.Create(Application);
  Frm_Relatorio.FRX_EMPRESA.LoadFromFile(Frm_Relatorio.PATH_EMPRESA, True);
  Frm_Relatorio.FRX_EMPRESA.showreport;
end;

procedure Tfrm_main.BTN_sairClick(Sender: TObject);
begin
  RegistraLog('Saiu do Sistema');
  Close;
end;

procedure Tfrm_main.ordem_de_serviço11Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.ordem_de_serviço12Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.ordem_de_serviço13Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.ordem_de_serviço14Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.ordem_de_servicoClick(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.openPDV;
begin
     if not TFunctions.CheckOpen(Frm_PDV) then
     begin
          Frm_PDV := TFrm_PDV.Create(Self);
          Frm_PDV.showmodal;
     end;
end;


procedure Tfrm_main.openCaixa;
begin
     if not TFunctions.CheckOpen(Frm_abrir_caixa) then
     begin
          Frm_abrir_caixa := TFrm_abrir_caixa.Create(Self);
          Frm_abrir_caixa.showmodal;
     end;
end;



procedure Tfrm_main.chkPARAMETROS;
begin
      //--------BASICOS
//     BTN_clientes.Enabled := (simplequery('SELECT CLIENTES FROM parametros_modular').Fields[0].AsString = m_true);
     BTN_produto.Enabled  := (simplequery('SELECT PRODUTO FROM parametros_modular').Fields[0].AsString = m_true);
     Cadastro1.Enabled    := (simplequery('SELECT PRODUTO FROM parametros_modular').Fields[0].AsString = m_true);
     BTN_pdv.Enabled      := (simplequery('SELECT PDV FROM parametros_modular').Fields[0].AsString = m_true);
     BTN_vendas.Enabled   := (simplequery('SELECT VENDAS FROM parametros_modular').Fields[0].AsString = m_true);
     BTN_nfce.Enabled     := (simplequery('SELECT NFCE FROM parametros_modular').Fields[0].AsString = m_true);

     //--------CADASTRO
     BTN_c_fornecedor.Enabled := (simplequery('SELECT CAD_FORNECEDOR FROM parametros_modular').Fields[0].AsString = m_true);
     BTN_c_colab.Enabled := (simplequery('SELECT CAD_COLABORADOR FROM parametros_modular').Fields[0].AsString = m_true);
     BTN_c_colab.Enabled := (simplequery('SELECT CAD_COLABORADOR FROM parametros_modular').Fields[0].AsString = m_true);

     //--------FISCAL
     BTN_improta_nfe.Enabled := (simplequery('SELECT FISC_IMPORTA_NFE FROM parametros_modular').Fields[0].AsString = m_true);
     btn_mde.Enabled := (simplequery('SELECT FISC_MDE FROM parametros_modular').Fields[0].AsString = m_true);

     //--------RELATORIOS

     BTN_rel_clientes.Enabled := (simplequery('SELECT REL_CLIENTES FROM parametros_modular').Fields[0].AsString = m_true);
     BTN_rel_colab.Enabled := (simplequery('SELECT REL_COLABORADORES FROM parametros_modular').Fields[0].AsString = m_true);
     BTN_rel_fornecedores.Enabled := (simplequery('SELECT REL_FORNECEDORES FROM parametros_modular').Fields[0].AsString = m_true);
     BTN_rel_Geral_comissoes.Enabled := (simplequery('SELECT REL_COMISSOES FROM parametros_modular').Fields[0].AsString = m_true);
     BTN_rel_Geral_convenio.Enabled := (simplequery('SELECT REL_CONVENIO FROM parametros_modular').Fields[0].AsString = m_true);
     BTN_rel_produto.Enabled := (simplequery('SELECT REL_PRODUTOS FROM parametros_modular').Fields[0].AsString = m_true);
     BTN_rel_Geral_financeiro.Enabled := (simplequery('SELECT REL_FINANCEIRO FROM parametros_modular').Fields[0].AsString = m_true);
     BTN_rel_Geral_compras.Enabled := (simplequery('SELECT REL_COMPRAS FROM parametros_modular').Fields[0].AsString = m_true);
     BTN_rel_Geral_vendas.Enabled := (simplequery('SELECT REL_VENDAS FROM parametros_modular').Fields[0].AsString = m_true);
     BTN_rel_Geral_fiscal.Enabled := (simplequery('SELECT REL_FISCAL FROM parametros_modular').Fields[0].AsString = m_true);

     //--------FINANCIEIRO
     gp_finan.Enabled := (simplequery('SELECT FINAN_GERAL FROM parametros_modular').Fields[0].AsString = m_true);

end;

procedure Tfrm_main.ordem_de_servico3Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.ordem_de_servico4Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.ordem_de_servico5Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.ordem_de_servico6Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.BTN_nfceClick(Sender: TObject);
begin
  dxRibbon1.ShowTabGroups := false;
  if not u_funcoes.verificaaberta(Frm_consul_nfce) then
  begin
    Frm_consul_nfce := TFrm_consul_nfce.Create(nil);
    Frm_consul_nfce.showmodal;
  end;
  dxRibbon1.ShowTabGroups := True;
end;

procedure Tfrm_main.BTN_nfeClick(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.BTN_nfseClick(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.BTN_osClick(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.BTN_fechar_caixaClick(Sender: TObject);
begin
  manworking;
  // if not VerificaAberta(frm_fechar_caixa) then
  // begin
  // dxRibbon1.ShowTabGroups := false;
  // frm_fechar_caixa := Tfrm_fechar_caixa.Create(nil);
  // frm_fechar_caixa.showmodal;
  // FreeAndNil(frm_fechar_caixa);
  // end;
  // Frm_Principal.dxRibbon1.ShowTabGroups := True;
end;

procedure Tfrm_main.btnEtiquetasClick(Sender: TObject);
begin
  if not TFunctions.CheckOpen(frm_etiquetas) then
  frm_etiquetas := tfrm_etiquetas.Create(nil);
  frm_etiquetas.showmodal;
end;

procedure Tfrm_main.BTN_atendimento_onlineClick(Sender: TObject);
begin
  tuifunctions.AcessoRemoto;
end;

procedure Tfrm_main.BTN_balancaClick(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.BTN_vendasClick(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(frm_pedido_venda) then
  begin
    dxRibbon1.ShowTabGroups := false;
    frm_pedido_venda := Tfrm_pedido_venda.Create(nil);
    frm_pedido_venda.showmodal;
    dxRibbon1.ShowTabGroups := True;
  end;
end;

procedure Tfrm_main.BTN_improta_nfeClick(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(frm_importacao_nfe) then
  begin
    dxRibbon1.ShowTabGroups := false;
    frm_importacao_nfe := Tfrm_importacao_nfe.Create(nil);
    frm_importacao_nfe.showmodal;
  end;
  dxRibbon1.ShowTabGroups := True;
end;

procedure Tfrm_main.btn_mdeClick(Sender: TObject);
begin
  TFile.Open(TDir.smcmde.SMC_MDE);
end;

procedure Tfrm_main.dxBarLargeButton351Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarLargeButton352Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarLargeButton353Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarLargeButton355Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarLargeButton356Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarLargeButton357Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarLargeButton358Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarLargeButton359Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarLargeButton361Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarLargeButton364Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarLargeButton365Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarLargeButton366Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarLargeButton367Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarLargeButton371Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarLargeButton372Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarLargeButton373Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarLargeButton374Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarLargeButton375Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarLargeButton376Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarLargeButton377Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarLargeButton379Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarLargeButton380Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarLargeButton384Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarLargeButton386Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarLargeButton388Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarLargeButton389Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarLargeButton392Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(Form_Empresa) then
  begin
    dxRibbon1.ShowTabGroups := false;
    Form_Empresa := TForm_Empresa.Create(Application);
    Form_Empresa.showmodal;
    dxRibbon1.ShowTabGroups := True;
  end;
end;

procedure Tfrm_main.dxBarLargeButton393Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarLargeButton395Click(Sender: TObject);
begin
  frm_funcoes_sistema := tfrm_funcoes_sistema.Create(nil);
  frm_funcoes_sistema.showmodal;
end;

procedure Tfrm_main.dxBarLargeButton396Click(Sender: TObject);
begin
  if not TFunctions.isRunning(tdir.SMC_SERVICOS.exe) then
    tfile.open(tdir.SMC_SERVICOS.exe);
end;

procedure Tfrm_main.dxBarLargeButton397Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxBarLargeButton39Click(Sender: TObject);
begin
  if NOT u_funcoes.verificaaberta(frm_cad_contador) then
  begin
  dxRibbon1.ShowTabGroups := false;
  frm_cad_contador := Tfrm_cad_contador.Create(nil);
  frm_cad_contador.ShowModal;
  dxRibbon1.ShowTabGroups := True;
  end;
end;

procedure Tfrm_main.dxBarLargeButton401Click(Sender: TObject);
begin

  if NOT u_funcoes.verificaaberta(frm_natureza_op) then
  begin
    dxRibbon1.ShowTabGroups := false;
    frm_natureza_op := Tfrm_natureza_op.Create(nil);
    frm_natureza_op.showmodal;
    dxRibbon1.ShowTabGroups := True;
  end;

  // ManWorking;
end;

procedure Tfrm_main.dxBarLargeButton402Click(Sender: TObject);
begin
  rel_lucratividade;
end;

procedure Tfrm_main.dxBarLargeButton405Click(Sender: TObject);
begin
  if not TFunctions.CheckOpen(frm_pontos_impressao) then
    frm_pontos_impressao := tfrm_pontos_impressao.Create(nil);
  frm_pontos_impressao.showmodal;
end;

procedure Tfrm_main.dxBarLargeButton408Click(Sender: TObject);
begin

  if not TFunctions.CheckOpen(frm_agrupar_vendas) then
    frm_agrupar_vendas := Tfrm_agrupar_vendas.Create(nil);
  frm_agrupar_vendas.showmodal;

end;

procedure Tfrm_main.dxBarLargeButton410Click(Sender: TObject);
begin
(*
if not TFunctions.CheckOpen(Frm_resumo_de_caixas) then
Frm_resumo_de_caixas := TFrm_resumo_de_caixas.Create(nil);
Frm_resumo_de_caixas.ShowModal;
*)
end;

procedure Tfrm_main.dxBarLargeButton411Click(Sender: TObject);
begin
(*
if not TFunctions.CheckOpen(frm_atualizar_ncm_cest) then
frm_atualizar_ncm_cest := Tfrm_atualizar_ncm_cest.Create(nil);
frm_atualizar_ncm_cest.showmodal;
*)
end;

procedure Tfrm_main.dxBarLargeButton412Click(Sender: TObject);
var Lista: TStringList;
    I: Integer;
    coluns: System.TArray<String>;
    sep: char;
    open: TOpenDialog;
    ncm : string;
begin
     (*
     if not u_funcoes.VerificaAberta(Frm_correca_fiscal_tributacao_produtos) then
     Frm_correca_fiscal_tributacao_produtos := TFrm_correca_fiscal_tributacao_produtos.Create(nil);
     Frm_correca_fiscal_tributacao_produtos.ShowModal;
     *)

     sep := ';';
     Open := TOpenDialog.Create(self);
     if Open.Execute then
     begin
          Lista := TStringList.Create;
          Lista.Loadfromfile(open.FileName);
          TView.WV_START_SYSTEM.Show(0, Lista.Count, 'Atualização tabela CEST');

          ExecQuery('TRUNCATE TABLE TAB_CEST');
          for I := 1 to Lista.Count-1 do
          begin
               coluns := Lista.Strings[i].Split(sep);

               (*
               Cest -> coluns[0];
               Ncm -> coluns[1];
               Segmento -> coluns[2];
               Item -> coluns[3];
               Descricao -> coluns[4];
               *)

               ncm := coluns[1];
               execquery('insert into TAB_CEST(CEST,NCM,DESCRICAO) values(:p1, :p2, :p3)',
                                   [coluns[0],
                                    ncm.Replace('.',''),
                                    coluns[4]]);

               TView.WV_START_SYSTEM.Show(I, Lista.Count, 'Atualização tabela CEST');
          end;
          Lista.Free;
          TView.WV_START_SYSTEM.close;
          Application.MessageBox('Atualização concluida!','Atualização CEST',MB_OK+MB_ICONEXCLAMATION);
     end;
end;

procedure Tfrm_main.dxBarLargeButton41Click(Sender: TObject);
begin
    if not TFunctions.CheckOpen(FRM_sistemas) then
  begin
  FRM_sistemas:= TFRM_sistemas.Create(nil);
    FRM_sistemas.showmodal;
    FRM_sistemas:= nil;
  end;
end;

procedure Tfrm_main.dxBarLargeButton42Click(Sender: TObject);
begin
 if not TFunctions.CheckOpen(frm_suporte_smc) then
  begin
    frm_suporte_smc:= Tfrm_suporte_smc.Create(nil);
    frm_suporte_smc.showmodal;
    frm_suporte_smc:= nil;
  end;
end;

procedure Tfrm_main.dxBarLargeButton440Click(Sender: TObject);
begin
 if not TFunctions.CheckOpen(frm_emissor_nfe2) then
  begin
    //frm_emissor_nfe2:= Tfrm_emissor_nfe2.Create(nil,0);
    frm_emissor_nfe2:= Tfrm_emissor_nfe2.Create(nil);
    frm_emissor_nfe2.showmodal;
    frm_emissor_nfe2:= nil;
  end;
end;

procedure Tfrm_main.dxBarLargeButton45Click(Sender: TObject);
begin
Frm_Conf_Nfceok := TFrm_Conf_Nfceok.Create(nil);
Frm_Conf_Nfceok.ShowModal;
end;

procedure Tfrm_main.BTN_rel_conv_movimentacaoClick(Sender: TObject);
begin
  if not TFunctions.CheckOpen(frm_rel_convenio) then
  begin
    dxRibbon1.ShowTabGroups := false;
    frm_rel_convenio := Tfrm_rel_convenio.Create(nil);
    frm_rel_convenio.showmodal;
    frm_rel_convenio := nil;
    dxRibbon1.ShowTabGroups := True;
  end;
end;

procedure Tfrm_main.BTN_rel_clientesClick(Sender: TObject);
begin
  if not TFunctions.CheckOpen(frm_rel_clientes) then
  begin
    dxRibbon1.ShowTabGroups := false;
    frm_rel_clientes := Tfrm_rel_clientes.Create(nil);
    frm_rel_clientes.showmodal;
    frm_rel_clientes := nil;
    dxRibbon1.ShowTabGroups := True;
  end;
end;


procedure Tfrm_main.BTN_rel_colabClick(Sender: TObject);
begin
  if not TFunctions.CheckOpen(frm_rel_colaborador) then
  begin
    dxRibbon1.ShowTabGroups := false;
    frm_rel_colaborador := Tfrm_rel_colaborador.Create(nil);
    frm_rel_colaborador.showmodal;
    frm_rel_colaborador := nil;
    dxRibbon1.ShowTabGroups := True;
  end;
end;

procedure Tfrm_main.BTN_rel_fornecedoresClick(Sender: TObject);
begin
  if not TFunctions.CheckOpen(frm_rel_fornecedor) then
  begin
    dxRibbon1.ShowTabGroups := false;
    frm_rel_fornecedor := Tfrm_rel_fornecedor.Create(nil);
    frm_rel_fornecedor.showmodal;
    frm_rel_fornecedor := nil;
    dxRibbon1.ShowTabGroups := True;
  end;

end;

procedure Tfrm_main.dxBarLargeButton476Click(Sender: TObject);
begin
  if not TFunctions.CheckOpen(frm_movimento_pdv) then
  begin
    dxRibbon1.ShowTabGroups := false;
    frm_movimento_pdv:= Tfrm_movimento_pdv.Create(nil);
    frm_movimento_pdv.showmodal;
    frm_movimento_pdv:= nil;
    dxRibbon1.ShowTabGroups := True;
  end;
end;



procedure Tfrm_main.dxBarLargeButton478Click(Sender: TObject);
begin
  if not TFunctions.CheckOpen(frmAtualizador) then
  begin
    dxRibbon1.ShowTabGroups := false;
    frmAtualizador := TfrmAtualizador.Create(nil);
    frmAtualizador.showmodal;
    frmAtualizador := nil;
    dxRibbon1.ShowTabGroups := True;
  end
end;

procedure Tfrm_main.btnAuditoriaClick(Sender: TObject);
begin
  // Critica acesso

  //Wander
  //if not TemAcesso(public_Usuario_Logado,'AUDITORIA') Then
  //   exit;

  if not TFunctions.CheckOpen(frm_auditoria) then
  begin
    dxRibbon1.ShowTabGroups := false;
    frm_auditoria := Tfrm_auditoria.Create(nil);
    frm_auditoria.showmodal;
    frm_auditoria := nil;
    dxRibbon1.ShowTabGroups := True;
  end;
end;

procedure Tfrm_main.dxBarLargeButton479Click(Sender: TObject);
begin
  if not TFunctions.CheckOpen(frm_rel_fiscais) then
  begin
    dxRibbon1.ShowTabGroups := false;
    frm_rel_fiscais := Tfrm_rel_fiscais.Create(nil);
    frm_rel_fiscais.showmodal;
    frm_rel_fiscais := nil;
    dxRibbon1.ShowTabGroups := True;
  end;
end;

procedure Tfrm_main.BTN_rel_produtoClick(Sender: TObject);
begin
  if not TFunctions.CheckOpen(frm_rel_produtos) then
  begin
    dxRibbon1.ShowTabGroups := false;
    frm_rel_produtos := Tfrm_rel_produtos.Create(nil);
    frm_rel_produtos.showmodal;
    frm_rel_produtos := nil;
    dxRibbon1.ShowTabGroups := True;
  end;
end;

procedure Tfrm_main.dxBarLargeButton481Click(Sender: TObject);
begin
  if not TFunctions.CheckOpen(frm_cad_caixa) then
  begin
    dxRibbon1.ShowTabGroups := false;
    frm_cad_caixa := Tfrm_cad_caixa.Create(nil);
    frm_cad_caixa.showmodal;
    frm_cad_caixa := nil;
    dxRibbon1.ShowTabGroups := True;
  end;
end;

procedure Tfrm_main.dxBarLargeButton482Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(frm_p_modulos) then
  begin
    frm_p_modulos := Tfrm_p_modulos.Create(nil);
    frm_p_modulos.showmodal;
  end;
end;

procedure Tfrm_main.dxBarLargeButton486Click(Sender: TObject);
begin
frm_cad_usuario := Tfrm_cad_usuario.Create(nil);
frm_cad_usuario.ShowModal;
frm_cad_usuario := nil;
end;

procedure Tfrm_main.dxBarLargeButton488Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(frm_natureza_op) then
  begin
    frm_natureza_op := Tfrm_natureza_op.Create(nil);
    frm_natureza_op.showmodal;
  end
end;

procedure Tfrm_main.dxBarLargeButton489Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(Frm_Marca) then
  begin
    Frm_Marca := TFrm_Marca.Create(nil);
    Frm_Marca.showmodal;
  end
end;

//procedure Tfrm_main.dxBarLargeButton487Click(Sender: TObject);
//begin
//  if not TFunctions.CheckOpen(frm_cliente) then
//  begin
//    dxRibbon1.ShowTabGroups := false;
//    frm_modular := Tfrm_modular.Create(nil);
//    frm_modular.showmodal;
//    frm_modular := nil;
//    dxRibbon1.ShowTabGroups := True;
//  end;
//end;

procedure Tfrm_main.dxBarLargeButton490Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(Frm_unidade) then
  begin
    Frm_unidade := TFrm_unidade.Create(nil);
    Frm_unidade.showmodal;
  end
end;

procedure Tfrm_main.dxBarLargeButton491Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(Frm_SubGrupo) then
  begin
    Frm_SubGrupo := TFrm_SubGrupo.Create(nil);
    Frm_SubGrupo.showmodal;
  end
end;

procedure Tfrm_main.dxBarLargeButton492Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(Frm_Grupo) then
  begin
    Frm_Grupo := TFrm_Grupo.Create(nil);
    Frm_Grupo.showmodal;
  end
end;

procedure Tfrm_main.dxBarLargeButton493Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(Frm_Familia) then
  begin
    Frm_Familia := TFrm_Familia.Create(nil);
    Frm_Familia.showmodal;
  end
end;

procedure Tfrm_main.dxBarLargeButton494Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(Frm_Lei) then
  begin
    Frm_Lei := TFrm_Lei.Create(nil);
    Frm_Lei.showmodal;
  end;
end;

procedure Tfrm_main.dxBarLargeButton499Click(Sender: TObject);
begin
  if not TFunctions.CheckOpen(frmAcessos) then
  begin
    dxRibbon1.ShowTabGroups := false;
    frmAcessos := TfrmAcessos.Create(nil);
    frmAcessos.showmodal;
    frmAcessos := nil;
    dxRibbon1.ShowTabGroups := True;
  end;
end;

procedure Tfrm_main.dxBarLargeButton500Click(Sender: TObject);
begin
   if not u_funcoes.verificaaberta(frm_alterar_senha) then
  begin
    frm_alterar_senha := Tfrm_alterar_senha.Create(nil);
    frm_alterar_senha.showmodal;
  end;
end;

procedure Tfrm_main.dxBarLargeButton502Click(Sender: TObject);
begin
   if not u_funcoes.verificaaberta(FRM_os_fotografia) then
  begin
    FRM_os_fotografia := TFRM_os_fotografia.Create(nil);
    FRM_os_fotografia.showmodal;
  end;

end;

procedure Tfrm_main.dxBarLargeButton503Click(Sender: TObject);
begin
   if not u_funcoes.verificaaberta(Frm_os_cursos) then
  begin
    Frm_os_cursos := TFrm_os_cursos.Create(nil);
    Frm_os_cursos.showmodal;
  end;
end;

procedure Tfrm_main.dxBarLargeButton505Click(Sender: TObject);
begin
   if not u_funcoes.verificaaberta(fmr_os_mecanica) then
  begin
    fmr_os_mecanica := Tfmr_os_mecanica.Create(nil);
    fmr_os_mecanica.showmodal;
  end;
end;

procedure Tfrm_main.dxBarLargeButton506Click(Sender: TObject);
begin
Frm_os_pet := TFrm_os_pet.Create(nil);
Frm_os_pet.ShowModal;
end;

procedure Tfrm_main.dxBarLargeButton510Click(Sender: TObject);
begin
dxRibbon1.ShowTabGroups := false;
frm_cad_transportadora := Tfrm_cad_transportadora.Create(nil);
frm_cad_transportadora.showmodal;
frm_cad_transportadora := nil;
dxRibbon1.ShowTabGroups := True;
end;

procedure Tfrm_main.dxBarLargeButton511Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(FRM_cad_rota) then
  begin
    FRM_cad_rota := TFRM_cad_rota.Create(nil);
    FRM_cad_rota.showmodal;
  end;
end;

procedure Tfrm_main.dxBarLargeButton512Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(FRM_cad_motorista) then
  begin
    FRM_cad_motorista := TFRM_cad_motorista.Create(nil);
    FRM_cad_motorista.showmodal;
  end;
end;

procedure Tfrm_main.dxBarLargeButton513Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(frm_cad_veiculos) then
  begin
    frm_cad_veiculos := Tfrm_cad_veiculos.Create(nil);
    frm_cad_veiculos.showmodal;
  end;
end;


procedure Tfrm_main.dxBarLargeButton514Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(frm_cad_turnos) then
  begin
    frm_cad_turnos := Tfrm_cad_turnos.Create(nil);
    frm_cad_turnos.showmodal;
  end;
end;

procedure Tfrm_main.dxBarLargeButton522Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(FRM_forma_pagamento) then
  begin
    FRM_forma_pagamento := TFRM_forma_pagamento.Create(nil);
    FRM_forma_pagamento.showmodal;
  end;
end;

procedure Tfrm_main.dxBarLargeButton523Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(FMR_tipo_pagamento) then
  begin
    FMR_tipo_pagamento := TFMR_tipo_pagamento.Create(nil);
    FMR_tipo_pagamento.showmodal;
  end;
end;

procedure Tfrm_main.dxBarLargeButton524Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(Frm_cad_banco) then
  begin
    Frm_cad_banco := TFrm_cad_banco.Create(nil);
    Frm_cad_banco.showmodal;
  end;
end;

procedure Tfrm_main.dxBarLargeButton525Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(frm_cad_turnos) then
  begin
    frm_cad_turnos := Tfrm_cad_turnos.Create(nil);
    frm_cad_turnos.showmodal;
  end;
end;

procedure Tfrm_main.dxBarLargeButton526Click(Sender: TObject);
begin
    if not u_funcoes.verificaaberta(frm_contas_pagar) then
  begin
    frm_contas_pagar := Tfrm_contas_pagar.Create(nil);
    frm_contas_pagar.showmodal;
  end;
end;

procedure Tfrm_main.dxBarLargeButton527Click(Sender: TObject);
begin
    if not u_funcoes.verificaaberta(frm_contas_receber) then
  begin
    frm_contas_receber := Tfrm_contas_receber.Create(nil);
    frm_contas_receber.showmodal;
  end;

end;

procedure Tfrm_main.dxBarLargeButton538Click(Sender: TObject);
begin
    if not u_funcoes.verificaaberta(Frm_gerar_boletos) then
  begin
    Frm_gerar_boletos := TFrm_gerar_boletos.Create(nil);
    Frm_gerar_boletos.showmodal;
  end;
end;

procedure Tfrm_main.dxBarLargeButton539Click(Sender: TObject);
begin
    if not u_funcoes.verificaaberta(Frm_gerar_boletos) then
  begin
    Frm_gerar_boletos := TFrm_gerar_boletos.Create(nil);
    Frm_gerar_boletos.showmodal;
    Frm_gerar_boletos.tabRetorno.SetFocus;
  end;
end;

procedure Tfrm_main.dxBarLargeButton540Click(Sender: TObject);
begin
    if not u_funcoes.verificaaberta(Frm_gerar_boletos) then
  begin
    Frm_gerar_boletos := TFrm_gerar_boletos.Create(nil);
    Frm_gerar_boletos.showmodal;
  end;
end;

procedure Tfrm_main.dxBarLargeButton545Click(Sender: TObject);
begin
    if not u_funcoes.verificaaberta(frm_arq_fiscais) then
  begin
    frm_arq_fiscais := Tfrm_arq_fiscais.Create(nil);
    frm_arq_fiscais.showmodal;
  end;
end;

procedure Tfrm_main.dxBarLargeButton550Click(Sender: TObject);
begin
    if not u_funcoes.verificaaberta(frm_chq_terceiros) then
  begin
    frm_chq_terceiros := Tfrm_chq_terceiros.Create(nil);
    frm_chq_terceiros.showmodal;
  end;
end;

procedure Tfrm_main.dxBarLargeButton551Click(Sender: TObject);
begin
    if not u_funcoes.verificaaberta(Frm_cheq_proprio) then
  begin
    Frm_cheq_proprio := TFrm_cheq_proprio.Create(nil);
    Frm_cheq_proprio.showmodal;
  end;
end;

procedure Tfrm_main.BTN_produtoClick(Sender: TObject);
begin
    if not u_funcoes.verificaaberta(Frm_Produto) then
  begin
    Frm_Produto := TFrm_Produto.Create(nil);
    Frm_Produto.showmodal;
  end;
end;

procedure Tfrm_main.dxBarLargeButton63Click(Sender: TObject);
begin
Frm_Conf_Nfceok := TFrm_Conf_Nfceok.Create(nil);
Frm_Conf_Nfceok.ShowModal;
end;

procedure Tfrm_main.dxBarLargeButton64Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(FRM_cad_veiculos_transportadora) then
  begin
    FRM_cad_veiculos_transportadora := TFRM_cad_veiculos_transportadora.Create(nil);
    FRM_cad_veiculos_transportadora.showmodal;
  end;
end;

procedure Tfrm_main.dxBarLargeButton6Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(Frm_Colaborador) then
  begin
    Frm_Colaborador := Tfrm_colaborador.Create(nil);
    Frm_Colaborador.showmodal;
  end;
end;

procedure Tfrm_main.dxBarLargeButton7Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(Frm_fornecedor) then
  begin
    Frm_fornecedor := TFrm_fornecedor.Create(nil);
    Frm_fornecedor.showmodal;
  end;
end;


procedure Tfrm_main.dxBarLargeButton84Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(frm_cad_bairro) then
  begin
    frm_cad_bairro := Tfrm_cad_bairro.Create(nil);
    frm_cad_bairro.showmodal;
    dxRibbon1.ShowTabGroups := True;
  end;
end;

procedure Tfrm_main.dxBarLargeButton88Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(frm_tipos_parametros) then
  begin
    frm_tipos_parametros := Tfrm_tipos_parametros.Create(nil);
    frm_tipos_parametros.showmodal;
  end;
end;

procedure Tfrm_main.dxBarLargeButton89Click(Sender: TObject);
begin
    frm_paramentros_comandas := Tfrm_paramentros_comandas.Create(nil);
    frm_paramentros_comandas.showmodal;
end;

procedure Tfrm_main.dxBarLargeButton92Click(Sender: TObject);
begin
   frm_tipoDeMovimento := Tfrm_tipoDeMovimento.Create(nil);
   frm_tipoDeMovimento.showmodal;
   frm_tipoDeMovimento.Free;
end;

procedure Tfrm_main.dxBarLargeButton93Click(Sender: TObject);
begin
   if not u_funcoes.verificaaberta(frm_cad_animais) then
  begin
    frm_cad_animais := Tfrm_cad_animais.Create(nil);
    frm_cad_animais.showmodal;
    dxRibbon1.ShowTabGroups := True;
  end;
end;

procedure Tfrm_main.dxBarLargeButton95Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(Frm_cad_vacinas) then
  begin
    Frm_cad_vacinas := TFrm_cad_vacinas.Create(nil);
    Frm_cad_vacinas.showmodal;
    dxRibbon1.ShowTabGroups := True;
  end;
end;

procedure Tfrm_main.dxBarLargeButton96Click(Sender: TObject);
begin
  //if not u_funcoes.verificaaberta(Frm_cad_servico ) then
  //begin
    Frm_cad_servico := TFrm_cad_servico.Create(nil);
    Frm_cad_servico.showmodal;
    Frm_cad_servico.Free;
  //end;
end;

procedure Tfrm_main.dxBarLargeButton97Click(Sender: TObject);
begin
   Frm_cad_servico := TFrm_cad_servico.Create(nil);
   Frm_cad_servico.showmodal;
   Frm_cad_servico.Free;
end;

procedure Tfrm_main.dxBarLargeButton98Click(Sender: TObject);
begin
  Frm_Regiao := TFrm_Regiao.Create(nil);
  Frm_Regiao.showmodal;
  Frm_Regiao.Free;
end;

procedure Tfrm_main.dxBarLargeButton99Click(Sender: TObject);
begin
 frm_cadastro_cliente := Tfrm_cadastro_cliente.Create(nil);
  frm_cadastro_cliente.showmodal;
  frm_cadastro_cliente.Free;
end;

procedure Tfrm_main.dxbrbtn10Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(Frm_Familia) then
  begin
    Frm_Familia := TFrm_Familia.Create(nil);
    Frm_Familia.showmodal;
    dxRibbon1.ShowTabGroups := True;
  end;
end;

procedure Tfrm_main.dxbrbtn13Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn14Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn15Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn16Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn17Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn18Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(Frm_unidade) then
  begin
    Frm_unidade := TFrm_unidade.Create(nil);
    Frm_unidade.showmodal;
    dxRibbon1.ShowTabGroups := True;
  end;
end;

procedure Tfrm_main.dxbrbtn19Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(Frm_SubGrupo) then
  begin
    Frm_SubGrupo := TFrm_SubGrupo.Create(nil);
    Frm_SubGrupo.showmodal;
    dxRibbon1.ShowTabGroups := True;
  end;
end;

procedure Tfrm_main.dxbrbtn20Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(Frm_Grupo) then
  begin
    dxRibbon1.ShowTabGroups := false;
    Frm_Grupo := TFrm_Grupo.Create(nil);
    Frm_Grupo.showmodal;
    dxRibbon1.ShowTabGroups := True;
  end;
end;

procedure Tfrm_main.dxbrbtn23Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(Frm_Produto) then
  begin
    dxRibbon1.ShowTabGroups := false;
    Frm_Produto := TFrm_Produto.Create(nil);
    Frm_Produto.showmodal;
  end;
end;

procedure Tfrm_main.dxbrbtn24Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.BTN_c_fornecedorClick(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(Frm_fornecedor) then
  begin
    dxRibbon1.ShowTabGroups := false;
    with Frm_fornecedor do
    begin
      Frm_fornecedor := TFrm_fornecedor.Create(nil);
      Visible := false;
      showmodal;
      Close;
    end;
  end;
  dxRibbon1.ShowTabGroups := True;
end;

procedure Tfrm_main.dxbrbtn30Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn31Click(Sender: TObject);
begin
  manworking;
  // if not u_funcoes.VerificaAberta(Frm_cad_historico) then
  // begin
  // dxRibbon1.ShowTabGroups := false;
  // with Frm_cad_historico do
  // begin
  // Frm_cad_historico := TFrm_cad_historico.Create(nil);
  // TIPO_HISTORICO := thFinanceiro;
  // Visible := false;
  // ShowModal;
  // Close;
  // end;
  // end;
  // dxRibbon1.ShowTabGroups := True;
end;

procedure Tfrm_main.dxbrbtn32Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn33Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn34Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn35Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn36Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn37Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn38Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn39Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn47Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn48Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn49Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn51Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn52Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn53Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn54Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn55Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn57Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn58Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn59Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn60Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn61Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn62Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn63Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn64Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn69Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.BTN_clientesClick(Sender: TObject);
begin
frm_cliente := Tfrm_cliente.Create(nil);
frm_cliente.ShowModal;
end;

procedure Tfrm_main.BTN_c_colabClick(Sender: TObject);

  procedure abrir_colab;
  begin
    dxRibbon1.ShowTabGroups := false;
    if not u_funcoes.verificaaberta(Frm_Colaborador) then
    begin
      Frm_Colaborador := Tfrm_colaborador.Create(nil);
      Frm_Colaborador.showmodal;
    end;
    dxRibbon1.ShowTabGroups := True;
  end;

begin
  if not TEnv.tuser.isadmin then
  begin
    if TFrm_liberacao.Execute then
      abrir_colab
  end
  else
    abrir_colab;
end;

procedure Tfrm_main.dxbrbtn70Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn71Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn72Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn73Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn74Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn75Click(Sender: TObject);

begin
  // if not IsAdmin then
  // begin
  // if TFrm_liberacao.Execute then
  // begin
  // AbrirEstoque;
  // end;
  // end
  // else
  // begin
  // AbrirEstoque;
  // end;
  manworking;
end;

procedure Tfrm_main.dxbrbtn76Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn77Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn78Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn82Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn83Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn84Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn85Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn86Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.dxbrbtn8Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(Frm_regiao) then
  begin
    dxRibbon1.ShowTabGroups := false;
    Frm_regiao := TFrm_regiao.Create(nil);
    Frm_regiao.showmodal;
    dxRibbon1.ShowTabGroups := True;
  end;
end;

procedure Tfrm_main.dxbrbtn9Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(FRM_cad_atividade) then
  begin
    dxRibbon1.ShowTabGroups := false;
    FRM_cad_atividade := TFRM_cad_atividade.Create(nil);
    FRM_cad_atividade.showmodal;
    dxRibbon1.ShowTabGroups := True;
  end;
end;

procedure Tfrm_main.dxRibbon1TabChanged(Sender: TdxCustomRibbon);
begin
  // Não pedir senha do administrador para o usuário master
  if UsuarioMASTER then
    exit;


  if dxRibbon1Tab2.Active then
    if not TEnv.tuser.isadmin then
    begin
      if TFrm_liberacao.systemUsersOnly then
        dxRibbon1Tab2.Active := True
      else
      begin
        dxRibbon1Tab2.Active := false;
        dxRibbon1Tab1.Active := True;
        TFrm_liberacao.Close;
      end;
    end
    else
      dxRibbon1Tab2.Active := True;
      chkPARAMETROS;
end;

procedure Tfrm_main.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  TFunctions.write_Log('Sistema Finalizado!');

  if TFunctions.isRunning(extractfilename(tdir.SMC_SERVICOS.exe_old)) then
    TFunctions.KillProcess(extractfilename(tdir.SMC_SERVICOS.exe_old));

  Action := cafree;
  self := nil;
  Application.Terminate;

end;

procedure Tfrm_main.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := TDialogs.wnconfirmacao('SMC LIGHT', slinebreak + 'Deseja fechar o sistema ?', 16);
end;

procedure Tfrm_main.FormCreate(Sender: TObject);
begin
  if TFrm_Login.Execute then
  begin
    Application.Run;
    EnviarArquivosFiscais;
    vencimentocertificado;
  end
  else
    Application.Terminate;

end;

procedure Tfrm_main.FormShow(Sender: TObject);
    function CaixaValido: Boolean;
    begin
         Result := (simplequery('SELECT Situacao FROM Caixa where id = '+IntToStr(ID_CAIXA)).Fields[0].AsString = 'A');
    end;
var
  meuini: tinifile;
begin
     dxRibbon1.ActiveTab := dxRibbon1Tab1;
     try
        try
           barra_status.Panels[0].Text := 'Usuário: ' + TEnv.tuser.name;
           barra_status.Panels[1].Text := 'Sistema: ' + ExtractFilePath(Application.ExeName);
           barra_status.Panels[2].Text := concat('BD: ', TEnv.Database.local.server, '@', TEnv.Database.local.Database);
           barra_status.Panels[5].Text := TEnv.MachineName + '@' + TEnv.getIp(TEnv.MachineName);
        except
          on e: exception do
             TFunctions.write_Log(e.Message + 'Erro ao buscar configurações padrões tela inicial');
          end;
     finally
        if TEnv.Core.isDebug then
        begin
             lbl_empresa.Caption := 'Seu sistema está sendo executado em versão de testes!' + slinebreak + 'Evite emitir documentos fiscais em modo de Produção.';
             lbl_empresa.Font.Color := clred;
        end
        else
            lbl_empresa.Caption := getNomeFantasia;
     end;

     try
        if simplequery('SELECT Coalesce(Id,0) FROM Caixa where Situacao = '+QuotedStr('A')+' AND PDV = '+QuotedStr(FormatFloat('000',NumeroTerminal))) <> nil then
           ID_CAIXA := simplequery('SELECT Coalesce(Id,0) FROM Caixa where Situacao = '+QuotedStr('A')+' AND PDV = '+QuotedStr(FormatFloat('000',NumeroTerminal))).Fields[0].AsInteger;
     except
        ID_CAIXA := 0;
     end;

     if TEnv.Core.pdvOnly then
     begin
          if (simplequery('SELECT FINAN_C_ABR_FECH FROM PARAMETROS_MODULAR').Fields[0].AsString = m_true) then
          begin
               if (ID_CAIXA = 0) or (not CaixaValido) then
                  openCaixa;

               if ID_CAIXA > 0 then
                  openPDV;
          end
          else
              openPDV;
     end;

     chkPARAMETROS;
     mde_button := csCreate;
end;

procedure Tfrm_main.Produtos2Click(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_main.RecebimentoClick(Sender: TObject);
begin
frm_caixa_recebimento := Tfrm_caixa_recebimento.Create(nil);
frm_caixa_recebimento.ShowModal;
end;

procedure Tfrm_main.rel_lucratividade;
var
  dt_1, dt_2: tdate;
  showreport: Boolean;
begin
  dt_1 := 0;
  dt_2 := 0;
  if not verificaaberta(frm_rel_gen_periodo) then
  begin
    frm_rel_gen_periodo := tfrm_rel_gen_periodo.Create('Lucratividade');
    frm_rel_gen_periodo.showmodal;
    dt_1 := frm_rel_gen_periodo.edt_dt_inicio.Date;
    dt_2 := frm_rel_gen_periodo.edt_dt_fim.Date;
    showreport := frm_rel_gen_periodo.m_sr;
    frm_rel_gen_periodo.free;
  end;

  if showreport then
    TFRM_relatorio.Create(nil).Venda_Lucratividade(dt_1, dt_2).Close;
  // manworking;
end;


end.
