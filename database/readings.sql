CREATE TABLE readings(
  id serial,
  datetime timestamp,
  device INT,
  sensor INT,
  value float,
  quality_check_id INT,
  PRIMARY KEY (id),
  FOREIGN KEY (quality_check_id) REFERENCES quality_check(id)
);
