//
//  FixturesResultsView.swift
//  MRAFC
//
//  Created by Amy King on 5/04/24.
//

import Foundation
import SwiftUI

struct FixturesResultsView: View {
    @State private var isHomeViewActive = false
    @State private var isMenuViewVisible = false
    
    var body: some View {
        
        if isHomeViewActive {
            HomeView()
        } else if isMenuViewVisible {
            MenuView(isMenuViewVisible: $isMenuViewVisible)
        } else {
            VStack {
                MenuHeaderView(isHomeViewActive: $isHomeViewActive, isMenuViewVisible: $isMenuViewVisible)
                
                NavigationView {
                    List(fixturesResults) { fixtureResult in
                        NavigationLink {
                            //
                        } label: {
                            FixtureResultRowView(fixtureResult: fixtureResult)
                        }
                    }
                    .navigationTitle("Fixtures/Results")
                }
                .padding(.top, UIScreen.main.bounds.height * -0.08)
            }
        }
    }
}

struct FixturesResultsView_Previews: PreviewProvider {
    static var previews: some View {
        FixturesResultsView()
    }
}
