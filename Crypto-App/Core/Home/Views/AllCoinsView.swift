//
//  AllCoinsView.swift
//  Crypto-App
//
//  Created by Bahittin on 26.09.2023.
//

import SwiftUI

struct AllCoinsView: View {
    @StateObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("All Coins")
                .font(.headline)
            
            HStack {
                Text("Coin")
                Spacer()
                Text("Price")
            }
            .foregroundColor(.secondary)
            .font(.caption)
            
            ScrollView {
                ForEach(viewModel.coins) { coin in
                    AllCoinsItemView(coin: coin)
                }
            }
        }
        .padding(.horizontal, 10)
    }
}

//struct AllCoinsView_Previews: PreviewProvider {
//    static var previews: some View {
//        AllCoinsView()
//    }
//}
