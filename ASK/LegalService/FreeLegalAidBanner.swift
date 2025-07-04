//
//  FreeLegalAidBanner.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct FreeLegalAidBanner: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("निःशुल्क कानूनी सहायता 🆓")
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(Color(red: 0.290, green: 0.078, blue: 0.549))
            
            Text("क्या आप जानते हैं? आर्थिक रूप से कमजोर वर्ग के लिए मुफ्त कानूनी सहायता उपलब्ध है।")
                .font(.system(size: 14))
                .foregroundColor(Color(red: 0.290, green: 0.078, blue: 0.549))
                .lineSpacing(2)
            
            Button(action: {
                // Handle action
            }) {
                Text("पात्रता जांचें")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .background(Color(red: 0.290, green: 0.078, blue: 0.549))
                    .cornerRadius(8)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(20)
        .background(
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(red: 0.882, green: 0.745, blue: 0.906),
                    Color(red: 0.807, green: 0.576, blue: 0.847)
                ]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
        .cornerRadius(12)
        .padding(.horizontal, 16)
    }
}
