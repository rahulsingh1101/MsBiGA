//
//  CropCalendar.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct CropCalendar: View {
    @Binding var selectedMonth: String
    let months: [String]
    
    let activities = [
        ("🌾", "गेहूं - निराई व सिंचाई", "दूसरी सिंचाई बुवाई के 40-45 दिन बाद"),
        ("🥔", "आलू - कटाई की तैयारी", "90-100 दिन बाद खुदाई के लिए तैयार")
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("फसल कैलेंडर - जनवरी")
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(.primary)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(months, id: \.self) { month in
                        Button(action: {
                            selectedMonth = month
                        }) {
                            Text(month)
                                .font(.system(size: 13))
                                .foregroundColor(selectedMonth == month ? .white : .secondary)
                                .padding(.horizontal, 16)
                                .padding(.vertical, 6)
                                .background(
                                    selectedMonth == month ?
                                    Color(red: 0.408, green: 0.624, blue: 0.220) :
                                    Color.white
                                )
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color(.systemGray4), lineWidth: selectedMonth == month ? 0 : 1)
                                )
                                .cornerRadius(20)
                        }
                    }
                }
                .padding(.horizontal, 16)
            }
            
            VStack(spacing: 12) {
                ForEach(activities.indices, id: \.self) { index in
                    HStack(spacing: 12) {
                        ZStack {
                            Circle()
                                .fill(Color(red: 0.910, green: 0.961, blue: 0.914))
                                .frame(width: 40, height: 40)
                            
                            Text(activities[index].0)
                                .font(.system(size: 20))
                        }
                        
                        VStack(alignment: .leading, spacing: 2) {
                            Text(activities[index].1)
                                .font(.system(size: 14, weight: .medium))
                                .foregroundColor(.primary)
                            
                            Text(activities[index].2)
                                .font(.system(size: 12))
                                .foregroundColor(.secondary)
                        }
                        
                        Spacer()
                    }
                }
            }
            .padding(12)
            .background(Color.white)
            .cornerRadius(8)
        }
        .padding(16)
        .background(Color(.systemGray6))
        .cornerRadius(12)
        .padding(.horizontal, 16)
    }
}
