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
    @State private var daysRemaining = 0
    @State private var hoursRemaining = 0
    @State private var minutesRemaining = 0
    var nextFixture: FixtureResult? = nextClosestFixture()
    
    var body: some View {
        if isHomeViewActive {
            HomeView()
        } else if isMenuViewVisible {
            MenuView(isMenuViewVisible: $isMenuViewVisible)
        } else {
            VStack {
                HomeHeaderView(isHomeViewActive: $isHomeViewActive, isMenuViewVisible: $isMenuViewVisible)
                    .padding(.bottom, UIScreen.main.bounds.height * 0.05)
                
                NextFixtureHomeView()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
