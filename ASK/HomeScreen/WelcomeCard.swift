//
//  WelcomeCard.swift
//  ASK
//
//  Created by Rahul Singh on 03/07/25.
//

import SwiftUICore

struct WelcomeCard: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("नमस्ते, राहुल जी! 🙏")
                .font(.system(size: 22, weight: .medium))
                .foregroundColor(.white)
            
            Text("आपके 2 सक्रिय अनुरोध हैं")
                .font(.system(size: 14))
                .foregroundColor(.white.opacity(0.9))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(20)
        .background(
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(red: 0.098, green: 0.463, blue: 0.824),
                    Color(red: 0.259, green: 0.647, blue: 0.961)
                ]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
        .cornerRadius(16)
        .shadow(color: .black.opacity(0.1), radius: 4, y: 4)
    }
}
