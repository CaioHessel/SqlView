CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `verificaestoque` AS
    SELECT 
        `produtos`.`prd_nome` AS `Produto`,
        `produtos`.`prd_qnt_estoque` AS `Estoque atual`,
        `produtos`.`prd_estoque_min` AS `Estoque minimo`
    FROM
        `produtos`
    WHERE
        (`produtos`.`prd_qnt_estoque` < `produtos`.`prd_estoque_min`)