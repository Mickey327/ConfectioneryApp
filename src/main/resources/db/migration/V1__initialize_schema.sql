CREATE TABLE category(
    id SERIAL NOT NULL PRIMARY KEY,
    name TEXT NOT NULL
);
CREATE TABLE product(
  id SERIAL NOT NULL PRIMARY KEY,
  name TEXT NOT NULL,
  weight DECIMAL NOT NULL,
  price DECIMAL NOT NULL,
  category_id INTEGER NOT NULL,
  image_name TEXT,
  description TEXT,
  CONSTRAINT FK_CATEGORY_ID FOREIGN KEY(category_id) REFERENCES category(id) ON DELETE CASCADE ON UPDATE CASCADE
);