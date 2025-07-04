//
//  InfoBanner.swift
//  ASK
//
//  Created by Rahul Singh on 03/07/25.
//

import SwiftUICore

struct SchemesInfoBanner: View {
    var body: some View {
        HStack(spacing: 12) {
            Text("💡")
                .font(.system(size: 24))
                .foregroundColor(Color(red: 0.0, green: 0.475, blue: 0.420))
            
            VStack(alignment: .leading, spacing: 4) {
                Text("आपके लिए उपयुक्त योजनाएं")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(Color(red: 0.0, green: 0.475, blue: 0.420))
                
                Text("आपकी प्रोफाइल के आधार पर हमने 12 योजनाएं खोजी हैं जिनके लिए आप पात्र हो सकते हैं")
                    .font(.system(size: 12))
                    .foregroundColor(.secondary)
                    .lineLimit(3)
            }
            
            Spacer()
        }
        .padding(16)
        .background(Color(red: 0.878, green: 0.949, blue: 0.941))
        .cornerRadius(12)
        .padding(.horizontal, 16)
    }
}
