CREATE DATABASE IF NOT EXISTS phpiggy;
GRANT ALL PRIVILEGES ON phpiggy.* TO 'root'@'%' IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON phpiggy.* TO 'root'@'localhost' IDENTIFIED BY '';
USE phpiggy;
CREATE TABLE IF NOT EXISTS users(
  id BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  age TINYINT(3) UNSIGNED NOT NULL,
  country VARCHAR(255) NOT NULL,
  social_media_url VARCHAR(255) NOT NULL,
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  PRIMARY KEY(id),
  UNIQUE KEY(email)
);
CREATE TABLE IF NOT EXISTS transactions(
  id BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  description varchar(255) NOT NULL,
  amount decimal(10,2) NOT NULL,
  date datetime NOT NULL,
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  user_id bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY (user_id) REFERENCES users(id)
)
CREATE TABLE IF NOT EXISTS receipts(
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  original_filename varchar(255) NOT NULL,
  storage_filename varchar(255) NOT NULL,
  media_type varchar(255) NOT NULL,
  transaction_id bigint(20) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY(transaction_id) REFERENCES transactions (id) ON DELETE CASCADE
);