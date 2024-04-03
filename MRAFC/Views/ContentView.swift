//
//  ContentView.swift
//  MRAFC
//
//  Created by Amy King on 4/04/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isLoading = true
    
    var body: some View {
        if isLoading {
            StartupLoadingView(isLoading: $isLoading)
        } else {
            //HomeView()
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
