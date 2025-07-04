//
//  RequestFilterSection.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct RequestFilterSection: View {
    @Binding var selectedFilter: String
    let filters: [String]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                ForEach(filters, id: \.self) { filter in
                    Button(action: {
                        selectedFilter = filter
                    }) {
                        Text(filter)
                            .font(.system(size: 14))
                            .foregroundColor(selectedFilter == filter ? .white : .secondary)
                            .padding(.horizontal, 16)
                            .padding(.vertical, 8)
                            .background(
                                selectedFilter == filter ?
                                Color(red: 0.098, green: 0.463, blue: 0.824) :
                                Color(.systemGray6)
                            )
                            .cornerRadius(20)
                    }
                }
            }
            .padding(.horizontal, 16)
        }
        .padding(.vertical, 16)
        .background(Color.white)
        .shadow(color: .black.opacity(0.05), radius: 2, y: 2)
    }
}
