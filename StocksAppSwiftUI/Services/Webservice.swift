//
//  Webservice.swift
//  StocksAppSwiftUI
//
//  Created by Elizeu RS on 16/04/21.
//

import Foundation

class Webservice {
  func getStocks(completion: @escaping (([Stock]?) -> Void)) {
    guard let url = URL(string: "https://silicon-rhinoceros.glitch.me/stocks") else {
      fatalError("URL is not correct")
    }
    
    URLSession.shared.dataTask(with: url) { data, response, error in
      
      guard let data = data, error == nil else {
        completion(nil)
        return
      }
      
      let stocks = try? JSONDecoder().decode([Stock].self, from: data)
      stocks == nil ? completion(nil) : completion(stocks)
      
    }.resume()
  }
}