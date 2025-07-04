//
//  HealthStatsInfo.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct HealthStatsInfo: View {
    var body: some View {
        HStack(spacing: 12) {
            VStack(spacing: 4) {
                Text("150+")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(Color(red: 0.098, green: 0.463, blue: 0.824))
                
                Text("पंजीकृत अस्पताल")
                    .font(.system(size: 12))
                    .foregroundColor(.secondary)
            }
            .frame(maxWidth: .infinity)
            .padding(16)
            .background(Color(red: 0.89, green: 0.949, blue: 0.992))
            .cornerRadius(12)
            
            VStack(spacing: 4) {
                Text("500+")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(Color(red: 0.098, green: 0.463, blue: 0.824))
                
                Text("विशेषज्ञ डॉक्टर")
                    .font(.system(size: 12))
                    .foregroundColor(.secondary)
            }
            .frame(maxWidth: .infinity)
            .padding(16)
            .background(Color(red: 0.89, green: 0.949, blue: 0.992))
            .cornerRadius(12)
        }
        .padding(.horizontal, 16)
    }
}
