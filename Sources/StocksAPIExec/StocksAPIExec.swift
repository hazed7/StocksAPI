//
//  File.swift
//  
//
//  Created by Alexander on 18.05.2023.
//

import Foundation
import StocksAPI

@main
struct XCAStocksExec {
    private static let api = StocksAPI()
    static func main() async {
        do {
            let apple1dChart = try await api
                .fetchChartData(tickerSymbol: "AAPL", range: .oneDay)

            print(apple1dChart ?? "Not Found")
            

            let tickers = try await api
                .searchTickers(query: "TESLA")
            print(tickers)
            

            let quotes = try await api
                .fetchQuotes(symbols: "AAPL,TSLA,GOOG,MSFT")
            print(quotes)
        } catch {
            print(error.localizedDescription)
        }
    }
}
