
-- creazione utenti
INSERT INTO `SHIFT_MANAGER`.`UTENTI` (`NOME`, `COGNOME`) VALUES ('Luca', 'Mori');
INSERT INTO `SHIFT_MANAGER`.`UTENTI` (`NOME`, `COGNOME`) VALUES ('Daniel', 'Bonfanti');
INSERT INTO `SHIFT_MANAGER`.`UTENTI` (`NOME`, `COGNOME`) VALUES ('Luca', 'Gilardi');
INSERT INTO `SHIFT_MANAGER`.`UTENTI` (`NOME`, `COGNOME`) VALUES ('Andrea', 'Scroppo');
INSERT INTO `SHIFT_MANAGER`.`UTENTI` (`NOME`, `COGNOME`) VALUES ('Michele', 'Torrentino');
INSERT INTO `SHIFT_MANAGER`.`UTENTI` (`NOME`, `COGNOME`) VALUES ('Simone', 'Greco');
INSERT INTO `SHIFT_MANAGER`.`UTENTI` (`NOME`, `COGNOME`) VALUES ('Raffaele', 'Tufano');
INSERT INTO `SHIFT_MANAGER`.`UTENTI` (`NOME`, `COGNOME`) VALUES ('Marco', 'Cattaldo');
INSERT INTO `SHIFT_MANAGER`.`UTENTI` (`NOME`, `COGNOME`) VALUES ('Danilo', 'Cattaldo');
INSERT INTO `SHIFT_MANAGER`.`UTENTI` (`NOME`, `COGNOME`) VALUES ('Angelita', 'Cattaldo');
INSERT INTO `SHIFT_MANAGER`.`UTENTI` (`NOME`, `COGNOME`) VALUES ('Chiara', 'Nava');

-- creazione clienti
INSERT INTO `SHIFT_MANAGER`.`CLIENTI` (`NOME`) VALUES ('MAZZONI');
INSERT INTO `SHIFT_MANAGER`.`CLIENTI` (`NOME`) VALUES ('RIBONI');
INSERT INTO `SHIFT_MANAGER`.`CLIENTI` (`NOME`) VALUES ('GIEMMEPI');
INSERT INTO `SHIFT_MANAGER`.`CLIENTI` (`NOME`) VALUES ('MAZZON');
INSERT INTO `SHIFT_MANAGER`.`CLIENTI` (`NOME`) VALUES ('RIBON');
INSERT INTO `SHIFT_MANAGER`.`CLIENTI` (`NOME`) VALUES ('GIEMEP');
INSERT INTO `SHIFT_MANAGER`.`CLIENTI` (`NOME`) VALUES ('MAZZOII');
INSERT INTO `SHIFT_MANAGER`.`CLIENTI` (`NOME`) VALUES ('RIBONI');
INSERT INTO `SHIFT_MANAGER`.`CLIENTI` (`NOME`) VALUES ('GIEMMPII');
INSERT INTO `SHIFT_MANAGER`.`CLIENTI` (`NOME`) VALUES ('MAZZNI');
INSERT INTO `SHIFT_MANAGER`.`CLIENTI` (`NOME`) VALUES ('RIBOI');
INSERT INTO `SHIFT_MANAGER`.`CLIENTI` (`NOME`) VALUES ('GIMMEPI');
INSERT INTO `SHIFT_MANAGER`.`CLIENTI` (`NOME`) VALUES ('MAZON');
INSERT INTO `SHIFT_MANAGER`.`CLIENTI` (`NOME`) VALUES ('RBON');
INSERT INTO `SHIFT_MANAGER`.`CLIENTI` (`NOME`) VALUES ('GIEMEP');
INSERT INTO `SHIFT_MANAGER`.`CLIENTI` (`NOME`) VALUES ('MAONII');
INSERT INTO `SHIFT_MANAGER`.`CLIENTI` (`NOME`) VALUES ('RINII');
INSERT INTO `SHIFT_MANAGER`.`CLIENTI` (`NOME`) VALUES ('GIMEPII');

-- creazione commessa
INSERT INTO `SHIFT_MANAGER`.`COMMESSE` (`NOME`,`CLIENTE_ID`)VALUES('FILIPPINE',1);
INSERT INTO `SHIFT_MANAGER`.`COMMESSE` (`NOME`,`CLIENTE_ID`)VALUES('SAPONE',1);
INSERT INTO `SHIFT_MANAGER`.`COMMESSE` (`NOME`,`CLIENTE_ID`)VALUES('TSUNE',2);
INSERT INTO `SHIFT_MANAGER`.`COMMESSE` (`NOME`,`CLIENTE_ID`)VALUES('SIEMENS',2);
INSERT INTO `SHIFT_MANAGER`.`COMMESSE` (`NOME`,`CLIENTE_ID`)VALUES('PELLE',3);
INSERT INTO `SHIFT_MANAGER`.`COMMESSE` (`NOME`,`CLIENTE_ID`)VALUES('STOFFA',3);
INSERT INTO `SHIFT_MANAGER`.`COMMESSE` (`NOME`,`CLIENTE_ID`)VALUES('PLASTICA',3);


-- creazione rapporto di lavoro 
INSERT INTO `SHIFT_MANAGER`.`RESOCONTO_LAVORO`
(`UTENTE_ID`,`DATA_INTERVENTO`,`TOTALE_LAVORO`,`TOTALE_VIAGGIO`,`SPESE`,`KM`,`TIPOLOGIA_LAVORO`,`COMMESSA_ID`) VALUES (1,NOW(),5,2,0,30,1,1);
INSERT INTO `SHIFT_MANAGER`.`RESOCONTO_LAVORO`
(`UTENTE_ID`,`DATA_INTERVENTO`,`TOTALE_LAVORO`,`TOTALE_VIAGGIO`,`SPESE`,`KM`,`TIPOLOGIA_LAVORO`,`COMMESSA_ID`) VALUES (1,NOW(),3,2,0,0,0,2);
INSERT INTO `SHIFT_MANAGER`.`RESOCONTO_LAVORO`
(`UTENTE_ID`,`DATA_INTERVENTO`,`TOTALE_LAVORO`,`TOTALE_VIAGGIO`,`SPESE`,`KM`,`TIPOLOGIA_LAVORO`,`COMMESSA_ID`) VALUES (2,NOW(),5,2,0,30,1,1);
INSERT INTO `SHIFT_MANAGER`.`RESOCONTO_LAVORO`
(`UTENTE_ID`,`DATA_INTERVENTO`,`TOTALE_LAVORO`,`TOTALE_VIAGGIO`,`SPESE`,`KM`,`TIPOLOGIA_LAVORO`,`COMMESSA_ID`) VALUES (2,NOW(),3,2,0,0,0,3);
INSERT INTO `SHIFT_MANAGER`.`RESOCONTO_LAVORO`
(`UTENTE_ID`,`DATA_INTERVENTO`,`TOTALE_LAVORO`,`TOTALE_VIAGGIO`,`SPESE`,`KM`,`TIPOLOGIA_LAVORO`,`COMMESSA_ID`) VALUES (1,NOW(),5,2,0,30,1,2);
INSERT INTO `SHIFT_MANAGER`.`RESOCONTO_LAVORO`
(`UTENTE_ID`,`DATA_INTERVENTO`,`TOTALE_LAVORO`,`TOTALE_VIAGGIO`,`SPESE`,`KM`,`TIPOLOGIA_LAVORO`,`COMMESSA_ID`) VALUES (1,NOW(),3,2,0,0,0,1);
INSERT INTO `SHIFT_MANAGER`.`RESOCONTO_LAVORO`
(`UTENTE_ID`,`DATA_INTERVENTO`,`TOTALE_LAVORO`,`TOTALE_VIAGGIO`,`SPESE`,`KM`,`TIPOLOGIA_LAVORO`,`COMMESSA_ID`) VALUES (2,NOW(),5,2,0,30,1,1);
INSERT INTO `SHIFT_MANAGER`.`RESOCONTO_LAVORO`
(`UTENTE_ID`,`DATA_INTERVENTO`,`TOTALE_LAVORO`,`TOTALE_VIAGGIO`,`SPESE`,`KM`,`TIPOLOGIA_LAVORO`,`COMMESSA_ID`) VALUES (2,NOW(),3,2,0,0,0,1);



-- creazione di un rapportino
	-- inserimento rapportino
INSERT INTO `SHIFT_MANAGER`.`RAPPORTINI`
(`PATH`) VALUES ('/home/luca/rapportini/mazzoni/gennaio/05_Mori_Bonfanti.pdf');
SET @RAP_ID = (SELECT LAST_INSERT_ID());
SELECT @RAP_ID;
UPDATE RESOCONTO_LAVORO SET RAPPORTINO_ID = 2 WHERE RESOCONTO_ID = 1 OR RESOCONTO_ID = 2;
select * from  RESOCONTO_LAVORO;
select * from SCONTRINI;

select * from  RAPPORTINI ra
JOIN RESOCONTO_LAVORO re ON re.RAPPORTINO_ID = ra.RAPPORTINO_ID;


select * from UTENTI;
select * from CLIENTI;
select * from COMMESSE;
select co.COMMESSA_ID, cl.NOME, co.NOME from COMMESSE co
JOIN CLIENTI cl ON cl.CLIENTE_ID = co.CLIENTE_ID
WHERE cl.NOME like '%%';

select * from `SHIFT_MANAGER`.`RESOCONTO_LAVORO`;
select * from SCONTRINI order by SCONTRINO_ID desc;
/*
select * from SHIFT_MANAGER.UTENTI2RAPPORTINO u2r
JOIN RAPPORTINO r ON r.RAPPORTINO_ID = u2r.RAPPORTINO_ID
JOIN RESOCONTO_LAVORO l ON l.RAPPORTINO_ID = r.RAPPORTINO_ID
WHERE u2r.UTENTE_ID = 2;
