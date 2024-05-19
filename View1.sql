CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `precoacimamedia` AS
    SELECT 
        `p`.`prd_nome` AS `Produto`,
        `p`.`prd_valor` AS Preço,
        (SELECT 
                AVG(p2.prd_valor)
            FROM
                produtos p2) AS Média
    FROM
        produtos p
    WHERE
        (`p`.prd_valor > (SELECT 
                AVG(p2.prd_valor)
            FROM
                produtos p2))