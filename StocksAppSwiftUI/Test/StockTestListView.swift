//
//  StockTestListView.swift
//  StocksAppSwiftUI
//
//  Created by Elizeu RS on 18/04/21.
//

import SwiftUI

struct StockTestListView: View {
  
  @ObservedObject private var stockListVM = StockListViewModel()
  
  let stocks: [StockViewModel]
  
  
    var body: some View {
      List(self.stocks, id: \.symbol) { stock in
        StockTestListView(stocks: stocks)
      }
    }
}

//struct StockTestListView_Previews: PreviewProvider {
//    static var previews: some View {
//      StockTestListView(stocks: <#[StockViewModel]#>)
//
////      let stock = Stock(symbol: "GOOG", description: "Google Stocks", price: 1200, change: "+0.23")
////
////      return Group {
////        StockTestListView(stocks: <#[StockViewModel]#>)
////      }
//    }
//}
