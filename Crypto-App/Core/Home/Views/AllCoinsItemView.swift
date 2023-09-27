//
//  AllCoinsItemView.swift
//  Crypto-App
//
//  Created by Bahittin on 26.09.2023.
//

import SwiftUI

struct AllCoinsItemView: View {
    let coin: Coin
    var body: some View {
        VStack(alignment: .leading) {
            HStack() {
                Text("\(coin.marketCapRank ?? 1)")
                    .foregroundColor(.secondary)
                    .font(.caption)
                
                Image(systemName: "bitcoinsign.circle.fill")
                    .resizable()
                    .frame(width: 32, height: 32)
                    .foregroundColor(.orange)
                    .scaledToFit()
                
                VStack(alignment: .leading) {
                    Text(coin.name)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Text(coin.symbol.uppercased())
                        .font(.footnote)
                }
                
                Spacer()
                
                VStack(alignment: .trailing, spacing: 4) {
                    Text("\(coin.currentPrice)")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .padding(.leading, 4)
                    Text("\(coin.priceChangePercentage24H)")
                        .font(.callout)
                        .foregroundColor(.red)
                }
                .padding(.trailing, 10)
            }
        }
    }
}

//struct AllCoinsItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        AllCoinsItemView()
//    }
//}
