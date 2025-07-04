//
//  MandiPrices.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct MandiPrices: View {
    let prices = [
        ("गेहूं", "₹2,125/क्विंटल", "↑ 2%", true),
        ("धान (बासमती)", "₹3,800/क्विंटल", "↑ 1.5%", true),
        ("मक्का", "₹1,975/क्विंटल", "↓ 0.5%", false),
        ("आलू", "₹1,200/क्विंटल", "↑ 3%", true)
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text("आज के मंडी भाव")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(Color(red: 0.898, green: 0.224, blue: 0.208))
                
                Spacer()
                
                Text("बक्सर मंडी")
                    .font(.system(size: 13))
                    .foregroundColor(.secondary)
            }
            
            VStack(spacing: 8) {
                ForEach(prices.indices, id: \.self) { index in
                    HStack {
                        Text(prices[index].0)
                            .font(.system(size: 14))
                            .foregroundColor(.primary)
                        
                        Spacer()
                        
                        HStack(spacing: 4) {
                            Text(prices[index].1)
                                .font(.system(size: 14, weight: .semibold))
                                .foregroundColor(Color(red: 0.184, green: 0.490, blue: 0.196))
                            
                            Text(prices[index].2)
                                .font(.system(size: 12))
                                .foregroundColor(prices[index].3 ? Color(red: 0.184, green: 0.490, blue: 0.196) : Color(red: 0.827, green: 0.184, blue: 0.184))
                        }
                    }
                    .padding(.vertical, 8)
                    .overlay(
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(Color(.systemGray6)),
                        alignment: .bottom
                    )
                }
            }
        }
        .padding(16)
        .background(Color(red: 1.0, green: 0.949, blue: 0.878))
        .cornerRadius(12)
        .padding(.horizontal, 16)
    }
}
