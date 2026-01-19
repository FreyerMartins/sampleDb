-- get memory allocated to db
SELECT current_setting('memory_limit') AS memlimit;

-- set memory limit to 8gb
SET memory_limit = '8GB';


-- save logs to file
-- denormalized: creates `/tmp/logs.csv`
CALL enable_logging(storage_path = 'Users/Documents/Coding/SampleDb/tmp/logs.csv');

