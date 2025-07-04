//
//  ActiveRequestsHeaderView.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct ActiveRequestsHeaderView: View {
    let presentationMode: Binding<PresentationMode>
    
    var body: some View {
        HStack(spacing: 16) {
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
            
            VStack(alignment: .leading, spacing: 2) {
                Text("मेरे अनुरोध")
                    .font(.system(size: 20, weight: .medium))
                    .foregroundColor(.white)
                
                Text("सभी सेवा अनुरोधों की स्थिति देखें")
                    .font(.system(size: 12))
                    .foregroundColor(.white.opacity(0.9))
            }
            
            Spacer()
            
            Text("📋")
                .font(.system(size: 24))
        }
        .padding(16)
        .background(Color(red: 0.098, green: 0.463, blue: 0.824))
        .shadow(color: .black.opacity(0.1), radius: 2, y: 2)
    }
}
