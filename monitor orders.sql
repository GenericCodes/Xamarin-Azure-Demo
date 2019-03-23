
SELECT o.Id, UserId, CheckoutDateTime, count(i.Id)
  FROM [dbo].[Order] o left join [dbo].OrderItem i on o.Id = i.OrderId
  group by o.Id, UserId, CheckoutDateTime
  order by CheckoutDateTime desc


  --select * from OrderItem