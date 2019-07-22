DROP TABLE IF EXISTS savelater;
DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS user;

CREATE TABLE user (
	userId BINARY(16) NOT NULL,
	userFirstName CHAR(40) NOT NULL,
	userLastName CHAR(40) NOT NULL,
	userEmail CHAR(50) NOT NULL,
	UNIQUE(userEmail),
	PRIMARY KEY(userId)
);

CREATE TABLE product (
	productId BINARY(16) NOT NULL,
	productName CHAR(40) NOT NULL,
	productColor CHAR(20) NOT NULL,
	productSize CHAR(20) NOT NULL,
	PRIMARY KEY(productId)
);

CREATE TABLE savelater (
	saveLaterUserId BINARY(16) NOT NULL,
	saveLaterProductId BINARY(16) NOT NULL,
	INDEX(saveLaterProductId),
	FOREIGN KEY(saveLaterUserId) REFERENCES user(userId),
	FOREIGN KEY(saveLaterProductId) REFERENCES product(productId),
	PRIMARY KEY(saveLaterUserId, saveLaterProductId)
);

