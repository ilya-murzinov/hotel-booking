CREATE USER admin@localhost identified BY 'admin';
GRANT usage ON *.* TO admin@localhost identified BY 'admin';
DROP DATABASE IF EXISTS hotelBooking;
CREATE DATABASE IF NOT EXISTS hotelBooking;
GRANT ALL privileges ON hotelBooking.* TO admin@localhost;
USE hotelBooking;

CREATE TABLE hotel
(
   id INT PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(100),
   address VARCHAR(200),
   phone VARCHAR(15),
   price DOUBLE,
   description VARCHAR(5000)
);

INSERT INTO hotel (name, address, phone, price, description)
values ("Holiday Inn Paris Saint Germain des Prés", "92, rue de Vaugirard, 6th arr. - Saint Germain, 75006 Paris", "7777777", "1000.0", "Welcome to HOLIDAY INN Paris St Germain des Prés.
Ideally situated in the heart of ‘La Rive Gauche’, and after a thorough refurbishment in 2010, the hotel is only a few minutes from the business centre and railway station of Montparnasse, as well as the well-known ‘Latin Quarter’ of Paris.
With the Place Saint Germain des Prés also very close, renowned meeting point with restaurants and bars (les Deux Magots, le Café de Flore…), not forgetting the many boutiques on the Boulevard Saint Germain and the excellent shopping centre of ‘Le Bon Marché’.
The hotel is also very close to many tourist attractions : the Orsay and Louvre Museums, the Luxemburg Gardens, the Banks of the Seine river, Notre Dame Cathedral, the Pantheon….
All this gives us a prime address in the centre of Paris.
Easy access from Orly and Charles de Gaulle airports (by RER train, bus or taxi), the hotel is only 1 minute from the St Placide metro station (line n°4).
The hotel has 134 rooms of which 22 are Executive room and 12 are special rooms for families. 2 meeting rooms for seminars and conferences can welcome up to 70 persons");
INSERT INTO hotel (name, address, phone, price, description)
values ("Best Western Premier Louvre Saint-Honoré", "141, rue St Honoré, 1st arr. - Louvre, 75001 Paris", "7777778", "2000.0", "Ideally situated in Paris' 1st arrondissement at 141 rue Saint-Honoré, between the Louvre Museum and the Palais Royal Garden, the BEST WESTERN PREMIER Louvre Saint-Honore has been created inside an 18th-century building. The hotel features elegant decoration throughout, combining period architectural elements with contemporary comforts, in the heart of the vibrant rue Saint-Honore district. This four-star establishment enjoys an unrivaled location for discovering Paris, its monuments, renowned museums and luxury shops, all within an easy stroll to the Tuileries Gardens, Notre Dame de Paris cathedral, Saint Germain des Prés, Sainte Chapelle, Champs-Elysées and Place Vendôme.

This hotel, decorated by the celebrated interior designer Valérie Manoïl, stands out for its modern conveniences (high-speed Wifi free of charge, flat-screen TV, etc.) nestled into a most prestigious historical and cultural setting. With its attractive atrium overlooking a lounge laid out around a high-tech fireplace and a bar, the BEST WESTERN PREMIER Louvre Saint-Honore provides a cozy and intimate shelter.

The breakfast room, complete with a full buffet and customized lighting arrangement, offers a relaxing and tasty morning pleasure. A well-trained and courteous staff is on hand to satisfy your every need.");
INSERT INTO hotel (name, address, phone, price, description)
values ("Hôtel R de Paris", "41 rue de Clichy, 9th arr. - Opéra, 75009 Paris", "7777779", "3000.0", "Hôtel design à Paris 9ème, récemment et entièrement rénové, ouvert depuis le 6 décembre 2013, admirablement situé au cœur des plus beaux quartiers parisiens.

L'Hôtel R de Paris, hôtel 4 étoiles design au coeur de Paris Montmartre, est reconnu pour conjuguer tradition et modernité. Son atmosphère chaleureuse et son accueil personnalisé font de cet hôtel un pied-à-terre idéal pour les voyages d’affaires et touristiques.

Idéalement situé à la croisée des quartiers Opéra, Montmartre, ou Champs Elysées, l'Hôtel R de Paris est une adresse à privilégier pour mener ses rendez-vous d'affaires, se consacrer au shopping ou s'adonner à une promenade en découvrant à proximité les plus beaux lieux culturels de Paris.

Rive droite: Opéra Garnier, Montmartre, Théâtres (Casino, La Grande comédie, Théâtre du petit Paris)

Rive gauche : Musée d'Orsay, Notre Dame de Paris / Ile Saint-Louis, Saint Germain des Prés");
INSERT INTO hotel (name, address, phone, price, description)
values ("SAINT JAMES ALBANY PARIS HOTEL SPA", "202, rue de Rivoli, 1st arr. - Louvre, 75001 Paris", "7777770", "4000.0", "Этот отель находится в центре Парижа, напротив сада Тюильри и Лувра. Гости могут бесплатно посещать спа-салон отеля с крытым бассейном, фитнес-центром и хаммамом. На всей территории отеля предоставляется бесплатный Wi-Fi.

Все номера спа-отеля Saint-James & Albany звукоизолированы и оснащены кондиционером, а гостям предоставляется бесплатный беспроводной доступ в Интернет. В номерах также имеется собственная ванная комната и принимается спутниковое телевидение.

Завтрак, обед и ужин ежедневно подают в ресторане Le 202 Rivoli. Гости могут отдохнуть в лаундж-баре или на террасе в саду.

В отеле работает круглосуточная стойка регистрации с экскурсионным бюро. Он находится в 5 минутах ходьбы от музея Орсе и станции метро Tuileries, откуда без пересадок можно доехать до Елисейских полей.");
INSERT INTO hotel (name, address, phone, price, description)
values ("Hôtel les Degrés de Notre Dame", "0 rue des Grands Degrés, 5th arr. - Quartier Latin, 75005 Paris", "7777771", "5000.0", "Отель Hôtel les Degrés de Notre Dame находитися в центре Парижа, у берега Сены и собора Нотр-Дам. Стойка регистрации работает круглосуточно. До Пантеона - 500 метров. У стойки регистрации предоставляется бесплатный Wi-Fi.

Номера располагают отоплением, телевизором с кабельными каналами, шкафом и сейфом. Из некоторых номеров открывается вид на город. В ванной комнате можно пользоваться феном и бесплатными туалетно-косметическими принадлежностями.

Каждое утро в отеле Hôtel les Degrés de Notre Dame подают типичный французский завтрак.

От отеля - 5 минут ходьбы до станции регионального экспресс-метро Saint-Michel. Отсюда можно без пересадок добраться до аэропорта Шарль-де-Голль и Версаля. До ботанического сада и Палеонтологического музея - 15 минут ходьбы.");
INSERT INTO hotel (name, address, phone, price, description)
values ("Holiday Inn Paris Saint Germain des Prés", "92, rue de Vaugirard, 6th arr. - Saint Germain, 75006 Paris", "7777777", "1000.0", "Welcome to HOLIDAY INN Paris St Germain des Prés.
Ideally situated in the heart of ‘La Rive Gauche’, and after a thorough refurbishment in 2010, the hotel is only a few minutes from the business centre and railway station of Montparnasse, as well as the well-known ‘Latin Quarter’ of Paris.
With the Place Saint Germain des Prés also very close, renowned meeting point with restaurants and bars (les Deux Magots, le Café de Flore…), not forgetting the many boutiques on the Boulevard Saint Germain and the excellent shopping centre of ‘Le Bon Marché’.
The hotel is also very close to many tourist attractions : the Orsay and Louvre Museums, the Luxemburg Gardens, the Banks of the Seine river, Notre Dame Cathedral, the Pantheon….
All this gives us a prime address in the centre of Paris.
Easy access from Orly and Charles de Gaulle airports (by RER train, bus or taxi), the hotel is only 1 minute from the St Placide metro station (line n°4).
The hotel has 134 rooms of which 22 are Executive room and 12 are special rooms for families. 2 meeting rooms for seminars and conferences can welcome up to 70 persons");
INSERT INTO hotel (name, address, phone, price, description)
values ("Best Western Premier Louvre Saint-Honoré", "141, rue St Honoré, 1st arr. - Louvre, 75001 Paris", "7777778", "2000.0", "Ideally situated in Paris' 1st arrondissement at 141 rue Saint-Honoré, between the Louvre Museum and the Palais Royal Garden, the BEST WESTERN PREMIER Louvre Saint-Honore has been created inside an 18th-century building. The hotel features elegant decoration throughout, combining period architectural elements with contemporary comforts, in the heart of the vibrant rue Saint-Honore district. This four-star establishment enjoys an unrivaled location for discovering Paris, its monuments, renowned museums and luxury shops, all within an easy stroll to the Tuileries Gardens, Notre Dame de Paris cathedral, Saint Germain des Prés, Sainte Chapelle, Champs-Elysées and Place Vendôme.

This hotel, decorated by the celebrated interior designer Valérie Manoïl, stands out for its modern conveniences (high-speed Wifi free of charge, flat-screen TV, etc.) nestled into a most prestigious historical and cultural setting. With its attractive atrium overlooking a lounge laid out around a high-tech fireplace and a bar, the BEST WESTERN PREMIER Louvre Saint-Honore provides a cozy and intimate shelter.

The breakfast room, complete with a full buffet and customized lighting arrangement, offers a relaxing and tasty morning pleasure. A well-trained and courteous staff is on hand to satisfy your every need.");
INSERT INTO hotel (name, address, phone, price, description)
values ("Hôtel R de Paris", "41 rue de Clichy, 9th arr. - Opéra, 75009 Paris", "7777779", "3000.0", "Hôtel design à Paris 9ème, récemment et entièrement rénové, ouvert depuis le 6 décembre 2013, admirablement situé au cœur des plus beaux quartiers parisiens.

L'Hôtel R de Paris, hôtel 4 étoiles design au coeur de Paris Montmartre, est reconnu pour conjuguer tradition et modernité. Son atmosphère chaleureuse et son accueil personnalisé font de cet hôtel un pied-à-terre idéal pour les voyages d’affaires et touristiques.

Idéalement situé à la croisée des quartiers Opéra, Montmartre, ou Champs Elysées, l'Hôtel R de Paris est une adresse à privilégier pour mener ses rendez-vous d'affaires, se consacrer au shopping ou s'adonner à une promenade en découvrant à proximité les plus beaux lieux culturels de Paris.

Rive droite: Opéra Garnier, Montmartre, Théâtres (Casino, La Grande comédie, Théâtre du petit Paris)

Rive gauche : Musée d'Orsay, Notre Dame de Paris / Ile Saint-Louis, Saint Germain des Prés");
INSERT INTO hotel (name, address, phone, price, description)
values ("SAINT JAMES ALBANY PARIS HOTEL SPA", "202, rue de Rivoli, 1st arr. - Louvre, 75001 Paris", "7777770", "4000.0", "Этот отель находится в центре Парижа, напротив сада Тюильри и Лувра. Гости могут бесплатно посещать спа-салон отеля с крытым бассейном, фитнес-центром и хаммамом. На всей территории отеля предоставляется бесплатный Wi-Fi.

Все номера спа-отеля Saint-James & Albany звукоизолированы и оснащены кондиционером, а гостям предоставляется бесплатный беспроводной доступ в Интернет. В номерах также имеется собственная ванная комната и принимается спутниковое телевидение.

Завтрак, обед и ужин ежедневно подают в ресторане Le 202 Rivoli. Гости могут отдохнуть в лаундж-баре или на террасе в саду.

В отеле работает круглосуточная стойка регистрации с экскурсионным бюро. Он находится в 5 минутах ходьбы от музея Орсе и станции метро Tuileries, откуда без пересадок можно доехать до Елисейских полей.");
INSERT INTO hotel (name, address, phone, price, description)
values ("Hôtel les Degrés de Notre Dame", "0 rue des Grands Degrés, 5th arr. - Quartier Latin, 75005 Paris", "7777771", "5000.0", "Отель Hôtel les Degrés de Notre Dame находитися в центре Парижа, у берега Сены и собора Нотр-Дам. Стойка регистрации работает круглосуточно. До Пантеона - 500 метров. У стойки регистрации предоставляется бесплатный Wi-Fi.

Номера располагают отоплением, телевизором с кабельными каналами, шкафом и сейфом. Из некоторых номеров открывается вид на город. В ванной комнате можно пользоваться феном и бесплатными туалетно-косметическими принадлежностями.

Каждое утро в отеле Hôtel les Degrés de Notre Dame подают типичный французский завтрак.

От отеля - 5 минут ходьбы до станции регионального экспресс-метро Saint-Michel. Отсюда можно без пересадок добраться до аэропорта Шарль-де-Голль и Версаля. До ботанического сада и Палеонтологического музея - 15 минут ходьбы.");
INSERT INTO hotel (name, address, phone, price, description)
values ("Holiday Inn Paris Saint Germain des Prés", "92, rue de Vaugirard, 6th arr. - Saint Germain, 75006 Paris", "7777777", "1000.0", "Welcome to HOLIDAY INN Paris St Germain des Prés.
Ideally situated in the heart of ‘La Rive Gauche’, and after a thorough refurbishment in 2010, the hotel is only a few minutes from the business centre and railway station of Montparnasse, as well as the well-known ‘Latin Quarter’ of Paris.
With the Place Saint Germain des Prés also very close, renowned meeting point with restaurants and bars (les Deux Magots, le Café de Flore…), not forgetting the many boutiques on the Boulevard Saint Germain and the excellent shopping centre of ‘Le Bon Marché’.
The hotel is also very close to many tourist attractions : the Orsay and Louvre Museums, the Luxemburg Gardens, the Banks of the Seine river, Notre Dame Cathedral, the Pantheon….
All this gives us a prime address in the centre of Paris.
Easy access from Orly and Charles de Gaulle airports (by RER train, bus or taxi), the hotel is only 1 minute from the St Placide metro station (line n°4).
The hotel has 134 rooms of which 22 are Executive room and 12 are special rooms for families. 2 meeting rooms for seminars and conferences can welcome up to 70 persons");
INSERT INTO hotel (name, address, phone, price, description)
values ("Best Western Premier Louvre Saint-Honoré", "141, rue St Honoré, 1st arr. - Louvre, 75001 Paris", "7777778", "2000.0", "Ideally situated in Paris' 1st arrondissement at 141 rue Saint-Honoré, between the Louvre Museum and the Palais Royal Garden, the BEST WESTERN PREMIER Louvre Saint-Honore has been created inside an 18th-century building. The hotel features elegant decoration throughout, combining period architectural elements with contemporary comforts, in the heart of the vibrant rue Saint-Honore district. This four-star establishment enjoys an unrivaled location for discovering Paris, its monuments, renowned museums and luxury shops, all within an easy stroll to the Tuileries Gardens, Notre Dame de Paris cathedral, Saint Germain des Prés, Sainte Chapelle, Champs-Elysées and Place Vendôme.

This hotel, decorated by the celebrated interior designer Valérie Manoïl, stands out for its modern conveniences (high-speed Wifi free of charge, flat-screen TV, etc.) nestled into a most prestigious historical and cultural setting. With its attractive atrium overlooking a lounge laid out around a high-tech fireplace and a bar, the BEST WESTERN PREMIER Louvre Saint-Honore provides a cozy and intimate shelter.

The breakfast room, complete with a full buffet and customized lighting arrangement, offers a relaxing and tasty morning pleasure. A well-trained and courteous staff is on hand to satisfy your every need.");
INSERT INTO hotel (name, address, phone, price, description)
values ("Hôtel R de Paris", "41 rue de Clichy, 9th arr. - Opéra, 75009 Paris", "7777779", "3000.0", "Hôtel design à Paris 9ème, récemment et entièrement rénové, ouvert depuis le 6 décembre 2013, admirablement situé au cœur des plus beaux quartiers parisiens.

L'Hôtel R de Paris, hôtel 4 étoiles design au coeur de Paris Montmartre, est reconnu pour conjuguer tradition et modernité. Son atmosphère chaleureuse et son accueil personnalisé font de cet hôtel un pied-à-terre idéal pour les voyages d’affaires et touristiques.

Idéalement situé à la croisée des quartiers Opéra, Montmartre, ou Champs Elysées, l'Hôtel R de Paris est une adresse à privilégier pour mener ses rendez-vous d'affaires, se consacrer au shopping ou s'adonner à une promenade en découvrant à proximité les plus beaux lieux culturels de Paris.

Rive droite: Opéra Garnier, Montmartre, Théâtres (Casino, La Grande comédie, Théâtre du petit Paris)

Rive gauche : Musée d'Orsay, Notre Dame de Paris / Ile Saint-Louis, Saint Germain des Prés");
INSERT INTO hotel (name, address, phone, price, description)
values ("SAINT JAMES ALBANY PARIS HOTEL SPA", "202, rue de Rivoli, 1st arr. - Louvre, 75001 Paris", "7777770", "4000.0", "Этот отель находится в центре Парижа, напротив сада Тюильри и Лувра. Гости могут бесплатно посещать спа-салон отеля с крытым бассейном, фитнес-центром и хаммамом. На всей территории отеля предоставляется бесплатный Wi-Fi.

Все номера спа-отеля Saint-James & Albany звукоизолированы и оснащены кондиционером, а гостям предоставляется бесплатный беспроводной доступ в Интернет. В номерах также имеется собственная ванная комната и принимается спутниковое телевидение.

Завтрак, обед и ужин ежедневно подают в ресторане Le 202 Rivoli. Гости могут отдохнуть в лаундж-баре или на террасе в саду.

В отеле работает круглосуточная стойка регистрации с экскурсионным бюро. Он находится в 5 минутах ходьбы от музея Орсе и станции метро Tuileries, откуда без пересадок можно доехать до Елисейских полей.");
INSERT INTO hotel (name, address, phone, price, description)
values ("Hôtel les Degrés de Notre Dame", "0 rue des Grands Degrés, 5th arr. - Quartier Latin, 75005 Paris", "7777771", "5000.0", "Отель Hôtel les Degrés de Notre Dame находитися в центре Парижа, у берега Сены и собора Нотр-Дам. Стойка регистрации работает круглосуточно. До Пантеона - 500 метров. У стойки регистрации предоставляется бесплатный Wi-Fi.

Номера располагают отоплением, телевизором с кабельными каналами, шкафом и сейфом. Из некоторых номеров открывается вид на город. В ванной комнате можно пользоваться феном и бесплатными туалетно-косметическими принадлежностями.

Каждое утро в отеле Hôtel les Degrés de Notre Dame подают типичный французский завтрак.

От отеля - 5 минут ходьбы до станции регионального экспресс-метро Saint-Michel. Отсюда можно без пересадок добраться до аэропорта Шарль-де-Голль и Версаля. До ботанического сада и Палеонтологического музея - 15 минут ходьбы.");
INSERT INTO hotel (name, address, phone, price, description)
values ("Holiday Inn Paris Saint Germain des Prés", "92, rue de Vaugirard, 6th arr. - Saint Germain, 75006 Paris", "7777777", "1000.0", "Welcome to HOLIDAY INN Paris St Germain des Prés.
Ideally situated in the heart of ‘La Rive Gauche’, and after a thorough refurbishment in 2010, the hotel is only a few minutes from the business centre and railway station of Montparnasse, as well as the well-known ‘Latin Quarter’ of Paris.
With the Place Saint Germain des Prés also very close, renowned meeting point with restaurants and bars (les Deux Magots, le Café de Flore…), not forgetting the many boutiques on the Boulevard Saint Germain and the excellent shopping centre of ‘Le Bon Marché’.
The hotel is also very close to many tourist attractions : the Orsay and Louvre Museums, the Luxemburg Gardens, the Banks of the Seine river, Notre Dame Cathedral, the Pantheon….
All this gives us a prime address in the centre of Paris.
Easy access from Orly and Charles de Gaulle airports (by RER train, bus or taxi), the hotel is only 1 minute from the St Placide metro station (line n°4).
The hotel has 134 rooms of which 22 are Executive room and 12 are special rooms for families. 2 meeting rooms for seminars and conferences can welcome up to 70 persons");
INSERT INTO hotel (name, address, phone, price, description)
values ("Best Western Premier Louvre Saint-Honoré", "141, rue St Honoré, 1st arr. - Louvre, 75001 Paris", "7777778", "2000.0", "Ideally situated in Paris' 1st arrondissement at 141 rue Saint-Honoré, between the Louvre Museum and the Palais Royal Garden, the BEST WESTERN PREMIER Louvre Saint-Honore has been created inside an 18th-century building. The hotel features elegant decoration throughout, combining period architectural elements with contemporary comforts, in the heart of the vibrant rue Saint-Honore district. This four-star establishment enjoys an unrivaled location for discovering Paris, its monuments, renowned museums and luxury shops, all within an easy stroll to the Tuileries Gardens, Notre Dame de Paris cathedral, Saint Germain des Prés, Sainte Chapelle, Champs-Elysées and Place Vendôme.

This hotel, decorated by the celebrated interior designer Valérie Manoïl, stands out for its modern conveniences (high-speed Wifi free of charge, flat-screen TV, etc.) nestled into a most prestigious historical and cultural setting. With its attractive atrium overlooking a lounge laid out around a high-tech fireplace and a bar, the BEST WESTERN PREMIER Louvre Saint-Honore provides a cozy and intimate shelter.

The breakfast room, complete with a full buffet and customized lighting arrangement, offers a relaxing and tasty morning pleasure. A well-trained and courteous staff is on hand to satisfy your every need.");
INSERT INTO hotel (name, address, phone, price, description)
values ("Hôtel R de Paris", "41 rue de Clichy, 9th arr. - Opéra, 75009 Paris", "7777779", "3000.0", "Hôtel design à Paris 9ème, récemment et entièrement rénové, ouvert depuis le 6 décembre 2013, admirablement situé au cœur des plus beaux quartiers parisiens.

L'Hôtel R de Paris, hôtel 4 étoiles design au coeur de Paris Montmartre, est reconnu pour conjuguer tradition et modernité. Son atmosphère chaleureuse et son accueil personnalisé font de cet hôtel un pied-à-terre idéal pour les voyages d’affaires et touristiques.

Idéalement situé à la croisée des quartiers Opéra, Montmartre, ou Champs Elysées, l'Hôtel R de Paris est une adresse à privilégier pour mener ses rendez-vous d'affaires, se consacrer au shopping ou s'adonner à une promenade en découvrant à proximité les plus beaux lieux culturels de Paris.

Rive droite: Opéra Garnier, Montmartre, Théâtres (Casino, La Grande comédie, Théâtre du petit Paris)

Rive gauche : Musée d'Orsay, Notre Dame de Paris / Ile Saint-Louis, Saint Germain des Prés");
INSERT INTO hotel (name, address, phone, price, description)
values ("SAINT JAMES ALBANY PARIS HOTEL SPA", "202, rue de Rivoli, 1st arr. - Louvre, 75001 Paris", "7777770", "4000.0", "Этот отель находится в центре Парижа, напротив сада Тюильри и Лувра. Гости могут бесплатно посещать спа-салон отеля с крытым бассейном, фитнес-центром и хаммамом. На всей территории отеля предоставляется бесплатный Wi-Fi.

Все номера спа-отеля Saint-James & Albany звукоизолированы и оснащены кондиционером, а гостям предоставляется бесплатный беспроводной доступ в Интернет. В номерах также имеется собственная ванная комната и принимается спутниковое телевидение.

Завтрак, обед и ужин ежедневно подают в ресторане Le 202 Rivoli. Гости могут отдохнуть в лаундж-баре или на террасе в саду.

В отеле работает круглосуточная стойка регистрации с экскурсионным бюро. Он находится в 5 минутах ходьбы от музея Орсе и станции метро Tuileries, откуда без пересадок можно доехать до Елисейских полей.");
INSERT INTO hotel (name, address, phone, price, description)
values ("Hôtel les Degrés de Notre Dame", "0 rue des Grands Degrés, 5th arr. - Quartier Latin, 75005 Paris", "7777771", "5000.0", "Отель Hôtel les Degrés de Notre Dame находитися в центре Парижа, у берега Сены и собора Нотр-Дам. Стойка регистрации работает круглосуточно. До Пантеона - 500 метров. У стойки регистрации предоставляется бесплатный Wi-Fi.

Номера располагают отоплением, телевизором с кабельными каналами, шкафом и сейфом. Из некоторых номеров открывается вид на город. В ванной комнате можно пользоваться феном и бесплатными туалетно-косметическими принадлежностями.

Каждое утро в отеле Hôtel les Degrés de Notre Dame подают типичный французский завтрак.

От отеля - 5 минут ходьбы до станции регионального экспресс-метро Saint-Michel. Отсюда можно без пересадок добраться до аэропорта Шарль-де-Голль и Версаля. До ботанического сада и Палеонтологического музея - 15 минут ходьбы.");

CREATE TABLE comment
(
  id INT PRIMARY KEY AUTO_INCREMENT,
  hotelId INT,
  author VARCHAR(30),
  text VARCHAR(1000)
);

INSERT INTO comment (hotelId, author, text)
VALUES (1, "Alexander", "Удачное расположение. Вкусный (хотя и однообразный - а в каком отеле не так?!) завтрак");
INSERT INTO comment (hotelId, author, text)
VALUES (1, "Polkovnikova", "Отель снимали только чтобы переночевать. Все что написано на сайте, соответствует реальности. Чисто, дружелюбный персонал (на все вопросы отвечали, помогали соорентироваться), метро рядом. Чай и кофе докладывали каждый день. Полотенца меняли также каждый день. Завтраки не брали, питались в городе. Нареканий нет.");
INSERT INTO comment (hotelId, author, text)
VALUES (1, "Sergey", "Маленький номер, плохой уровень уборки в номере на этаже. Брали завтраки по 18Эвро на человека - не свежие продукты, которые уже нельзя есть (колбаса, сыр, яйцо) цена не соответсвует качеству");
INSERT INTO comment (hotelId, author, text)
VALUES (1, "Аноним", "Сложно сказать. Впрочем, убирались нормально и регулярно. За шум из соседней конференс-комнаты отель как-то дополнил обед шампанским.");
INSERT INTO comment (hotelId, author, text)
VALUES (2, "Irina", "Общительность и доброжелательность персонала, готовность помочь в решении бытовых проблем.");
INSERT INTO comment (hotelId, author, text)
VALUES (3, "Елена", "Отличное месторасположение, симпатичный, уютный отель.. Очень комфортные кровати, можно проспать весь день))) . Номера маленькие, но не тесные.., чувствуется рука опытного дизайнера.. Ну а камин в номере нас просто покорил.. Очень рекомендую, хорошое соотношение цена-качество!");
INSERT INTO comment (hotelId, author, text)
VALUES (3, "Ekaterina_Volkova", "Дизайн отеля супер!!! Персонал очень вежливый и быстро решал поступающие вопросы. Косметика Hermes.");
INSERT INTO comment (hotelId, author, text)
VALUES (3, "Terence", "That the staff whilst very busy were eyre attentive and helpful. King size bed was very comfortable, and the bathroom had double basins and a window that you could open to view courtyard, if you wished for fresh air.");
INSERT INTO comment (hotelId, author, text)
VALUES (4, "Viacheslav", "Самое ценное в отеле - месторасположение. В пешеходной дистанции Лувр, музей Д Орсе, Площадь Согласия и т.д. Вход в сад Тюрли прямо через дорогу. Жили в двухуровневом номере. Немножко чувствуется, что давно сделан ремонт, но в целом мы остались довольны. Диван на первом этаже, где спал ребенок - очень удобный. 2 санузла в номере (внизу только маленький туалет, но все равно очень удобно). Персонал приветлив и внимателен. Бесплатный интернет.");
INSERT INTO comment (hotelId, author, text)
VALUES (4, "Irina", "Красивый, уютный, удобно расположенный отель. Атмосфера французского шарма, ненавязчивого комфорта! Всё замечательно!");
INSERT INTO comment (hotelId, author, text)
VALUES (5, "Richard", "Great Hosts, proximity to Notre Dame & Latin Quarter's reasonably priced restaurants. Great area for a postprandial stroll along the Seine & around the cathedral. Hotel has a lot of character, with ancient wooden beams and a haphazard, yet enchanting collection of art.");
INSERT INTO comment (hotelId, author, text)
VALUES (5, "Cheryl", "Lovely room, updated bath with great shower, amazing location - less than 100 yards to the south side of the river looking straight across at Notre Dame, friendly helpful staff, espresso in the mornings.");