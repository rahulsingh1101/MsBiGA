//
//  ExpertConsultation.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct ExpertConsultation: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("कृषि विशेषज्ञ से बात करें 👨‍🌾")
                .font(.system(size: 18, weight: .semibold))
                .foregroundColor(Color(red: 0.106, green: 0.369, blue: 0.125))
            
            Text("फसल की समस्याओं का तुरंत समाधान पाएं")
                .font(.system(size: 14))
                .foregroundColor(Color(red: 0.184, green: 0.490, blue: 0.196))
            
            Button(action: {
                // Handle action
            }) {
                Text("अभी कॉल करें")
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
                    Color(red: 0.647, green: 0.839, blue: 0.655)
                ]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
        .cornerRadius(12)
        .padding(.horizontal, 16)
    }
}
