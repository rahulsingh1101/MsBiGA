//
//  EmploymentHeaderView.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct EmploymentHeaderView: View {
    let presentationMode: Binding<PresentationMode>
    
    var body: some View {
        HStack(spacing: 16) {
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "chevron.left")
                    .font(.system(size: 24, weight: .medium))
                    .foregroundColor(.white)
            }
            
            VStack(alignment: .leading, spacing: 2) {
                Text("रोज़गार सहयोग")
                    .font(.system(size: 20, weight: .medium))
                    .foregroundColor(.white)
                
                Text("आपके करियर की नई शुरुआत")
                    .font(.system(size: 12))
                    .foregroundColor(.white.opacity(0.9))
            }
            
            Spacer()
            
            Text("💼")
                .font(.system(size: 24))
        }
        .padding(16)
        .background(Color(red: 0.961, green: 0.486, blue: 0.0))
        .shadow(color: .black.opacity(0.1), radius: 2, y: 2)
    }
}
