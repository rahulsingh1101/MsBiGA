//
//  StudyResources.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct StudyResources: View {
    let resources = [
        ("📖", "NCERT"),
        ("🎥", "वीडियो"),
        ("📝", "मॉक टेस्ट"),
        ("📊", "पिछले पेपर"),
        ("💡", "टिप्स"),
        ("📚", "नोट्स")
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("अध्ययन संसाधन")
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(.primary)
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: 10) {
                ForEach(resources.indices, id: \.self) { index in
                    VStack(spacing: 4) {
                        Text(resources[index].0)
                            .font(.system(size: 24))
                        
                        Text(resources[index].1)
                            .font(.system(size: 11))
                            .foregroundColor(.primary)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(12)
                    .background(Color.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(.systemGray4), lineWidth: 1)
                    )
                    .cornerRadius(8)
                }
            }
        }
        .padding(16)
        .background(Color(.systemGray6))
        .cornerRadius(12)
        .padding(.horizontal, 16)
    }
}
