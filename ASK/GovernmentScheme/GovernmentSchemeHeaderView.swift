//
//  HeaderView.swift
//  ASK
//
//  Created by Rahul Singh on 03/07/25.
//

import SwiftUICore
import SwiftUI

struct GovernmentSchemeHeaderView: View {
    let presentationMode: Binding<PresentationMode>
    
    var body: some View {
        HStack(spacing: 16) {
            // Back Button
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                ZStack {
                    Circle()
                        .fill(Color.white.opacity(0.2))
                        .frame(width: 40, height: 40)
                    
                    Image(systemName: "chevron.left")
                        .font(.system(size: 20, weight: .medium))
                        .foregroundColor(.white)
                }
            }
            
            // Header Content
            VStack(alignment: .leading, spacing: 2) {
                Text("सरकारी योजनाएं")
                    .font(.system(size: 20, weight: .medium))
                    .foregroundColor(.white)
                
                Text("केंद्र एवं राज्य सरकार की योजनाएं")
                    .font(.system(size: 12))
                    .foregroundColor(.white.opacity(0.8))
            }
            
            Spacer()
            
            // Search Button
            Button(action: {
                // Handle search action
            }) {
                ZStack {
                    Circle()
                        .fill(Color.white.opacity(0.2))
                        .frame(width: 40, height: 40)
                    
                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                }
            }
        }
        .padding(16)
        .background(Color(red: 0.0, green: 0.475, blue: 0.420))
        .shadow(color: .black.opacity(0.1), radius: 2, y: 2)
    }
}
