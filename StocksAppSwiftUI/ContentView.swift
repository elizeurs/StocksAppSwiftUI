//
//  ContentView.swift
//  StocksAppSwiftUI
//
//  Created by Elizeu RS on 16/04/21.
//

import SwiftUI

struct ContentView: View {
  
  @State private var searchTerm: String = ""
  
  init() {
    UINavigationBar.appearance().backgroundColor = UIColor.black
    UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    UITableView.appearance().backgroundColor = UIColor.black
    UITableViewCell.appearance().backgroundColor = UIColor.black
  }
  
  var body: some View {
    
    NavigationView {
      
      ZStack(alignment: .leading) {
        
        Color.black
        
        Text("April 18 2021")
          .font(.custom("Arial", size:  32))
          .fontWeight(.light)
          .foregroundColor(Color.gray)
          .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
          .offset(y: -290)
        
        SearchView(searchTerm: $searchTerm)
          .offset(y: -225)
      }
      
      .navigationBarTitle("Stocks")
      .edgesIgnoringSafeArea(.all)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

