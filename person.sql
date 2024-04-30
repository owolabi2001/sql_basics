create table car (
	id  BIGSERIAL PRIMARY KEY,
	make VARCHAR(50) NOT NULL,
	model VARCHAR(50) NOT NULL,
	price NUMERIC(50,0) NOT NULL,
);

INSERT INTO car (make,model,price) VALUES ('Toyota', 'Xtra', '6761830900543868002');
INSERT INTO car (make,model,price) VALUES ('Ford', 'f150', '6761830900543868002');
INSERT INTO car (make,model,price) VALUES ('RR', 'ghost', '6761830900543868002');

INSERT INTO public.user (full_name,email,phone_number,password,boat_user_id,user_type) values ('Ben Jacksons','mathew@theagromal.com','+2349066027357','$2b$11$rdrNFqnDj6qs5DlqNx7JJOFw4LR2P/oXu2MALGcv6Eai2mKGzPPHS','ced0f0b8-3d6a-42f9-be41-af1f5b4305f0','user');
INSERT INTO public.user (email,phone,password,activated,first_name,last_name,gender) VALUES ('olamide@lmu.com','+2348135141662','$2b$11$rdrNFqnDj6qs5DlqNx7JJOFw4LR2P/oXu2MALGcv6Eai2mKGzPPHS',true,'Temi','Olamide','male');
INSERT INTO public.user (full_name,email,phone_number,password,boat_user_id,user_type) values ('Temi Olamide','owolabi@lmu.com','+2348135141668','$2b$11$rdrNFqnDj6qs5DlqNx7JJOFw4LR2P/oXu2MALGcv6Eai2mKGzPPHS','aecf7765-7185-4dea-bd1d-002f65aa9a88','agent');

INSERT INTO public.user (full_name,email,phone_number,password,boat_user_id,user_type) values ('Temi Olamide','owolabi1@lmu.com','+2348135141669','$2a$11$5SNpOLB2.ZNuVrRLuDnW3exCkB3e73RYoqp/qjJ0LP9/P3rjYIcgG','9462d103-d057-4ec3-b4a7-a34da9b080f3','agent');

CREATE TABLE person( 
    id BIGSERIAL PRIMARY KEY NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL DEFAULT current_date - INTERVAL '10 years',
    country_of_birth VARCHAR(50) NOT NULL,
    car_id BIGINT REFERENCES car (id),
    UNIQUE(car_id)
);


update person set car_id = 2 where id= 1; 
--  below is a query to get car info from a person
SELECT * FROM person JOIN car ON person.car_id = car.id; 

SELECT * FROM person LEFT JOIN car ON person.car_id = car.id; 




INSERT INTO person (first_name,last_name,gender,email,country_of_birth) values('shola','michel','male','shola.michel@email.com','Nigeria');
INSERT INTO person (first_name,last_name,gender,email,country_of_birth) values('femi','segun','femaile','femi@email.com','Nigeria');

insert into car (id , make, model, price) values (1, 'Toyota', 'Xtra', '6761830900543868002');
insert into car (id , make, model, price) values (2, 'Saturn', 'VUE', '633428008870506446');
insert into car (id , make, model, price) values (3, 'Mitsubishi', 'Lancer', '3570908561044155');
insert into car (id , make, model, price) values (4, 'Mitsubishi', 'RVR', '3571496234976952');
insert into car (id , make, model, price) values (5, 'Subaru', 'Forester', '341724975019327');
insert into car (id , make, model, price) values (6, 'Isuzu', 'Rodeo Sport', '3532320754457573');
insert into car (id , make, model, price) values (7, 'Lexus', 'LX', '6761241852229349');
insert into car (id , make, model, price) values (8, 'Toyota', 'Solara', '30557023685939');
insert into car (id , make, model, price) values (9, 'Jeep', 'Commander', '5444188241415187');
insert into car (id , make, model, price) values (10, 'Subaru', 'XT', '3567005620635100');
insert into car (id , make, model, price) values (11, 'Plymouth', 'Grand Voyager', '5367044972851970');
insert into car (id , make, model, price) values (12, 'Audi', '5000S', '3567531746452633');
insert into car (id , make, model, price) values (13, 'Saturn', 'S-Series', '4405301172184918');
insert into car (id , make, model, price) values (14, 'Lexus', 'IS-F', '3542521490545278');
insert into car (id , make, model, price) values (15, 'Dodge', 'Caravan', '374288094823910');
insert into car (id , make, model, price) values (16, 'Mazda', 'CX-7', '3570430288513149');
insert into car (id , make, model, price) values (17, 'Buick', 'Century', '3578070843410621');
insert into car (id , make, model, price) values (18, 'Mazda', 'Mazda2', '3562541089916008');
insert into car (id , make, model, price) values (19, 'Hyundai', 'Elantra', '3547700321865528');
insert into car (id , make, model, price) values (20, 'Isuzu', 'Hombre', '201514337273830');
insert into car (id , make, model, price) values (21, 'Audi', 'R8', '5100145800480585');
insert into car (id , make, model, price) values (22, 'Geo', 'Storm', '5100134076260350');
insert into car (id , make, model, price) values (23, 'BMW', 'M5', '3560663842910268');
insert into car (id , make, model, price) values (24, 'Lexus', 'GS', '4913448560908948');
insert into car (id , make, model, price) values (25, 'Mazda', 'Miata MX-5', '3585471335123899');
insert into car (id , make, model, price) values (26, 'Oldsmobile', '98', '5010120501842606');
insert into car (id , make, model, price) values (27, 'Audi', 'A6', '3543258761016874');
insert into car (id , make, model, price) values (28, 'MINI', 'Cooper', '3567031865010403');
insert into car (id , make, model, price) values (29, 'MINI', 'Cooper', '6304344962134796511');
insert into car (id , make, model, price) values (30, 'Mercedes-Benz', 'SLK-Class', '491192725552864630');
insert into car (id , make, model, price) values (31, 'BMW', 'M3', '3558761071958455');
insert into car (id , make, model, price) values (32, 'Toyota', 'RAV4', '633401968038778453');
insert into car (id , make, model, price) values (33, 'Chevrolet', 'K5 Blazer', '5602256369404446');
insert into car (id , make, model, price) values (34, 'Toyota', 'Sequoia', '3580996583042628');
insert into car (id , make, model, price) values (35, 'Ford', 'E-Series', '3550993971875863');
insert into car (id , make, model, price) values (36, 'Ford', 'Mustang', '4844642975575391');
insert into car (id , make, model, price) values (37, 'Mercedes-Benz', 'CLS-Class', '3530688581962185');
insert into car (id , make, model, price) values (38, 'Chevrolet', 'S10', '3553122320128777');
insert into car (id , make, model, price) values (39, 'Jaguar', 'XJ', '3536041603025181');
insert into car (id , make, model, price) values (40, 'Volvo', 'S80', '4508206228489268');
insert into car (id , make, model, price) values (41, 'Honda', 'Prelude', '675995071848050990');
insert into car (id , make, model, price) values (42, 'Buick', 'Skylark', '5602222244723210');
insert into car (id , make, model, price) values (43, 'Chevrolet', 'Corvette', '676782413863925935');
insert into car (id , make, model, price) values (44, 'Dodge', 'Ram Van B250', '4917911539102642');
insert into car (id , make, model, price) values (45, 'Mercedes-Benz', 'E-Class', '372301455158057');
insert into car (id , make, model, price) values (46, 'Toyota', 'Avalon', '6304219921047441');
insert into car (id , make, model, price) values (47, 'BMW', '550', '6304228142461561306');
insert into car (id , make, model, price) values (48, 'Hyundai', 'Equus', '56022444738018387');
insert into car (id , make, model, price) values (49, 'GMC', 'Vandura 1500', '6333634642097928');
insert into car (id , make, model, price) values (50, 'Chevrolet', 'Suburban 2500', '3575489136116575');
insert into car (id , make, model, price) values (51, 'Land Rover', 'Defender', '5010123640250087');
insert into car (id , make, model, price) values (52, 'BMW', '8 Series', '3537062804694350');
insert into car (id , make, model, price) values (53, 'Buick', 'Rainier', '3540419912788976');
insert into car (id , make, model, price) values (54, 'Subaru', 'Legacy', '201611717704747');
insert into car (id , make, model, price) values (55, 'Hyundai', 'Accent', '4844460738646916');
insert into car (id , make, model, price) values (56, 'Mitsubishi', 'Expo', '4508887765869945');
insert into car (id , make, model, price) values (57, 'Volkswagen', 'New Beetle', '491120445834328075');
insert into car (id , make, model, price) values (58, 'Maserati', 'Quattroporte', '3548055400766223');
insert into car (id , make, model, price) values (59, 'Toyota', 'Xtra', '5007663606245113');
insert into car (id , make, model, price) values (60, 'Audi', 'Allroad', '3549874197885734');
insert into car (id , make, model, price) values (61, 'Lincoln', 'Continental', '56022171225858039');
insert into car (id , make, model, price) values (62, 'Subaru', 'Legacy', '3565588346249563');
insert into car (id , make, model, price) values (63, 'Chevrolet', '1500', '5641823928440840');
insert into car (id , make, model, price) values (64, 'Volvo', 'V50', '6759651757024641');
insert into car (id , make, model, price) values (65, 'GMC', '1500', '50201633194051116');
insert into car (id , make, model, price) values (66, 'Chevrolet', 'Impala', '4844289720278705');
insert into car (id , make, model, price) values (67, 'Oldsmobile', 'Intrigue', '3553198208583366');
insert into car (id , make, model, price) values (68, 'Buick', 'Electra', '5123919121993861');
insert into car (id , make, model, price) values (69, 'Mercedes-Benz', 'SL-Class', '4911863873195698');
insert into car (id , make, model, price) values (70, 'Morgan', 'Aero 8', '3540621677124921');
insert into car (id , make, model, price) values (71, 'Subaru', 'Tribeca', '30106151958385');
insert into car (id , make, model, price) values (72, 'Toyota', 'FJ Cruiser', '676707902686486648');
insert into car (id , make, model, price) values (73, 'Dodge', 'Ram', '06046646595038442');
insert into car (id , make, model, price) values (74, 'Saab', '9-5', '3566506954534026');
insert into car (id , make, model, price) values (75, 'Mitsubishi', 'Mighty Max', '560223280095220853');
insert into car (id , make, model, price) values (76, 'Ford', 'F-Series', '3537326026756820');
insert into car (id , make, model, price) values (77, 'Aston Martin', 'Vanquish S', '3563356539287028');
insert into car (id , make, model, price) values (78, 'Chevrolet', 'Astro', '374283689396315');
insert into car (id , make, model, price) values (79, 'Ford', 'Escape', '337941811951341');
insert into car (id , make, model, price) values (80, 'Oldsmobile', 'Aurora', '6706269439862094614');
insert into car (id , make, model, price) values (81, 'Lincoln', 'Blackwood', '670693511201290572');
insert into car (id , make, model, price) values (82, 'Acura', 'TL', '56022543540757726');
insert into car (id , make, model, price) values (83, 'Chevrolet', 'Express', '5108759649784957');
insert into car (id , make, model, price) values (84, 'Subaru', 'Legacy', '4041593679875986');
insert into car (id , make, model, price) values (85, 'Mercedes-Benz', 'SLK-Class', '3574932747074593');
insert into car (id , make, model, price) values (86, 'Toyota', 'Highlander', '30174206283019');
insert into car (id , make, model, price) values (87, 'Acura', 'RDX', '5405561966983588');
insert into car (id , make, model, price) values (88, 'BMW', 'X6', '490392048449895836');
insert into car (id , make, model, price) values (89, 'Dodge', 'Grand Caravan', '3539819503782200');
insert into car (id , make, model, price) values (90, 'Honda', 'Accord', '372301151849538');
insert into car (id , make, model, price) values (91, 'BMW', '330', '201845324997845');
insert into car (id , make, model, price) values (92, 'Mitsubishi', 'Galant', '3559590685511999');
insert into car (id , make, model, price) values (93, 'Ford', 'Tempo', '5002355726412328');
insert into car (id , make, model, price) values (94, 'Subaru', 'Outback', '3580964174363464');
insert into car (id , make, model, price) values (95, 'Ford', 'Taurus', '3586973507771610');
insert into car (id , make, model, price) values (96, 'Saab', '900', '3570450336031597');
insert into car (id , make, model, price) values (97, 'Nissan', '370Z', '3557776056906767');
insert into car (id , make, model, price) values (98, 'Pontiac', 'Aztek', '3578745469090787');
insert into car (id , make, model, price) values (99, 'GMC', 'Yukon XL 1500', '3574683207606008');
insert into car (id , make, model, price) values (100, 'Mazda', 'B-Series', '30587422944330');


insert into public.user (email,first_name,last_name,phone,activated,password,school_id,account_type) values ('tboyolamide@gmail.com','temi','owolabi','08144210037',true,'$2a$11$qLjjZ1.j7IE6/DRCfRu1lebTrrGkODa.XxYCfAhadmg0/pWQfTng6','6780c925-88bc-4f96-896b-6220d8e83537','staff');


-- password = $2a$11$qLjjZ1.j7IE6/DRCfRu1lebTrrGkODa.XxYCfAhadmg0/pWQfTng6