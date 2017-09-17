# Data Model

The data model contains only 3 tables:

- readings
- sensor_info
- quality_check

## readings

The readings table contain readings from wind sensors (wind speed + wind direction), and energy sensors (power + current direction).

## sensor_info

Sensors are deployed in one of 4 different turbine towers, in 2 different locations (north and south). In this dataset, a turbine can be of one of 2 different manufacturers.

The deployment of sensors was such so that:

- Every tower has a wind and power sensor.
- Every location has the 2 tower manufacturers.

## quality_check

To date, it was found that the raw data (before added to the database) contain s(very rarely) ill-formatted .csv (i.e. missing commas to define the columns). Additionally, there are also "duplicates" as some of the sensors report down to second level, but the actual sampling is done in a higher resolution.

There is currently a flag for quality_check on readings that were ill-formatted and were fixed during insertion into the database, however **duplicates identification is not yet implemented**.

Given the quality check issues, it was suggested the readings table contain the data as-is for duplicates, and it is post-processed in a different table.  
