CREATE TABLE [dbo].[OrderDetails]
(
	[orderid] VARCHAR(MAX) NOT NULL, 
    [sno] INT NOT NULL, 
    [productid] INT NOT NULL, 
    [productname] VARCHAR(50) NOT NULL, 
    [price] INT NOT NULL, 
    [quantity] INT NOT NULL, 
    [orderdate] VARCHAR(50) NOT NULL, 
    CONSTRAINT [PK_OrderDetails] PRIMARY KEY ([orderid]) 
)
