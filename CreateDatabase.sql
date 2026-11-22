CREATE TABLE IF NOT EXISTS Suppliers (
    Id INTEGER PRIMARY KEY,
    Name TEXT,
    Address TEXT,
    ContactPerson TEXT,
    PhoneNumber TEXT,
    Email TEXT
);
CREATE TABLE IF NOT EXISTS Ingredients (
    Id INTEGER PRIMARY KEY,
    ArticleNumber TEXT NOT NULL UNIQUE,
    Name TEXT NOT NULL,
    StockQuantityKg REAL NOT NULL DEFAULT 0
);
CREATE TABLE IF NOT EXISTS SupplierIngredients (
    SupplierId INTEGER NOT NULL,
    IngredientId INTEGER NOT NULL,
    PricePerKg REAL NOT NULL,

    PRIMARY KEY (SupplierId, IngredientId),
    FOREIGN KEY (SupplierId) REFERENCES Suppliers(Id),
    FOREIGN KEY (IngredientId) REFERENCES Ingredients(Id)
);
CREATE TABLE IF NOT EXISTS Products (
    Id INTEGER PRIMARY KEY,
    Name TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS RecipeIngredients (
    ProductId INTEGER NOT NULL,
    IngredientId INTEGER NOT NULL,
    QuantityKg REAL NOT NULL,

    PRIMARY KEY (ProductId, IngredientId),
    FOREIGN KEY (ProductId) REFERENCES Products(Id),
    FOREIGN KEY (IngredientId) REFERENCES Ingredients(Id)
);
CREATE TABLE IF NOT EXISTS Purchases (
        Id INTEGER PRIMARY KEY,
        SupplierId INTEGER NOT NULL,
        IngredientId INTEGER NOT NULL,
        PurchaseDate TEXT NOT NULL,
        QuantityKg REAL NOT NULL CHECK (QuantityKg > 0),
        PricePerKg REAL NOT NULL,

        FOREIGN KEY (SupplierId, IngredientId)
        REFERENCES SupplierIngredients(SupplierId, IngredientId)

);