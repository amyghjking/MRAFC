//
//  FixturesResultsView.swift
//  MRAFC
//
//  Created by Amy King on 5/04/24.
//

import Foundation
import SwiftUI

struct FixturesResultsView: View {
    var body: some View {
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
    }
}
