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
                HomeHeaderView(isHomeViewActive: $isHomeViewActive, isMenuViewVisible: $isMenuViewVisible)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
