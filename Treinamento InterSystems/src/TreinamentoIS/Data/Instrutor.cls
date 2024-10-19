Class TreinamentoIS.Data.Instrutor Extends (%Persistent, %XML.Adaptor)
{

Property Nome As %String(MAXLEN = 300) [ SqlColumnNumber = 2 ];

Property Matricula As %String [ SqlColumnNumber = 3 ];

Storage Default
{
<Data name="InstrutorDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Nome</Value>
</Value>
<Value name="3">
<Value>Matricula</Value>
</Value>
</Data>
<DataLocation>^TreinamentoIS.Data.InstrutorD</DataLocation>
<DefaultData>InstrutorDefaultData</DefaultData>
<IdLocation>^TreinamentoIS.Data.InstrutorD</IdLocation>
<IndexLocation>^TreinamentoIS.Data.InstrutorI</IndexLocation>
<StreamLocation>^TreinamentoIS.Data.InstrutorS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
