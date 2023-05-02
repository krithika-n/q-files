// loadTables.q is loaded into memory before running this script

update isRainy:notes like "* Rain*" from `weather // adding a boolean Rain column 

update isSnow:notes like "*Snow*" from `weather // adding boolean Snow column

update isSunny:notes like "*Clear*" from `weather // adding boolean Sun/Clear conditions column

update isCloudy:notes like "*Cloud*" from `weather // adding boolean Cloud conditions column