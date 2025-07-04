//
//  SkillTraining.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct SkillTraining: View {
    let skills = ["कंप्यूटर कोर्स", "इलेक्ट्रिशियन", "मोबाइल रिपेयरिंग", "ब्यूटीशियन", "टेलरिंग", "ड्राइविंग"]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("लोकप्रिय कौशल प्रशिक्षण 🛠️")
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(Color(red: 0.898, green: 0.224, blue: 0.208))
            
            LazyVGrid(columns: [
                GridItem(.adaptive(minimum: 100))
            ], spacing: 8) {
                ForEach(skills, id: \.self) { skill in
                    Text(skill)
                        .font(.system(size: 13))
                        .foregroundColor(.secondary)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 6)
                        .background(Color.white)
                        .cornerRadius(16)
                }
            }
        }
        .padding(16)
        .background(Color(red: 1.0, green: 0.949, blue: 0.878))
        .cornerRadius(12)
        .padding(.horizontal, 16)
    }
}
