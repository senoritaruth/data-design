DROP TABLE IF EXISTS User;
CREATE TABLE User (
	userId BINARY(16) NOT NULL,
	userFirstName CHAR(40) NOT NULL,
	userLastName CHAR(40) NOT NULL,
	userEmail CHAR(50) NOT NULL,
	UNIQUE(userEmail),
	PRIMARY KEY(userId)
);

DROP TABLE IF EXISTS Product;
CREATE TABLE Product (
	productId BINARY(16) NOT NULL,
	productName CHAR(40) NOT NULL,
	productColor CHAR(20) NOT NULL,
	productSize CHAR(20) NOT NULL,
	PRIMARY KEY(productId)
);

DROP TABLE IF EXISTS SaveLater;
CREATE TABLE SaveLater (
	saveLaterUserId BINARY(16) NOT NULL,
	saveLaterProductId BINARY(16) NOT NULL,
	INDEX(saveLaterProductId),
	FOREIGN KEY(saveLaterUserId) REFERENCES User(UserId),
	FOREIGN KEY(saveLaterProductId) REFERENCES Product(ProductId),
	PRIMARY KEY(saveLaterUserId, saveLaterProductId)
);

