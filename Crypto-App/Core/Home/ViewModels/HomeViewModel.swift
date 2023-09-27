//
//  HomeViewModel.swift
//  Crypto-App
//
//  Created by Bahittin on 26.09.2023.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    
    init() {
        fetchCoinData()
    }
    
    func fetchCoinData() {
        let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=USD&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=24h&locale=en"
        
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response , error in
            if let error = error {
                print("DEBUG: error is \(error)")
                return
            }
            
            if let response = response as? HTTPURLResponse {
                print("DEBUG: response code \(response.statusCode)")
            }
            
            guard let data = data else { return }
            
            do {
                let data = try JSONSerialization.jsonObject(with: data,options: .fragmentsAllowed)
                print(data)
            } catch {
                print(error.localizedDescription)
            }
            
        }.resume()
    }
}
