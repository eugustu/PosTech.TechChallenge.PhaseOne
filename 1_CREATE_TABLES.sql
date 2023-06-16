CREATE TABLE [PRODUCTS] (
    Id              UNIQUEIDENTIFIER PRIMARY KEY default NEWID(),
    Name            VARCHAR(250) NOT NULL,
    Description     VARCHAR(250) NOT NULL,
    Price           DECIMAL(14,2) NOT NULL DEFAULT 0
);

CREATE TABLE [IMAGES] (
    Id              UNIQUEIDENTIFIER PRIMARY KEY default NEWID(),
    Name            VARCHAR(250) NOT NULL,
    Url             VARCHAR(2000) NOT NULL,
    ProductId       UNIQUEIDENTIFIER FOREIGN KEY REFERENCES [PRODUCTS](Id)
);