//
//  HomeView.swift
//  MRAFC
//
//  Created by Amy King on 4/04/24.
//

import Foundation
import SwiftUI

struct HomeView: View {
    @State private var isHomeViewActive = false
    @State private var isMenuViewVisible = false
    
    var body: some View {
        if isHomeViewActive {
            HomeView()
        } else if isMenuViewVisible {
            MenuView(isMenuViewVisible: $isMenuViewVisible)
        } else {
            VStack {
                ZStack {
                    Rectangle()
                        .foregroundColor(.black)
                        .frame(height: UIScreen.main.bounds.size.height * 0.2)
                    
                    HStack {
                        Image("MRAFClogo")
                            .resizable()
                            .scaledToFit()
                            .frame(height: UIScreen.main.bounds.size.height * 0.2 * 0.5)
                            .offset(x: UIScreen.main.bounds.size.width * 0.4)
                        
                        Spacer()
                        
                        Image("MenuIcon")
                            .resizable()
                            .scaledToFit()
                            .frame(height: UIScreen.main.bounds.size.height * 0.2 * 0.8)
                            .offset(y: UIScreen.main.bounds.size.height * 0.025)
                            .offset(x: UIScreen.main.bounds.size.width * 0.1)
                        
                    }
                    .offset(y: UIScreen.main.bounds.size.height * 0.03)
                    .overlay(
                        Button(action: {
                            self.isHomeViewActive = true
                        }) {
                            Color.clear
                        }
                            .frame(width: UIScreen.main.bounds.size.width * 0.23, height: UIScreen.main.bounds.size.height * 0.2 * 0.8)
                    )
                    .overlay(
                        Button(action: {
                            self.isMenuViewVisible = true
                        }) {
                            Color.clear
                        }
                            .frame(width: UIScreen.main.bounds.size.width * 0.2, height: UIScreen.main.bounds.size.height * 0.2 * 0.8),
                        alignment: .trailing
                    )
                }
                .offset(y: UIScreen.main.bounds.size.height * -0.42)
                .edgesIgnoringSafeArea(.top)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
