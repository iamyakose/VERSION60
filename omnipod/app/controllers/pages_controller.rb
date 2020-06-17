class PagesController < ApplicationController
    def welcome
      render json: {message: 'hello!'}, status: 200
    end

    def product
       render json:{
        “productID” : “KL2432”,
        “productName” : “Hugo Boss men’s suit”,
        “productPrice” :  2500, 
        “productPriceFormatted” : “DKK 2.500,00” 
        “inStock” : true, 
        “relatedProducts”: [
              {“productID”: “KL2532”},
              {“productID”: “KL2341”}
        ]
        }, status: 200 
    end
  end
  