//
//  ContentView.swift
//  StocksAppSwiftUI
//
//  Created by Elizeu RS on 16/04/21.
//

import SwiftUI

struct ContentView: View {
  
//  @State private var searchTerm: String = ""
  @ObservedObject private var stockListVM = StockListViewModel()
  
  init() {
    
    stockListVM.load()
  }
    
    var body: some View {
      StockListView(stocks: self.stockListVM.stocks)
    }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

