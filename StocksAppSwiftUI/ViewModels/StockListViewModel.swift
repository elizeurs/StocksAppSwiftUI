//
//  StockListViewModel.swift
//  StocksAppSwiftUI
//
//  Created by Elizeu RS on 16/04/21.
//

import Foundation

class StockListViewModel {
  
  var searchTerm: String = ""
  var stocks: [StockViewModel] = [StockViewModel]()
  
  func load() {

  }
  
  private func fetchStocks() {
    
    Webservice().getStocks { stocks in
      if let stocks = stocks {
        DispatchQueue.main.async {
          self.stocks = stocks.map(StockViewModel.init)
        }
      }
    }
  }
}
