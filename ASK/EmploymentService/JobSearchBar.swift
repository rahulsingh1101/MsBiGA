//
//  JobSearchBar.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct JobSearchBar: View {
    @Binding var searchText: String
    @Binding var selectedFilter: String
    let filters: [String]
    
    var body: some View {
        VStack(spacing: 12) {
            HStack(spacing: 8) {
                TextField("नौकरी या कंपनी खोजें...", text: $searchText)
                    .padding(12)
                    .background(Color.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(.systemGray4), lineWidth: 1)
                    )
                    .cornerRadius(8)
                
                Button(action: {
                    // Handle search
                }) {
                    Text("खोजें")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(.white)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 12)
                        .background(Color(red: 0.961, green: 0.486, blue: 0.0))
                        .cornerRadius(8)
                }
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(filters, id: \.self) { filter in
                        Button(action: {
                            selectedFilter = filter
                        }) {
                            Text(filter)
                                .font(.system(size: 13))
                                .foregroundColor(selectedFilter == filter ? .white : Color(red: 0.961, green: 0.486, blue: 0.0))
                                .padding(.horizontal, 16)
                                .padding(.vertical, 6)
                                .background(
                                    selectedFilter == filter ?
                                    Color(red: 0.961, green: 0.486, blue: 0.0) :
                                    Color(red: 1.0, green: 0.949, blue: 0.878)
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
