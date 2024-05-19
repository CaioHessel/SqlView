CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `produtosfornecedor` AS
    SELECT 
        `p`.`prd_nome` AS `Produto`, `f`.`frn_nome` AS `Fornecedor`
    FROM
        (`produtos` `p`
        JOIN `fornecedores` `f` ON ((`p`.`prd_id` = `f`.`frn_id`)))