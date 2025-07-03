//
//  SearchSection.swift
//  ASK
//
//  Created by Rahul Singh on 03/07/25.
//

import SwiftUICore
import SwiftUI

struct SearchSection: View {
    @Binding var searchText: String
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "magnifyingglass")
                .font(.system(size: 20))
                .foregroundColor(.secondary)
            
            TextField("योजना खोजें...", text: $searchText)
                .font(.system(size: 14))
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 12)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: .black.opacity(0.05), radius: 2, y: 2)
        .padding(.horizontal, 16)
    }
}
