Class TreinamentoIS.Data.Curso Extends (%Persistent, %XML.Adaptor)
{

Property Nome As %String(MAXLEN = 200) [ SqlColumnNumber = 2 ];

Property Preco As %Numeric [ SqlColumnNumber = 3 ];

Property Duracao As %Integer [ SqlColumnNumber = 4 ];

Storage Default
{
<Data name="CursoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Nome</Value>
</Value>
<Value name="3">
<Value>Preco</Value>
</Value>
<Value name="4">
<Value>Duracao</Value>
</Value>
</Data>
<DataLocation>^TreinamentoIS.Data.CursoD</DataLocation>
<DefaultData>CursoDefaultData</DefaultData>
<IdLocation>^TreinamentoIS.Data.CursoD</IdLocation>
<IndexLocation>^TreinamentoIS.Data.CursoI</IndexLocation>
<StreamLocation>^TreinamentoIS.Data.CursoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
