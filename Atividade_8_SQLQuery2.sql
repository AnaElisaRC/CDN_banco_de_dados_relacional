-- Atividade 8

-- 1. Exibir o nome, sobrenome e o salário dos funcionários que recebem mais de 2500,00.
SELECT primeiro_nome, ultimo_nome, salario
FROM Funcionario
WHERE salario > 2500.00;

-- 2. Exibir o nome, sobrenome e código do setor para o número de matrícula = 7
SELECT primeiro_nome, ultimo_nome, Cod_setor
FROM Funcionario
WHERE NR_matricula = 7;

-- 3. Exibir o nome, sobrenome e o salário dos funcionários cuj


o salário não esteja na faixa de 1500,00 a 3000,00
SELECT primeiro_nome, ultimo_nome, salario
FROM Funcionario
WHERE salario < 1500.00 OR salario > 3000.00;

-- 4. Exibir o nome, sobrenome, código do setor e data de admissão dos funcionários admitidos desde 2009. Ordenar pela data de admissão.
SELECT primeiro_nome, ultimo_nome, Cod_setor, data_admissao
FROM Funcionario
WHERE data_admissao >= '2009-01-01'
ORDER BY data_admissao;

-- 5. Exibir os funcionários que pertençam ao setor de TI e RH por ordem alfabética
SELECT f.primeiro_nome, f.ultimo_nome
FROM Funcionario f
JOIN Setor s ON f.Cod_setor = s.Cod_setor
WHERE s.nome_setor IN ('TI', 'RH')
ORDER BY f.primeiro_nome, f.ultimo_nome;

-- 6. Exibir os nomes dos funcionários que tenham um "a" como a segunda letra do primeiro nome
SELECT primeiro_nome
FROM Funcionario
WHERE SUBSTRING(primeiro_nome, 2, 1) = 'a';

-- 7. Exibir os nomes dos funcionários que tenham uma letra "a" e uma letra "e" no primeiro nome
SELECT primeiro_nome
FROM Funcionario
WHERE primeiro_nome LIKE '%a%' AND primeiro_nome LIKE '%e%';

-- 8. Exibir os dados dos funcionários que pertençam ao setor 2, por ordem de nome
SELECT *
FROM Funcionario
WHERE Cod_setor = 2
ORDER BY primeiro_nome, ultimo_nome;

-- 9. Exibir os funcionários que pertençam aos setores 2 e 5
SELECT primeiro_nome, ultimo_nome
FROM Funcionario
WHERE Cod_setor IN (2, 5);

-- 10. Exibir os funcionários que tenham salário maior que 2300 e pertençam ao setor 3
SELECT primeiro_nome, ultimo_nome
FROM Funcionario
WHERE salario > 2300 AND Cod_setor = 3;

-- 11. Consultas adicionais:
-- a) Exibir os códigos de setores exclusivos na tabela Funcionario
SELECT DISTINCT Cod_setor
FROM Funcionario;

-- b) Exibir o sobrenome concatenado com o código do setor, separado por vírgula e espaço, nomeando a coluna como "Empregado e Setor"
SELECT ultimo_nome + ', ' + CAST(Cod_setor AS VARCHAR) AS [Empregado e Setor]
FROM Funcionario;
