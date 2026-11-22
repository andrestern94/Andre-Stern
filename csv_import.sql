CREATE TABLE islanders (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    Happy_Sad_group VARCHAR(1),
    Dosage SMALLINT,
    Drug VARCHAR(1),
    Mem_Score_Before REAL,
    Mem_Score_After REAL,
    Diff REAL
);

\copy islanders(first_name, last_name, age, Happy_Sad_group, Dosage, Drug, Mem_Score_Before, Mem_Score_After, Diff) FROM '/Islander_data.csv' DELIMITER ',' CSV HEADER

SELECT * FROM islanders LIMIT 10;