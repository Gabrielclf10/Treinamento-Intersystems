Class TreinamentoIS.Data.Turma Extends (%Persistent, %XML.Adaptor)
{

Property Instrutor As TreinamentoIS.Data.Instrutor [ SqlColumnNumber = 2 ];

Property DataInicio As %Date [ SqlColumnNumber = 3 ];

Property Status As %String [ SqlColumnNumber = 4 ];

Property Alunos As list Of TreinamentoIS.Data.Aluno [ SqlColumnNumber = 5 ];

Property Curso As TreinamentoIS.Data.Curso [ SqlColumnNumber = 6 ];

Storage Default
{
<Data name="TurmaDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Instrutor</Value>
</Value>
<Value name="3">
<Value>DataInicio</Value>
</Value>
<Value name="4">
<Value>Status</Value>
</Value>
<Value name="5">
<Value>Alunos</Value>
</Value>
<Value name="6">
<Value>Curso</Value>
</Value>
</Data>
<DataLocation>^TreinamentoIS.Data.TurmaD</DataLocation>
<DefaultData>TurmaDefaultData</DefaultData>
<IdLocation>^TreinamentoIS.Data.TurmaD</IdLocation>
<IndexLocation>^TreinamentoIS.Data.TurmaI</IndexLocation>
<StreamLocation>^TreinamentoIS.Data.TurmaS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
