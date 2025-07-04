//
//  SelfEmploymentBanner.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct SelfEmploymentBanner: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("स्वरोज़गार के अवसर 🚀")
                .font(.system(size: 18, weight: .semibold))
                .foregroundColor(Color(red: 0.106, green: 0.369, blue: 0.125))
            
            Text("अपना खुद का व्यवसाय शुरू करें। ऋण, प्रशिक्षण और मार्गदर्शन उपलब्ध।")
                .font(.system(size: 14))
                .foregroundColor(Color(red: 0.106, green: 0.369, blue: 0.125))
            
            Button(action: {
                // Handle action
            }) {
                Text("जानें और अधिक")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .background(Color(red: 0.106, green: 0.369, blue: 0.125))
                    .cornerRadius(8)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(20)
        .background(
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(red: 0.784, green: 0.902, blue: 0.788),
                    Color(red: 0.506, green: 0.843, blue: 0.518)
                ]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
        .cornerRadius(12)
        .padding(.horizontal, 16)
    }
}
