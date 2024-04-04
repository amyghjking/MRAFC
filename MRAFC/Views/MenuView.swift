//
//  MenuView.swift
//  MRAFC
//
//  Created by Amy King on 4/04/24.
//

import Foundation
import SwiftUI

struct MenuView: View {
    @Binding var isMenuViewVisible: Bool
    @State private var isTeamsViewActive = false
    @State private var isMatchesViewActive = false
    @State private var isNewsViewActive = false
    
    var body: some View {
        if isTeamsViewActive {
            TeamsView()
        } else if isMatchesViewActive {
            MatchesView()
        } else if isNewsViewActive {
            NewsView()
        } else if isMenuViewVisible {
            VStack {
                MenuHeaderView(isMenuViewVisible: $isMenuViewVisible)
                
                Spacer()
                
                TeamsMenuView(isTeamsViewActive: $isTeamsViewActive)
                
                MatchesMenuView(isMatchesViewActive: $isMatchesViewActive)
                
                NewsMenuView(isNewsViewActive: $isNewsViewActive)
            }
        } else {
            HomeView()
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(isMenuViewVisible: Binding.constant(true))
    }
}
