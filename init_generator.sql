CREATE TABLE call_names (
                            call_id varchar NOT NULL,
                            CONSTRAINT call_names_pk PRIMARY KEY (call_id)
);

CREATE TABLE transactions (
                              transaction_id serial4 NOT NULL,
                              msisdn int8 NULL,
                              msisdn_to int8 NULL,
                              call_id varchar NULL,
                              unix_start int4 NULL,
                              unix_end int4 NULL,
                              CONSTRAINT transactions_pk PRIMARY KEY (transaction_id)
);

ALTER TABLE transactions ADD CONSTRAINT transactions_call_names_fk FOREIGN KEY (call_id) REFERENCES call_names(call_id) ON DELETE SET NULL ON UPDATE CASCADE;

CREATE TABLE cdr_abonents (
                              msisdn int8 NOT NULL,
                              CONSTRAINT all_abonents_pk PRIMARY KEY (msisdn)
);

INSERT INTO call_names (call_id) VALUES('01');
INSERT INTO call_names (call_id) VALUES('02');

INSERT INTO cdr_abonents (msisdn) VALUES(7968969935);
INSERT INTO cdr_abonents (msisdn) VALUES(74571938267);
INSERT INTO cdr_abonents (msisdn) VALUES(71364416478);
INSERT INTO cdr_abonents (msisdn) VALUES(7747873230);
INSERT INTO cdr_abonents (msisdn) VALUES(74982406633);
INSERT INTO cdr_abonents (msisdn) VALUES(787845253770);
INSERT INTO cdr_abonents (msisdn) VALUES(74374224157);
INSERT INTO cdr_abonents (msisdn) VALUES(75326984736);
INSERT INTO cdr_abonents (msisdn) VALUES(76168793160);
INSERT INTO cdr_abonents (msisdn) VALUES(79298674093);