DROP TABLE IF EXISTS savelater;
DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS user;

CREATE TABLE user (
	userId BINARY(16) NOT NULL,
	userFirstName VARCHAR(40) NOT NULL,
	userLastName VARCHAR(40) NOT NULL,
	userEmail VARCHAR(50) NOT NULL,
	UNIQUE(userEmail),
	PRIMARY KEY(userId)
);

CREATE TABLE product (
	productId BINARY(16) NOT NULL,
	productName VARCHAR(40) NOT NULL,
	productColor VARCHAR(20) NOT NULL,
	productSize VARCHAR(20) NOT NULL,
	PRIMARY KEY(productId)
);

CREATE TABLE savelater (
	saveLaterUserId BINARY(16) NOT NULL,
	saveLaterProductId BINARY(16) NOT NULL,
	FOREIGN KEY(saveLaterUserId) REFERENCES user(userId),
	FOREIGN KEY(saveLaterProductId) REFERENCES product(productId),
	PRIMARY KEY(saveLaterUserId, saveLaterProductId)
);

