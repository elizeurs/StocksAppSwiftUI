//
//  StocksTestView.swift
//  StocksAppSwiftUI
//
//  Created by Elizeu RS on 18/04/21.
//

import SwiftUI

struct StocksTestCellView: View {
  
  let stock: StockViewModel
  
  var body: some View {
      
      HStack {
        VStack(alignment: .leading, spacing: 7) {
          Text(stock.symbol)
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(.white)
          Text(stock.description)
            .foregroundColor(.gray)
        }
        
        Spacer()
        
        VStack(alignment: .trailing, spacing: 7) {
          Text(stock.price)
            .foregroundColor(.white)
          Text(stock.change)
            .frame(width: 75, height: 30)
            .foregroundColor(Color.white)
            .background(Color.red)
            .cornerRadius(7)
        }
        
      }.padding()
      .background(Color.black)
    }
  }

struct StocksTestView_Previews: PreviewProvider {
  static var previews: some View {
    
    let stock = Stock(symbol: "GOOG", description: "Google Stocks", price: 1200, change: "+0.23")
    
    return Group {
      StocksTestCellView(stock: StockViewModel(stock: stock))
    }
  }
}
