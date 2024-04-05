//
//  FixtureResultRowView.swift
//  MRAFC
//
//  Created by Amy King on 5/04/24.
//

import Foundation
import SwiftUI

struct FixtureResultRowView: View {
    var fixtureResult: FixtureResult
    
    var body: some View {
        HStack {
            Text(fixtureResult.homeTeam)
            Text(fixtureResult.awayTeam)
        }
    }
}
