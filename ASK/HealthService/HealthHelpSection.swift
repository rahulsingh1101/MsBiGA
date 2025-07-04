//
//  HealthHelpSection.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct HealthHelpSection: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("कैसे करें उपयोग? 🤔")
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(Color(red: 0.184, green: 0.490, blue: 0.196))
            
            VStack(alignment: .leading, spacing: 4) {
                Text("1. अपनी आवश्यकता चुनें")
                Text("2. फॉर्म भरें या कॉल करें")
                Text("3. हमारी टीम आपसे संपर्क करेगी")
                Text("4. पूर्ण सहायता तक हमारा साथ")
            }
            .font(.system(size: 14))
            .foregroundColor(.primary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(16)
        .background(Color(red: 0.910, green: 0.961, blue: 0.914))
        .cornerRadius(12)
        .padding(.horizontal, 16)
    }
}
