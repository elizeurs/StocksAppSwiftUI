//
//  NewsArticleView.swift
//  StocksAppSwiftUI
//
//  Created by Elizeu RS on 20/04/21.
//

import SwiftUI

struct NewsArticleView: View {
  
  let newsArticles: [NewsArticleViewModel]
  
  var body: some View {
    
    let screenSize = UIScreen.main.bounds.size
    
    return VStack(alignment: .leading) {
      
      VStack(alignment: .leading) {
        Text("Top News")
          .foregroundColor(Color.white)
          .foregroundColor(Color.white)
          .font(.largeTitle)
          .fontWeight(.bold)
          .padding(2)
        
        Text("From News")
          .foregroundColor(Color.gray)
          .font(.body)
          .fontWeight(.bold)
          .padding(2)
        
        ScrollView {
          VStack(alignment: .leading) {
            ForEach(self.newsArticles, id: \.title) { article in
              HStack() {
                VStack(alignment: .leading) {
                  Text(article.publication)
                    .foregroundColor(Color.gray)
                    .font(.custom("Arial", size: 22))
                    .fontWeight(.bold)
                  
                  Text(article.title)
                    .font(.custom("Arial", size: 22))
                    .foregroundColor(Color.white)
                }
              }
            }
          }
        }.frame(maxWidth: .infinity)
      }
    }.frame(width: screenSize.width, height: screenSize.height)
    .background(Color(red: 27/255, green: 28/255, blue: 30/255))
    .cornerRadius(20)
  }
}

struct NewsArticleView_Previews: PreviewProvider {
  static var previews: some View {
    
    let article = Article(title: "The Bull Market is Charging into 2020", imageURL:   "https://blog-en.webroot.com/wp-content/uploads/2020/08/06154526/CNR-800x400_Twitter-hack.jpg", publication: "The Wallstreet Journal")
    
    return NewsArticleView(newsArticles: [NewsArticleViewModel(article: article)])
  }
}
