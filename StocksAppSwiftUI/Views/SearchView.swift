//
//  SearchView.swift
//  StocksAppSwiftUI
//
//  Created by Elizeu RS on 16/04/21.
//

import SwiftUI

struct SearchView: View {
  
  @Binding var searchTerm: String
  
    var body: some View {
        
      HStack {
        Spacer()
        Image(systemName: "magnifyingglass")
        
        TextField("Search", text: $searchTerm)
          .padding(10)
      }
      .foregroundColor(.black)
      .background(Color.white)
      .cornerRadius(10)
      .padding(10)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
      SearchView(searchTerm: .constant(""))
    }
}
