-- Inserting category into the Category table
INSERT INTO Category (name) VALUES ('Для школы'), ('Для офиса'), ('Для черчения'), ('Календари'), ('Альбомы'), ('Обложки и закладки'), ('Блокноты и ежедневники');

-- Inserting products into the Product table
INSERT INTO Product (product_id, name, price, category_id, weight, mainPhoto)
VALUES
  ('р6557496', 'Закладка «Звёздная ночь»', 25, 6, 0.00, 'https://ndc.book24.ru/resize/820x1180/iblock/6d5/6d5d5281181e725f255663ca536ca776/3ed6c0ab0a45f396033427ecca107bec.jpg'),
  ('р532083', 'Кресло BRABIX «Fly MG-396», с подлокотниками', 10457, 2, 9.2, 'https://s3.ibta.ru/goods/532083/4ec661663e2a540ef3ff159e0c99e652_x.jpg'),
  ('р5320464', 'Кресло офисное BRABIX PREMIUM Favorite «EEX-577»', 18593, 2, 11.9, 'https://s3.ibta.ru/goods/531934/e866b74d636c77d01e2bdfc02103dd74_x.jpg'),
  ('р6567255', 'Закладки самоклеящиеся «Градиент»', 150, 6, 0.01, 'https://ndc.book24.ru/resize/820x1180/iblock/913/9130a40080c53365b571b3a487cc9f55/613e82cd37e63112451cbf1cfb00fe3b.jpg'),
  ('р6614470', 'Тетрадь 12л кл. «Гарри Поттер»', 40, 1, 0.04, 'https://ndc.book24.ru/resize/820x1180/iblock/a00/a00718f768a3069bb9eed17b57a05051/cb5fb82c26b993e191a94f0916b4f683.jpg'),
  ('p6556665', 'Шариковая ручка Goodmark синяя', 25, 1, 0.01, 'https://ndc.book24.ru/resize/820x1180/iblock/3b6/3b609fe36e95b06561f196786119c2e7/33d8a4e8a8550f72e7d37867b42db707.jpg'),
  ('p6556454', 'Ручка шариковая BRAUBERG синяя', 20, 1, 0.01, 'https://ndc.book24.ru/resize/820x1180/iblock/852/852019cdd25798451eee1486c1321dbf/565ddc03f2f06eb422bdfaa7e2d18e27.jpg'),
  ('p6561579', 'Лента клейкая прозрачная, 19 мм, 33 метра', 50, 2, 0.12, 'https://ndc.book24.ru/resize/820x1180/iblock/2de/2de78ad50a54e99be7a0ee60f394c6bd/1354c8e326701305e04f1c9da372014d.jpg'),
  ('p6556518', 'Корректирующая ручка «GoodMark»', 90, 1, 0.02, 'https://ndc.book24.ru/resize/820x1180/iblock/4e2/4e2503f709a666a776c36e43b38b200a/61c852e78da09e12370f58fa3856d4fb.jpg');

-- Inserting photos into the Photos table for each product
INSERT INTO Photos (product_id, photo_urls) VALUES
  ('р6557496', ARRAY['https://ndc.book24.ru/crop/180x180/uf/634/634c63918700b0397e7eaa639bd98d59/592854a702e2ee1c59bfdd6ee79302ba.jpg', 'https://ndc.book24.ru/crop/180x180/uf/5c7/5c755c98952947f59523cdcddd50520a/527ce9de7492a71b39eb2c356575e788.jpg', 'https://ndc.book24.ru/crop/180x180/uf/03d/03d524320949429669a5cf6aa09964e4/ce48b47417ca144400209b55837fb982.jpg']),
  ('р532083', ARRAY['https://s3.ibta.ru/goods/532083/abdf558f3f24ecce72b121dcd42d9412_xl.jpg', 'https://s3.ibta.ru/goods/532083/a58ab5dca4144436dd38407f491d7848_xl.jpg', 'https://s3.ibta.ru/goods/532083/551b87d38a270771d639ff1da9683652_xl.jpg', 'https://s3.ibta.ru/goods/532083/937612a7d54356783e5ab2d21aceb2ad_xl.jpg']),
  ('р5320464', ARRAY['https://s3.ibta.ru/goods/531934/28aef1e84101bc1a2d37bcac73919347_s.jpg', 'https://s3.ibta.ru/goods/531934/c1cb54ea2b24dc57f6fbf791d0e3b254_s.jpg', 'https://s3.ibta.ru/goods/531934/267d156c5f99c011596913d8d1eefb2a_s.jpg', 'https://s3.ibta.ru/goods/531934/8069be3858b61b864ca0c7676f013f9c_s.jpg']),
  ('р6567255', ARRAY['https://ndc.book24.ru/crop/180x180/uf/e75/e7518f60f24a6f2c75d59c6d87582db6/735c89c8eb9a95829ea55fa87225aced.jpg', 'https://ndc.book24.ru/crop/180x180/uf/80e/80e4d0f58c18d1042227071e4ef2238e/a1520c3d36b5c9836b76bb5d12a8da75.jpg']),
  ('р6614470', ARRAY['https://ndc.book24.ru/crop/180x180/uf/fe0/fe0b8b0836209cf7295a12a6ae935f20/bd0b80f8d6ff8308ef4028ba3981b95c.jpg']),
  ('p6556665', ARRAY['https://ndc.book24.ru/crop/180x180/uf/cd2/cd21baaeada7566159fb7595ba49b035/817074d32c71a80661c8cad1bfc212b7.jpg', 'https://ndc.book24.ru/crop/180x180/uf/00a/00af3010546ef7c3dc18e78ec3360b6d/81419e3c7eeb05482b71f920503d2ddd.jpg']),
  ('p6556454', ARRAY['https://ndc.book24.ru/crop/180x180/uf/c26/c2681837e8ad30a0ef82669a71bc35b5/34913c585d22d4035473360582727932.jpg', 'https://ndc.book24.ru/crop/180x180/uf/30e/30effbbe4080a417a64844f90b1b93dc/3e1ee036f78251fbdb9709e0463aabce.jpg', 'https://ndc.book24.ru/crop/180x180/uf/852/852019cdd25798451eee1486c1321dbf/565ddc03f2f06eb422bdfaa7e2d18e27.jpg']),
  ('p6561579', ARRAY['https://ndc.book24.ru/crop/180x180/uf/31b/31badf6d73f7537bad5e6e10096e2a2a/9398f0f9d32825c1d5394bff02e44485.jpg', 'https://ndc.book24.ru/crop/180x180/uf/05a/05a8a32c1991a1802d2ce34e365c1c11/9a6d2e150f754b56f0b7cc297fcc58f4.jpg']),
  ('p6556518', ARRAY['https://ndc.book24.ru/crop/180x180/uf/a55/a55dba699cd5e818def02facc3a61a2b/95ebf5663f9078a2646b2abc59e91e54.jpeg', 'https://ndc.book24.ru/crop/180x180/uf/49a/49a68d1a58698a6008a322dfcf75e79d/042ff59cfd3d087f08f1b2b944d54e18.jpg']);
