//
//  StudentLevelSelector.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct StudentLevelSelector: View {
    @Binding var selectedLevel: String
    let levels: [String]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("आप किस स्तर पर हैं?")
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(.primary)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(levels, id: \.self) { level in
                        Button(action: {
                            selectedLevel = level
                        }) {
                            Text(level)
                                .font(.system(size: 14))
                                .foregroundColor(selectedLevel == level ? .white : .primary)
                                .padding(.horizontal, 16)
                                .padding(.vertical, 8)
                                .background(
                                    selectedLevel == level ?
                                    Color(red: 0.220, green: 0.557, blue: 0.235) :
                                    Color(.systemGray6)
                                )
                                .cornerRadius(20)
                        }
                    }
                }
                .padding(.horizontal, 16)
            }
        }
        .padding(16)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: .black.opacity(0.05), radius: 2, y: 2)
        .padding(.horizontal, 16)
    }
}
