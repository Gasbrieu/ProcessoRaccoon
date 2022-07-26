SELECT Funcionarios.PrimeiroNome, Funcionarios.Funcao, Departamentos.NomeDoDepartamento  
FROM Funcionarios
INNER JOIN Departamentos
ON Departamentos.Codigo = Funcionarios.CodigoDepartamento
WHERE Funcionarios.CodigoFuncaoFuncionarios = Departamentos.CodigoGerente OR Funcionarios.CodigoFuncaoFuncionarios = Departamentos.CodigoQueIdentificaGerenciaDoDepart OR REGEXP_CONTAINS(Funcionarios.Funcao, r'(?i)Supervisor|Gerente')
ORDER BY Departamentos.NomeDoDepartamento

--Regex utilizado no padrão do BigQuery
