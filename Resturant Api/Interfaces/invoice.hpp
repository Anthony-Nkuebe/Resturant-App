#include<iostream>
#include "./product.hpp"

#ifdef VAT_ON_PROD
#define VAT_ON_PROD 15

#endif

class Invoice
{
    private:
        int InvoiceId;
        Product *product;/*Array of products*/
        int quantity;   /**/
        double Total_Price;

        double calcTotal(Product *prod);

        Invoice*operator=(Invoice &account); /*Define the equality operator*/

    public:
        Invoice(int InvoiceId,Product *product,int quantity, double Total_Price):
        InvoiceId(InvoiceId),product(product),quantity(quantity), Total_Price(Total_Price){}


        Invoice(Invoice &invoice)
        {
            InvoiceId = invoice.InvoiceId;
            product= invoice.product;
            quantity = invoice.quantity;
             Total_Price = invoice.Total_Price;
        }
        
};