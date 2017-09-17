CREATE TABLE sensor_info(
  full_description VARCHAR(255)
  device integer,
  sensor integer,
  units VARCHAR(10),
  location VARCHAR(50),
  turbine_tower integer,
  sensor_type VARCHAR(100),
  current_direction VARCHAR(100),
  turbine_tower_type VARCHAR(100),
  PRIMARY KEY(sensor,device)
);
