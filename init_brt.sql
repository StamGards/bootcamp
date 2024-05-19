    CREATE TABLE tariffs (
                            tariff_id varchar NOT NULL,
                            tariff_name varchar NULL,
                            num_of_minutes int4 NULL,
                            price_incoming_calls float4 NULL,
                            price_outcoming_calls float4 NULL,
                            price_outcoming_calls_camo float4 NULL,
                            price_of_period float4 NULL,
                            internet_traffic int4 NULL,
                            internet_max_speed int4 NULL,
                            num_of_incoming_sms int4 NULL,
                            num_of_outcoming_sms int4 NULL,
                            price_incoming_sms float4 NULL,
                            price_outcoming_sms float4 NULL,
                            other_info jsonb NULL,
                            CONSTRAINT tariffs_pk PRIMARY KEY (tariff_id),
                            CONSTRAINT tariffs_unique UNIQUE (tariff_name)
    );

    CREATE TABLE users (
                        msisdn int8 NOT NULL,
                        tariff_id varchar NULL,
                        money_balance float4 NULL,
                        CONSTRAINT users_pk PRIMARY KEY (msisdn),
                        CONSTRAINT users_tariffs_fk FOREIGN KEY (tariff_id) REFERENCES tariffs(tariff_id) ON DELETE SET NULL ON UPDATE CASCADE
    );

    CREATE TABLE users_minutes (
                                msisdn int8 NOT NULL,
                                tariff_id varchar NULL,
                                used_minutes_in int4 NULL,
                                used_minutes_out int4 NULL,
                                CONSTRAINT users_minutes_pk PRIMARY KEY (msisdn),
                                CONSTRAINT users_minutes_tariffs_fk FOREIGN KEY (tariff_id) REFERENCES tariffs(tariff_id) ON DELETE SET NULL ON UPDATE CASCADE,
                                CONSTRAINT users_minutes_users_fk FOREIGN KEY (msisdn) REFERENCES users(msisdn) ON DELETE SET NULL ON UPDATE CASCADE
    );

    INSERT INTO tariffs (tariff_id, tariff_name, num_of_minutes, price_incoming_calls, price_outcoming_calls, price_outcoming_calls_camo, price_of_period, internet_traffic, internet_max_speed, num_of_incoming_sms, num_of_outcoming_sms, price_incoming_sms, price_outcoming_sms, other_info) VALUES('11', 'Classic', 0, 0, 1.5, 2.5, 0, 0, 0, 0, 0, 0, 0, '{}');
    INSERT INTO tariffs (tariff_id, tariff_name, num_of_minutes, price_incoming_calls, price_outcoming_calls, price_outcoming_calls_camo, price_of_period, internet_traffic, internet_max_speed, num_of_incoming_sms, num_of_outcoming_sms, price_incoming_sms, price_outcoming_sms, other_info) VALUES('12', 'Monthly', 50, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '{}');

    INSERT INTO users (msisdn, tariff_id, money_balance) VALUES(7968969935, '11', 200);
    INSERT INTO users (msisdn, tariff_id, money_balance) VALUES(74571938267, '11', 100);
    INSERT INTO users (msisdn, tariff_id, money_balance) VALUES(71364416478, '12', 10);
    INSERT INTO users (msisdn, tariff_id, money_balance) VALUES(7747873230, '12', 100);
    INSERT INTO users (msisdn, tariff_id, money_balance) VALUES(74982406633, '12', 200);
    INSERT INTO users (msisdn, tariff_id, money_balance) VALUES(787845253771, '11', 1300);
    INSERT INTO users (msisdn, tariff_id, money_balance) VALUES(74374224158, '12', 300);
    INSERT INTO users (msisdn, tariff_id, money_balance) VALUES(75326984737, '12', 300);
    INSERT INTO users (msisdn, tariff_id, money_balance) VALUES(76168793161, '11', 50);
    INSERT INTO users (msisdn, tariff_id, money_balance) VALUES(79298674094, '11', 500);
    INSERT INTO users (msisdn, tariff_id, money_balance) VALUES(79112220001, '11', 100);
    INSERT INTO users (msisdn, tariff_id, money_balance) VALUES(79112220002, '12', 200);
    INSERT INTO users (msisdn, tariff_id, money_balance) VALUES(79112220003, '12', 200);
    INSERT INTO users (msisdn, tariff_id, money_balance) VALUES(79112220004, '11', 100);
    INSERT INTO users (msisdn, tariff_id, money_balance) VALUES(79112220005, '11', 200);