//
//  EducationBottomHelp.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct EducationBottomHelp: View {
    var body: some View {
        VStack(spacing: 8) {
            Text("करियर के बारे में कोई सवाल?")
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(.white)
            
            Text("हमारे विशेषज्ञ काउंसलर से बात करें")
                .font(.system(size: 14))
                .foregroundColor(.white.opacity(0.9))
            
            Button(action: {
                // Handle action
            }) {
                Text("अभी बुक करें")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(Color(red: 0.220, green: 0.557, blue: 0.235))
                    .padding(.horizontal, 24)
                    .padding(.vertical, 10)
                    .background(Color.white)
                    .cornerRadius(8)
            }
        }
        .frame(maxWidth: .infinity)
        .padding(16)
        .background(Color(red: 0.220, green: 0.557, blue: 0.235))
        .cornerRadius(12)
        .padding(.horizontal, 16)
    }
}
