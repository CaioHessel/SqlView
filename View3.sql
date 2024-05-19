CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `produtosfornecedoresmarcas` AS
    SELECT 
        `p`.`prd_nome` AS `Produto`,
        `f`.`frn_nome` AS `Fornecedor`,
        `m`.`mrc_nome` AS `Marca`
    FROM
        ((`produtos` `p`
        JOIN `fornecedores` `f` ON ((`p`.`prd_id` = `f`.`frn_id`)))
        JOIN `marcas` `m` ON ((`m`.`mrc_id` = `p`.`prd_id`)))