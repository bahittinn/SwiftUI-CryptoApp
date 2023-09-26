//
//  HomeView.swift
//  Crypto-App
//
//  Created by Bahittin on 26.09.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                //top movers view
                TopMoversView()
                
                Divider()
                
                // all coins view
                AllCoinsView()
            }
            .navigationTitle("Live Prices")
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
