    CREATE TABLE elan (
        id INT PRIMARY KEY IDENTITY,
        elanName VARCHAR(255),
        elanYurush INT,
        elanPrice INT,
        elanSahib INT,
        elanOturucu INT,
        SuretQutusu INT,
        elanBazar INT,
        horsepower INT,
        elanVeziyyet INT,
        yerSayi INT,
        elanKredit INT,
        elanVincode INT UNIQUE,
        elanMelumat VARCHAR(255),
        banName INT,
        colorName INT,
        age INT,
        markaName INT,
        muherrikSize INT,
        picName INT,
        techizatName INT,
        yanacagName INT,
        FOREIGN KEY (banName) REFERENCES Ban_novu(id),
        FOREIGN KEY (colorName) REFERENCES Color(id),
        FOREIGN KEY (age) REFERENCES Il(id),
        FOREIGN KEY (markaName) REFERENCES Model(id),
        FOREIGN KEY (muherrikSize) REFERENCES Muherrik(id),
        FOREIGN KEY (picName) REFERENCES Picture(id),
        FOREIGN KEY (techizatName) REFERENCES Techizat(id),
        FOREIGN KEY (yanacagName) REFERENCES Yanacag(id)
    );

    INSERT INTO elan (elanName, elanYurush, elanPrice, elanSahib, elanOturucu, SuretQutusu, elanBazar, horsepower, elanVeziyyet, yerSayi, elanKredit, elanVincode, elanMelumat)
    VALUES 
    ('elanName1',1000,100,1,1,1,1,1000,1,1,1,100,'elave1'),
    ('elanName2',2000,200,2,2,2,2,2000,2,2,2,200,'elave2'),
    ('elanName3',3000,300,3,3,3,3,3000,3,3,3,300,'elave3'),
    ('elanName4',4000,400,4,4,4,4,4000,4,4,4,400,'elave4'),
    ('elanName5',5000,500,5,5,5,5,5000,5,5,5,500,'elave5');

    SELECT elan.id AS elanId, elan.elanName, elan.elanYurush, elan.elanPrice, elan.elanSahib, elan.elanOturucu, elan.SuretQutusu,
    elan.elanBazar, elan.horsepower, elan.elanVeziyyet, elan.yerSayi, elan.elanKredit, elan.elanVincode, elan.elanMelumat,
    Ban_novu.Name AS banName, color.name AS colorName, il.Age AS age, marka.name AS markaName, Muherrik.size AS muherrikSize,
    picture.name AS picName, Techizat.name AS techizatName, Yanacag.name AS yanacagName  
    FROM elan
    JOIN Ban_novu ON elan.banName = Ban_novu.id
    JOIN color ON elan.colorName = color.id
    JOIN il ON elan.age = il.id
    JOIN marka ON elan.markaName = marka.id
    JOIN muherrik ON elan.muherrikSize = Muherrik.id
    JOIN picture ON elan.picName = picture.id
    JOIN techizat ON elan.techizatName = techizat.id
    JOIN yanacag ON elan.yanacagName = yanacag.id;