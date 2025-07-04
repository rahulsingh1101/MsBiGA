//
//  LaunchScreenView.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct LaunchScreenView: View {
    @State private var imageOpacity: Double = 0.0
    
    var body: some View {
        GeometryReader { geometry in
            Image("launch_image") // Change this name to match your asset
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: geometry.size.width, height: geometry.size.height)
                .clipped()
                .opacity(imageOpacity)
        }
        .ignoresSafeArea(.all) // This ensures it covers the entire screen including status bar
        .onAppear {
            withAnimation(.easeIn(duration: 0.5)) {
                imageOpacity = 1.0
            }
        }
    }
}
