//
//  StockListView.swift
//  StocksAppSwiftUI
//
//  Created by Elizeu RS on 18/04/21.
//

import SwiftUI

struct StockListView: View {
  
//  @State private var searchTerm: String = ""
  let stocks: [StockViewModel]
  
  var body: some View {
    
      ZStack {
        
        ScrollView {
          VStack {
            
//            SearchView(searchTerm: $searchTerm)
            
            ForEach(self.stocks, id: \.symbol) { stock in
              StockCellView(stock: stock)
            }
            
            Spacer()
            
          }
        }.background(Color.black)
        .edgesIgnoringSafeArea(.bottom)
      }
    }
  }

//struct StockCellView: View {
//  
//  let stock: StockViewModel
//  
//  var body: some View {
//    
//    return HStack {
//      
//      VStack(alignment: .leading) {
//        Text(stock.symbol)
//          .font(.custom("Arial", size: 22))
//          .fontWeight(.bold)
//          .foregroundColor(Color.white)
//          .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
//        Text(stock.description)
//          .font(.custom("Arial", size: 18))
//          .foregroundColor(Color.gray)
//      }
//      
//      Spacer()
//      
//      VStack {
//        Text("\(stock.price)")
//          .foregroundColor(Color.white)
//          .font(.custom("Arial", size: 22))
//        
//        Button(stock.change) {
//          
//        }
//        .frame(width: 75)
//        .padding(5)
//        .background(Color.red)
//        .foregroundColor(Color.white)
//        .cornerRadius(6)
//      }.background(Color.black)
//    }.background(Color.black)
//  }
//}


struct StockListView_Previews: PreviewProvider {
  static var previews: some View {
    //      StockListView(stocks: [StockViewModel]())
    
    let stock = Stock(symbol: "GOOG", description: "Google Stocks", price: 1200, change: "+0.23")
    
    return Group {
      StockListView(stocks: [StockViewModel(stock: stock)])
      
      
    }
  }
}
