//
//  WeatherWidget.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct WeatherWidget: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text("📍 बक्सर, बिहार")
                    .font(.system(size: 14))
                    .foregroundColor(.white.opacity(0.9))
                
                Text("28°C")
                    .font(.system(size: 32, weight: .bold))
                    .foregroundColor(.white)
                
                Text("आंशिक बादल, बारिश की संभावना")
                    .font(.system(size: 14))
                    .foregroundColor(.white)
            }
            
            Spacer()
            
            Text("⛅")
                .font(.system(size: 48))
        }
        .padding(16)
        .background(
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(red: 0.506, green: 0.780, blue: 0.518),
                    Color(red: 0.400, green: 0.733, blue: 0.416)
                ]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
        .cornerRadius(12)
        .padding(.horizontal, 16)
    }
}
