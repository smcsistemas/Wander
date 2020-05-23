unit m_caixa_test;

interface

uses
  TestFramework, m_Caixa, Model, system.SysUtils, v_Exception;

type

  TestTCaixa = class(TTestCase)
  strict private

    FCaixa: TCaixa;
  public

    procedure SetUp; override;
    procedure TearDown; override;

  published

    procedure TestAll;
    procedure TestFind;
    procedure TestGet;
    procedure TestExists;
    procedure TestValidateFields;
    procedure TestHasAny;

  end;

implementation

procedure TestTCaixa.SetUp;
begin

  FCaixa := TCaixa.Create;
  FCaixa.DESCRICAO := 'Caixa01';
  FCaixa.save();

end;

procedure TestTCaixa.TearDown;
begin

  FCaixa.delete;
  FCaixa.Free;
  FCaixa := nil;

end;

procedure TestTCaixa.TestAll;
begin

  check(length(TCaixa.all) > 0);

end;

procedure TestTCaixa.TestExists;
var
  c: TCaixa;
begin

  c := TCaixa.Create();

  c.DESCRICAO := '_find_me_';

  c.save();

  check(TCaixa.exists(FCaixa.ID, ['descricao'], ['_find_me_']));

  c.delete();
  c.destroy();

end;

procedure TestTCaixa.TestFind;
begin

  check(length(TCaixa.find(['descricao'], [FCaixa.DESCRICAO])) > 0);

end;

procedure TestTCaixa.TestGet;
begin

  CheckNotNull(TCaixa.get(['descricao'], [FCaixa.DESCRICAO]));

end;

procedure TestTCaixa.TestHasAny;
var
  c: TCaixa;
begin

  c := TCaixa.Create();
  c.DESCRICAO := '_find_me_';
  c.save();

  check(TCaixa.hasAny(['descricao'], ['_find_me_']));
  CheckFalse(TCaixa.hasAny(['descricao'], ['_do_not_find_me_']));

  c.delete();
  c.destroy();

end;

procedure TestTCaixa.TestValidateFields;
begin

  checkexception(TCaixa.Create().save, EvalidationError);

end;

initialization

RegisterTest(TestTCaixa.Suite);

end.
