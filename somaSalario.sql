SELECT SUM(Salario), nomeDepartamento FROM
(SELECT Funcionarios.Salario AS salario, Departamentos.NomeDoDepartamento AS nomeDepartamento  
FROM Funcionarios
INNER JOIN Departamentos
ON Departamentos.Codigo = Funcionarios.CodigoDepartamento)
GROUP BY nomeDepartamento
ORDER BY nomeDepartamento
