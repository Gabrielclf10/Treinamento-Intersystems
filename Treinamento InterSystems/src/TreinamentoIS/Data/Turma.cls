Class TreinamentoIS.Data.Turma Extends (%Persistent, %XML.Adaptor)
{

Property Instrutor As TreinamentoIS.Data.Instrutor [ SqlColumnNumber = 2 ];

Property DataInicio As %Date [ SqlColumnNumber = 3 ];

Property Status As %String [ SqlColumnNumber = 4 ];

Property Alunos As list Of TreinamentoIS.Data.Aluno [ SqlColumnNumber = 5 ];

Property Curso As TreinamentoIS.Data.Curso [ SqlColumnNumber = 6 ];

/// Retorna o status da turma
Method VerificaStatus(curso As %String) As %String [ Language = objectscript ]
{
    set statusTurma = ""

    set sql = "SELECT * FROM TreinamentoIS_Data.Turma WHERE Curso->Nome = "_"'"_curso_"'"
    set result = ##class(%ResultSet).%New()
    set status = result.Prepare(sql)
    set status = result.Execute()

    if result.Next(){
        set statusTurma = result.Get("Status")
    }

    return statusTurma
}

/// Imprime dados da turma
ClassMethod ImprimeTurma(curso As %String) As %String [ Language = objectscript ]
{
    set tSC = $$$OK
    set turma = ""
    set alunos = ""

    try{
        set sql = "SELECT * FROM TreinamentoIS_Data.Turma WHERE Curso->Nome = ?"
        set result = ##class(%SQL.Statement).%New()
        set status = result.%Prepare(sql)
        set sr = result.%Execute(curso)
        if sr.%Next(){
            set idTurma = sr.%Get("ID")
            set turma = ##class(TreinamentoIS.Data.Turma).%OpenId(idTurma)
            set instrutor = turma.Instrutor
            set dataInicio = turma.DataInicio
            set status = turma.Status

            write !,"______________________",!
            write !,"Instrutor:      "_instrutor.Nome
            write !,"Data de Início: "_dataInicio
            write !,"Status:         "_status
            write !,"Alunos: "
            for i = 1:1:turma.Alunos.Count(){
                set aluno = turma.Alunos.GetAt(i)
                write !,"-"
                write !,"Nome:      "_aluno.Nome
                write !,"Matricula: "_aluno.Matricula
                write !,"Idade:     "_aluno.Idade
            }
            write !,"______________________",!
        }

    }catch(exception){
        set tSC = exception.AssStatus()
        set tSC = $System.Status.GetOneErrorText(tSC)
        throw exception
    }
    
    return "ok"
}

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
<ExtentSize>1</ExtentSize>
<IdLocation>^TreinamentoIS.Data.TurmaD</IdLocation>
<IndexLocation>^TreinamentoIS.Data.TurmaI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>3</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="Alunos">
<AverageFieldSize>7</AverageFieldSize>
<OutlierSelectivity>.999999:$lb($lb("1"))</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="Curso">
<AverageFieldSize>3</AverageFieldSize>
<OutlierSelectivity>.999999:1</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="DataInicio">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="Instrutor">
<AverageFieldSize>3</AverageFieldSize>
<OutlierSelectivity>.999999:1</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="Status">
<AverageFieldSize>12</AverageFieldSize>
<OutlierSelectivity>.999999:"Incompleta"</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^TreinamentoIS.Data.TurmaS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
