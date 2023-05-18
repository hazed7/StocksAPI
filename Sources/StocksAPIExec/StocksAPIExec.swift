//
//  File.swift
//  
//
//  Created by Alexander on 18.05.2023.
//

import Foundation
import StocksAPI

@main
struct StocksAPIExec {
    static let stocksAPI = StocksAPI()
    
    static func main() async {
        do {
//            let quotes = try await stocksAPI.fetchQuotes(symbols: "APPL,GOOG,TSLA")
//            print(quotes)
            
//            let tickers = try await stocksAPI.searchTickers(query: "tesla")
//            print(tickers)
            
            if let chart = try await stocksAPI.fetchChartData(symbol: "AAPL", range: .oneDay) {
                print(chart)
            }
        } catch {
            print(error.localizedDescription)
        }
    }
}
