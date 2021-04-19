//
//  StockCellView.swift
//  StocksAppSwiftUI
//
//  Created by Elizeu RS on 19/04/21.
//

import SwiftUI

struct StockCellView: View {
  
  let stock: StockViewModel
  
  var body: some View {
    HStack {
      VStack(alignment: .leading, spacing: 5) {
        //          Text("GOOG")
        Text(stock.symbol)
          .fontWeight(.bold)
        //          Text("Google Innovation Media")
        Text(stock.description)
          .foregroundColor(.gray)
      }
      
      Spacer()
      
      VStack(alignment: .trailing, spacing: 5) {
        //          Text("1000.00")
        Text(stock.price)
        //          Text("+3.24")
        Text(stock.change)
          .frame(width: 75, height: 30)
          .foregroundColor(Color.white)
          .background(Color.red)
          .cornerRadius(7)
        
      }
    }.padding()
  }
}

//struct StockCellView_Previews: PreviewProvider {
//    static var previews: some View {
//        StockCellView()
//    }
//}
