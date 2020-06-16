unit global_variables;
{
================================================================================
|   DATA   |DESENVOLVEDOR|HISTORICO DA ALTERACAO DO CODIGO                     |
|----------|-------------|-----------------------------------------------------|
|16/03/2020|WANDER       |Criada esta unit para concentrar todas as variáveis  |
|        28|             |globais do sistema                                   |
================================================================================

}

interface

var
   // Flag de versao de base de dados antiga
   g_Base_de_Dados_Antiga_e_Nunca_Atualizada:Boolean;

   // Número de um movimento
   g_Numero_do_Movimento:Integer;

   // Define que documento fiscal emitirá
   // 0 = NFe
   // 1 = NFCe
   // 2 = MDFe
   // 3 = SAT
   g_NFE_ou_NFCe:Integer;


   // Define o tipo de emissão da NFe
   // 0 = Normal
   // 1 = Contingência
   // 2 = SCAN
   // 3 = DPEC
   // 4 = FSDA
   // 5 = SVCAN
   // 6 = SVCRS
   // 7 = SVCSP
   // 8 = Off line
   g_NFE_tpEmis:Integer;

   // Data e hora que entrou em Contingência...
   g_NFe_Contigencia_dhCont : tDateTime;

   //Justificativa da entrada em Contingência
   g_NFe_Contigencia_xJust : String;


implementation

end.
