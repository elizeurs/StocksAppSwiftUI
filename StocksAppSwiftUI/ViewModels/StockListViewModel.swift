//
//  StockListViewModel.swift
//  StocksAppSwiftUI
//
//  Created by Elizeu RS on 16/04/21.
//

import Foundation

class StockListViewModel: ObservableObject {
  @Published var searchTerm: String = ""
  @Published var stocks: [StockViewModel] = [StockViewModel]()
  @Published var news: [NewsArticleViewModel] = [NewsArticleViewModel]()
  
  func load() {
    fetchNews()
    fetchStocks()
  }
  
  private func fetchNews() {
    
    Webservice().getTopNews { news in
      if let news = news {
        self.news = news.map(NewsArticleViewModel.init)
      }
    }
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
