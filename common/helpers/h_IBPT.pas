unit h_IBPT;

interface

uses System.sysutils, classes, IdStack, inifiles, variants, dateutils, h_db, firedac.comp.client,
     ACBrIBPTax, ACBrBase, ACBrSocket, Forms, u_funcoes, vw_Views, Dialogs;

type
  TIbpt = class(TObject)
  public
        class procedure AtualizaTabela;
  end;

implementation

{ TIbpt }

class procedure TIbpt.AtualizaTabela;
var I : Integer;
    IBPTax : TACBrIBPTax;
    qry, qry2: tfdquery;
    versao,uf,arquivo,semestre,sequencia : string;
begin
     try
          qry := tdb.SimpleQuery('SELECT estado from empresa limit 1');
          uf := qry.Fields[0].AsString;

          qry2 := tdb.SimpleQuery('SELECT versao from ibpt limit 1');
          if qry2 <> nil then
             versao := qry2.Fields[0].AsString;

          IBPTax := TACBrIBPTax.Create(nil);
          if versao <> '' then
          begin
               if MonthOf(now) <= 6 then
                  semestre := '1'
               else
                  semestre := '2';

               if FormatDateTime('yy',now)+'.'+semestre = versao.Substring(0,4) then
               begin
                    if versao.Substring(5,1) = 'A' then
                       sequencia := 'B'
                    else
                       sequencia := 'C';
               end
               else
                   sequencia := 'A';

               arquivo := 'TabelaIBPTax'+uf+FormatDateTime('yy',now)+'.'+semestre+'.'+sequencia+'.csv';
               IBPTax.URLDownload := 'https://raw.githubusercontent.com/SMC1977/TabelaIBPT/master/'+arquivo;
          end
          else
              IBPTax.URLDownload := 'https://raw.githubusercontent.com/SMC1977/TabelaIBPT/master/TabelaIBPTax'+uf+'19.2.B.csv';

          if IBPTax.DownloadTabela then
          begin
               TView.WV_START_SYSTEM.Show(0, IBPTax.Itens.Count, 'Atualizando Tabela IBPT...');

               ExecQuery('TRUNCATE TABLE IBPT');
               for I := 0 to IBPTax.Itens.Count - 1 do
               begin
                    if (IBPTax.Itens[I].Tabela = tabNCM) or
                       (IBPTax.Itens[I].Tabela = tabNBS) then
                    begin
                         execquery('insert into ibpt(NCM,ALIQ_MUNICIPAL,ALIQ_ESTADUAL,ALIQ_FEDERAL,ALIQ_IMPORTADO,VERSAO) values(:p1, :p2, :p3, :p4, :p5, :p6)',
                                   [IBPTax.Itens[I].NCM,
                                    IBPTax.Itens[I].Municipal,
                                    IBPTax.Itens[I].Estadual,
                                    IBPTax.Itens[I].FederalNacional,
                                    IBPTax.Itens[I].FederalImportado,
                                    IBPTax.VersaoArquivo]);
                     end;

                     TView.WV_START_SYSTEM.Show(I, 'Atualizando Tabela IBPT...');
               end;

               TView.WV_START_SYSTEM.Show(0, 100, 'Concluido atualização IBPT');
          end;

          TView.WV_START_SYSTEM.Close;
     except
        TView.WV_START_SYSTEM.Close;
     end;
end;

end.
