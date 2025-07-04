//
//  ContentView.swift
//  ASK
//
//  Created by Rahul Singh on 03/07/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showLaunchScreen = true
    
    var body: some View {
        ZStack {
            if showLaunchScreen {
                LaunchScreenView()
                    .onAppear {
                        // Hide launch screen after 3 seconds
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                            withAnimation(.easeInOut(duration: 0.5)) {
                                showLaunchScreen = false
                            }
                        }
                    }
            } else {
                NavigationView {
                    HomeView()
                }
                .transition(.opacity)
            }
        }
    }
}
