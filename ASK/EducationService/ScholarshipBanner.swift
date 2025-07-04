//
//  ScholarshipBanner.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct ScholarshipBanner: View {
    var body: some View {
        HStack(spacing: 16) {
            Text("💰")
                .font(.system(size: 32))
            
            VStack(alignment: .leading, spacing: 4) {
                Text("छात्रवृत्ति खोजें")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(Color(red: 0.961, green: 0.478, blue: 0.090))
                
                Text("आपके लिए उपलब्ध सभी स्कॉलरशिप देखें")
                    .font(.system(size: 13))
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            Text("→")
                .font(.system(size: 20))
                .foregroundColor(.secondary)
        }
        .padding(16)
        .background(
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(red: 1.0, green: 0.922, blue: 0.231),
                    Color(red: 1.0, green: 0.757, blue: 0.027)
                ]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
        .cornerRadius(12)
        .padding(.horizontal, 16)
    }
}
