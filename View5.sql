CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `produtosvencidos` AS
    SELECT 
        `p`.`prd_nome` AS `Produto`,
        `p`.`data_validade` AS `Validade`,
        `m`.`mrc_nome` AS `Marca`
    FROM
        (`produtos` `p`
        JOIN `marcas` `m` ON ((`p`.`prd_marca_id` = `m`.`mrc_id`)))
    WHERE
        (`p`.`data_validade` < CURDATE())