INSERT INTO Suppliers (Name, Address, ContactPerson, PhoneNumber, Email)
VALUES ('Mjölbolaget AB', 'Bagaregatan 5', 'Anna Andersson', '031123456', 'anna@example.com');

INSERT INTO Ingredients (ArticleNumber, Name, StockQuantityKg)
VALUES
('1001', 'Vetemjöl', 50),
('1002', 'Socker', 25),
('1003', 'Jäst', 5),
('1004', 'Margarin', 15);

INSERT INTO SupplierIngredients (SupplierId, IngredientId, PricePerKg)
VALUES
(1, 1, 12.50),
(1, 2, 15.00),
(1, 3, 35.00);

INSERT INTO Products (Name)
VALUES
('Kanelbullar'),
('Vetebröd');

INSERT INTO RecipeIngredients (ProductId, IngredientId, QuantityKg)
VALUES
(1, 1, 0.50),
(1, 2, 0.10),
(1, 3, 0.02),
(1, 4, 0.10),
(2, 1, 0.80),
(2, 3, 0.02);

INSERT INTO Purchases (
    SupplierId,
    IngredientId,
    PurchaseDate,
    QuantityKg,
    PricePerKg
)
VALUES (1, 1, '2026-11-22', 20, 12.50);