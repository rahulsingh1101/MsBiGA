//
//  LegalBottomCTA.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct LegalBottomCTA: View {
    var body: some View {
        VStack(spacing: 8) {
            Text("तत्काल कानूनी सहायता चाहिए?")
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(.white)
            
            Button(action: {
                // Handle action
            }) {
                Text("अभी संपर्क करें")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(Color(red: 0.482, green: 0.122, blue: 0.635))
                    .padding(.horizontal, 24)
                    .padding(.vertical, 10)
                    .background(Color.white)
                    .cornerRadius(8)
            }
        }
        .frame(maxWidth: .infinity)
        .padding(16)
        .background(Color(red: 0.482, green: 0.122, blue: 0.635))
        .cornerRadius(12)
        .padding(.horizontal, 16)
    }
}
