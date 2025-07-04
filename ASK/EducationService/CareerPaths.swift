//
//  CareerPaths.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct CareerPaths: View {
    let careers = [
        ("⚕️", "मेडिकल", "NEET, AIIMS"),
        ("⚙️", "इंजीनियरिंग", "JEE, State CET"),
        ("📊", "कॉमर्स", "CA, CS, CMA"),
        ("👮", "सरकारी नौकरी", "UPSC, SSC, Banking")
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("करियर विकल्प")
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(.primary)
                .padding(.horizontal, 16)
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 2), spacing: 12) {
                ForEach(careers.indices, id: \.self) { index in
                    VStack(spacing: 8) {
                        Text(careers[index].0)
                            .font(.system(size: 32))
                        
                        Text(careers[index].1)
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(.primary)
                        
                        Text(careers[index].2)
                            .font(.system(size: 12))
                            .foregroundColor(.secondary)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(16)
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(color: .black.opacity(0.05), radius: 2, y: 2)
                }
            }
            .padding(.horizontal, 16)
        }
    }
}
