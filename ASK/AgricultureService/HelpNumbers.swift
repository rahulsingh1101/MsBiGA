//
//  HelpNumbers.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct HelpNumbers: View {
    let numbers = [
        ("किसान कॉल सेंटर", "1800-180-1551"),
        ("कृषि विभाग", "0612-2547066")
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("महत्वपूर्ण हेल्पलाइन नंबर 📞")
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(Color(red: 0.184, green: 0.490, blue: 0.196))
            
            VStack(spacing: 8) {
                ForEach(numbers.indices, id: \.self) { index in
                    HStack {
                        Text(numbers[index].0)
                            .font(.system(size: 14))
                            .foregroundColor(.primary)
                        
                        Spacer()
                        
                        Text(numbers[index].1)
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(Color(red: 0.106, green: 0.369, blue: 0.125))
                    }
                }
            }
        }
        .padding(16)
        .background(Color(red: 0.910, green: 0.961, blue: 0.914))
        .cornerRadius(12)
        .padding(.horizontal, 16)
    }
}
