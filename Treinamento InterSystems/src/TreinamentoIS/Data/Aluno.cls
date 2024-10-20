Class TreinamentoIS.Data.Aluno Extends (%Persistent, %XML.Adaptor)
{

Property Nome As %String(MAXLEN = 300) [ SqlColumnNumber = 2 ];

Property Matricula As %String(MAXLEN = 50) [ SqlColumnNumber = 3 ];

Property Idade As %Integer [ SqlColumnNumber = 4 ];

Storage Default
{
<Data name="AlunoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Nome</Value>
</Value>
<Value name="3">
<Value>Matricula</Value>
</Value>
<Value name="4">
<Value>Idade</Value>
</Value>
</Data>
<DataLocation>^TreinamentoIS.Data.AlunoD</DataLocation>
<DefaultData>AlunoDefaultData</DefaultData>
<IdLocation>^TreinamentoIS.Data.AlunoD</IdLocation>
<IndexLocation>^TreinamentoIS.Data.AlunoI</IndexLocation>
<StreamLocation>^TreinamentoIS.Data.AlunoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
