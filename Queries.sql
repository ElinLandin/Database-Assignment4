SELECT * FROM Suppliers;

SELECT DISTINCT
    Products.Name AS Product,
    Suppliers.Name AS Supplier
FROM Products
JOIN RecipeIngredients
    ON Products.Id = RecipeIngredients.ProductId
JOIN SupplierIngredients
    ON RecipeIngredients.IngredientId = SupplierIngredients.IngredientId
JOIN Suppliers
    ON SupplierIngredients.SupplierId = Suppliers.Id;