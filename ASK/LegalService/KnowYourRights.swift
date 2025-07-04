//
//  KnowYourRights.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct KnowYourRights: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("अपने अधिकार जानें 📖")
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(Color(red: 0.247, green: 0.318, blue: 0.710))
            
            VStack(alignment: .leading, spacing: 4) {
                Text("• पुलिस गिरफ्तारी के नियम")
                Text("• महिला अधिकार")
                Text("• उपभोक्ता संरक्षण")
                Text("• RTI कैसे करें")
            }
            .font(.system(size: 14))
            .foregroundColor(.primary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(16)
        .background(Color(red: 0.910, green: 0.918, blue: 0.965))
        .cornerRadius(12)
        .padding(.horizontal, 16)
    }
}
