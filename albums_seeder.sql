USE codeup_test_db;

INSERT INTO albums (artist, name, release_date, genre,  sales)
VALUES ('AC/DC','Back in Black','1980','Hard rock','26.1'),
        ('Pink Floyd','The Dark Side of the Moon','1973','Progressive rock','24.2'),
        ('Meat Loaf','Bat Out of Hell','1977','Hard rock/Progressive rock','21.5'),
        ('Whitney Houston / Various artists','The Bodyguard','1992','R&B/Soul/Pop/Soundtrack','28.4'),
        ('Eagles','Their Greatest Hits (1971–1975)','1976','Rock/Soft rock/Folk rock','32.2'),
        ('Bee Gees / Various artists','Saturday Night Fever','1977','Disco','21.6');




-- BULK INSERT SchoolsTemp
--     FROM 'albums.csv'
--     WITH
--     (
--     artist,
--     name,
--     release_date,
--     genre,
--     sales,
--     FIELDTERMINATOR = ',',  --CSV field delimiter
--     ROWTERMINATOR = '\n',   --Use to shift the control to next row
--     TABLOCK
--     )
