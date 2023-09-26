//
//  ContentView.swift
//  Crypto-App
//
//  Created by Bahittin on 26.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "bell")
            Text("Hello").bold()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews:   some View {
        ContentView()
    }
}
