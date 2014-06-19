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
   price DOUBLE
);

INSERT INTO hotel (name, address, phone, price)
values ("Holiday Inn Paris Saint Germain des Prés", "92, rue de Vaugirard, 6th arr. - Saint Germain, 75006 Paris", "7777777", "1000.0");
INSERT INTO hotel (name, address, phone, price)
values ("Best Western Premier Louvre Saint-Honoré", "141, rue St Honoré, 1st arr. - Louvre, 75001 Paris", "7777778", "2000.0");
INSERT INTO hotel (name, address, phone, price)
values ("Hôtel R de Paris", "41 rue de Clichy, 9th arr. - Opéra, 75009 Paris", "7777779", "3000.0");
INSERT INTO hotel (name, address, phone, price)
values ("SAINT JAMES ALBANY PARIS HOTEL SPA", "202, rue de Rivoli, 1st arr. - Louvre, 75001 Paris", "7777770", "4000.0");
INSERT INTO hotel (name, address, phone, price)
values ("Hôtel les Degrés de Notre Dame", "0 rue des Grands Degrés, 5th arr. - Quartier Latin, 75005 Paris", "7777771", "5000.0");

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