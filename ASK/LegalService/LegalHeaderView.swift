//
//  LegalHeaderView.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct LegalHeaderView: View {
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
                Text("कानूनी सहायता")
                    .font(.system(size: 20, weight: .medium))
                    .foregroundColor(.white)
                
                Text("न्याय तक आपकी पहुंच सुनिश्चित करना")
                    .font(.system(size: 12))
                    .foregroundColor(.white.opacity(0.9))
            }
            
            Spacer()
            
            Text("⚖️")
                .font(.system(size: 24))
        }
        .padding(16)
        .background(Color(red: 0.482, green: 0.122, blue: 0.635))
        .shadow(color: .black.opacity(0.1), radius: 2, y: 2)
    }
}
