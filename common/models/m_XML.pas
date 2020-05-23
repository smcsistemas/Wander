unit m_XML;

interface

uses
  xmlintf, xmldoc, Classes, sysutils, variants;

type
  TXML = class(Tobject)
  private
  var
    M_XMLDOC: IXMLDocument;
    ndValue: IXMLNode;
    function FillArray(axml: TXML; aTagName: string): TArray<TXML>;
    function ValueOf: string;
    function getNode(tagName: string): IXMLNode;

  public
    constructor Create(aCont: string = ''); overload;
    constructor Load(aFilePath: string);
    function Tag(aTagName: string): TXML; overload;
    function Tag(aTagName, aAttrName, aAttrValue: string): TXML; overload;
    function Tags(aTagName: string): TArray<TXML>; overload;
    function Tags(aTagName, aAttrName, aAttrValue: string): TArray<TXML>; overload;
    function Value(aTagName: string = ''): String; overload;
    function Value(aTagName, aAttributeName, AtributeValue: string): String; overload;
    function attValue(aTagName, aAttributeName: string): String;
    function Values(aTagName: string = ''): TArray<String>;
    procedure Save(aDestination: string);
    function XML: string;
    function rootIs(aTagName: string): boolean;

  private type
    TXMLList = class(Tobject)
    public
      function Count: Integer;
      procedure First;
      procedure Last;
      procedure Next;
      function This: TXML;

    var
      rootXML: TXML;
    end;

  public
  var
    TagList: TXMLList;

  end;

implementation

{ TXML }

function TXML.attValue(aTagName, aAttributeName: string): String;
var
  aXmlTag: TXML;
begin
  if aTagName <> '' then
  begin
    aXmlTag := self.Tag(aTagName);
    if aXmlTag <> nil then
    begin
      if aXmlTag.M_XMLDOC.DocumentElement.HasAttribute(aAttributeName) then
        result := aXmlTag.M_XMLDOC.DocumentElement.GetAttributeNS(aAttributeName, '');
    end;
  end;
end;

constructor TXML.Create(aCont: string);
begin
  if aCont <> '' then
  begin
    self.M_XMLDOC := TXMLDocument.Create(nil);
    self.M_XMLDOC.LoadFromXML(aCont);
    TagList := TXMLList.Create;
    TagList.rootXML := self;
  end;
end;

function TXML.FillArray(axml: TXML; aTagName: string): TArray<TXML>;
var
  arrXmls: TArray<TXML>;
  i: Integer;
begin
  arrXmls := nil;
  if axml.TagList.Count > 1 then
  begin
    setLength(arrXmls, axml.TagList.Count);
    axml.TagList.First;
    for i := 0 to axml.TagList.Count - 1 do
    begin
      arrXmls[i] := axml.TagList.This;
      axml.TagList.Next;
    end;
  end;
  result := arrXmls;
end;

function TXML.getNode(tagName: string): IXMLNode;
begin
  if self.rootIs(tagName) then
    result := self.M_XMLDOC.DocumentElement
  else
    result := self.M_XMLDOC.DocumentElement.ChildNodes.Nodes[tagName];
end;

constructor TXML.Load(aFilePath: string);
begin
  if aFilePath <> '' then
  begin
    self.M_XMLDOC := TXMLDocument.Create(nil);
    self.M_XMLDOC.LoadFromFile(aFilePath);
    TagList := TXMLList.Create;
    TagList.rootXML := self;
  end;

end;

function TXML.rootIs(aTagName: string): boolean;
begin
  result := self.M_XMLDOC.DocumentElement.NodeName = aTagName;
end;

procedure TXML.Save(aDestination: string);
begin
  M_XMLDOC.SaveToFile(aDestination);
end;

function TXML.Tag(aTagName, aAttrName, aAttrValue: string): TXML;
var
  i: Integer;
begin
  result := nil;
  ndValue := getNode(aTagName);
  if ndValue <> nil then
    for i := 0 to ndValue.ChildNodes.Count do
      if ndValue.ChildNodes.Nodes[i].Attributes[aAttrName] = aAttrValue then
      begin
        result := TXML.Create(ndValue.ChildNodes.Nodes[i].XML);
        break;
      end;
end;

function TXML.Tag(aTagName: string): TXML;
begin
  result := nil;
  ndValue := getNode(aTagName);
  if ndValue <> nil then
    result := TXML.Create(ndValue.XML);

end;

function TXML.XML: string;
begin
  result := self.M_XMLDOC.XML.Text;
end;

function TXML.Tags(aTagName: string): TArray<TXML>;
begin
  result := FillArray(self, aTagName);
end;

function TXML.Tags(aTagName, aAttrName, aAttrValue: string): TArray<TXML>;
begin

end;

function TXML.Value(aTagName: string): String;
begin

  if aTagName <> '' then
  begin
    if self.Tag(aTagName) <> nil then
    begin
      result := TXML.Create(self.Tag(aTagName).XML).ValueOf;
    end;
  end
  else
    result := self.ValueOf;

end;

function TXML.Value(aTagName, aAttributeName, AtributeValue: string): String;
var
  aXmlTag: TXML;
begin

  if aTagName <> '' then
  begin
    aXmlTag := self.Tag(aTagName);
    if aXmlTag <> nil then
    begin
      if aXmlTag.M_XMLDOC.DocumentElement.GetAttributeNS(aAttributeName, '') <> null then
        result := aXmlTag.M_XMLDOC.DocumentElement.AttributeNodes.Nodes[aAttributeName].Text;
    end;
  end;
end;

function TXML.ValueOf: string;
begin
  result := self.M_XMLDOC.DocumentElement.Text;
end;

function TXML.Values(aTagName: string): TArray<String>;
begin

end;

{ TXML.TXMLlist }

function TXML.TXMLList.Count: Integer;
begin
  if self.rootXML.M_XMLDOC <> nil then
    result := self.rootXML.M_XMLDOC.DocumentElement.ChildNodes.Count
  else
    result := 0;
end;

procedure TXML.TXMLList.First;
begin
  if self.rootXML.M_XMLDOC <> nil then
    self.rootXML.ndValue := self.rootXML.M_XMLDOC.DocumentElement.ChildNodes.First;
end;

procedure TXML.TXMLList.Last;
begin
  if self.rootXML.M_XMLDOC <> nil then
    self.rootXML.ndValue := self.rootXML.M_XMLDOC.DocumentElement.ChildNodes.Last;
end;

procedure TXML.TXMLList.Next;
begin
  if self.rootXML.M_XMLDOC <> nil then
    self.rootXML.ndValue := self.rootXML.ndValue.NextSibling;
end;

function TXML.TXMLList.This: TXML;
begin
  result := nil;
  if self.rootXML.ndValue <> nil then
    result := TXML.Create(self.rootXML.ndValue.XML);
end;

end.
