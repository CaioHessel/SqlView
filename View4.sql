CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `produtosmarcas` AS
    SELECT 
        `p`.`prd_nome` AS `Produto`, `m`.`mrc_nome` AS `Marca`
    FROM
        (`produtos` `p`
        JOIN `marcas` `m` ON ((`p`.`prd_id` = `m`.`mrc_id`)))