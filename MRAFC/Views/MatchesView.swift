//
//  MatchesView.swift
//  MRAFC
//
//  Created by Amy King on 4/04/24.
//

import Foundation
import SwiftUI

struct MatchesView: View {
    var body: some View {
        NavigationView {
            List(matches) { match in
                NavigationLink {
                    //
                } label: {
                    MatchRowView(match: match)
                }
            }
            .navigationTitle("Matches")
        }
    }
}
