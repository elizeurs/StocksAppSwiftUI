//
//  ContentView.swift
//  StocksAppSwiftUI
//
//  Created by Elizeu RS on 16/04/21.
//

import SwiftUI

struct ContentView: View {
  
  @ObservedObject private var stockListVM = StockListViewModel()
  
  init() {
    
    stockListVM.load()
  }
  
  var body: some View {
    
    let filteredStocks = self.stockListVM.searchTerm.isEmpty ? self.stockListVM.stocks : self.stockListVM.stocks.filter { $0.symbol.starts(with: self.stockListVM.searchTerm) }
    
    return NavigationView {
      //      let filteredStocks = searchTerm.isEmpty ? self.stocks : self.stocks.filter { $0.symbol.starts(with: searchTerm) }
      
      ZStack(alignment: .leading) {
        
        Text("April 19 2021")
          .font(.title)
          .foregroundColor(.gray)
          .padding()
          .offset(y: -350)
        
        
        SearchView(searchTerm: self.$stockListVM.searchTerm)
          .offset(y: -300)
        
        
        StockListView(stocks: filteredStocks)
          .offset(y: 200)
        
        NewsArticleView(newsArticles: self.stockListVM.news,
                        onDragBegin: { value in
                          self.stockListVM.dragOffset = value.translation
                        }, onDragEnd: { value in
                          
                          if value.translation.height < 0 {
                            self.stockListVM.dragOffset = CGSize(width: 0, height: 100)
                          } else {
                            self.stockListVM.dragOffset = CGSize(width: 0, height: 750)
                          }
                        })
          .animation(.spring())
          .offset(y: self.stockListVM.dragOffset.height)
          .navigationBarTitle("Stocks", displayMode: .large)
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

