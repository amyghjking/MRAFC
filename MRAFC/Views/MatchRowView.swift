//
//  MatchRowView.swift
//  MRAFC
//
//  Created by Amy King on 4/04/24.
//

import Foundation
import SwiftUI

struct MatchRowView: View {
    var match: Match
    
    var body: some View {
        HStack {
            Text(match.homeTeam)
            Text(match.awayTeam)
        }
    }
}
