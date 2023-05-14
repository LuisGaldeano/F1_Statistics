-- Selects
SELECT * FROM circuit;
SELECT * FROM constructor;
SELECT * FROM constructor_results;
SELECT * FROM constructor_standings;
SELECT * FROM driver_standings;
SELECT * FROM status_table;
SELECT * FROM sprint_results;
SELECT * FROM seasons;
SELECT * FROM races;
SELECT * FROM results;
SELECT * FROM drivers;
SELECT * FROM lap_times;

-- Añado las Foreing keys
ALTER TABLE constructor_results ADD CONSTRAINT fk_raceId FOREIGN KEY (raceId) REFERENCES races(raceId);
ALTER TABLE constructor_results ADD CONSTRAINT fk_constructorId FOREIGN KEY (constructorId) REFERENCES constructor(constructorId);
ALTER TABLE constructor_standings ADD CONSTRAINT fk_cs_constructorId FOREIGN KEY (constructorId) REFERENCES constructor(constructorId);
ALTER TABLE constructor_standings ADD CONSTRAINT fk_cs_raceId FOREIGN KEY (raceId) REFERENCES races(raceId);
ALTER TABLE driver_standings ADD CONSTRAINT fk_ds_raceId FOREIGN KEY (raceId) REFERENCES races(raceId);
ALTER TABLE driver_standings ADD CONSTRAINT fk_ds_driverId FOREIGN KEY (driverId) REFERENCES drivers(driverId);
ALTER TABLE lap_times ADD CONSTRAINT fk_lt_driverId FOREIGN KEY (driverId) REFERENCES drivers(driverId);
ALTER TABLE pit_stops ADD CONSTRAINT fk_ps_driverId FOREIGN KEY (driverId) REFERENCES drivers(driverId);
ALTER TABLE qualifying ADD CONSTRAINT fk_q_driverId FOREIGN KEY (driverId) REFERENCES drivers(driverId);
ALTER TABLE races ADD CONSTRAINT fk_r_circuitsId FOREIGN KEY (circuitId) REFERENCES circuit(circuitId);
ALTER TABLE results ADD CONSTRAINT fk_res_raceId FOREIGN KEY (raceId) REFERENCES races(raceId);
ALTER TABLE results ADD CONSTRAINT fk_res_driverId FOREIGN KEY (driverId) REFERENCES drivers(driverId);
ALTER TABLE results ADD CONSTRAINT fk_res_constructorId FOREIGN KEY (constructorId) REFERENCES constructor(constructorId);
ALTER TABLE results ADD CONSTRAINT fk_res_statusId FOREIGN KEY (StatusId) REFERENCES status_table(statusId);
ALTER TABLE sprint_results ADD CONSTRAINT fk_spr_raceId FOREIGN KEY (raceId) REFERENCES races(raceId);
ALTER TABLE sprint_results ADD CONSTRAINT fk_spr_driverId FOREIGN KEY (driverId) REFERENCES drivers(driverId);
ALTER TABLE sprint_results ADD CONSTRAINT fk_spr_constructorId FOREIGN KEY (constructorId) REFERENCES constructor(constructorId);
ALTER TABLE sprint_results ADD CONSTRAINT fk_spr_statusId FOREIGN KEY (StatusId) REFERENCES status_table(statusId);
