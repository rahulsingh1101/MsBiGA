//
//  SchemesSection.swift
//  ASK
//
//  Created by Rahul Singh on 03/07/25.
//

import SwiftUICore

struct SchemesSectionContent: View {
    var body: some View {
        VStack(spacing: 16) {
            // Section Header
            HStack {
                Text("उपलब्ध योजनाएं")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(.primary)
                
                Spacer()
                
                Text("कुल 25 योजनाएं")
                    .font(.system(size: 14))
                    .foregroundColor(.secondary)
            }
            .padding(.horizontal, 16)
            
            // Scheme Cards
            VStack(spacing: 12) {
                SchemeCard(
                    title: "प्रधानमंत्री आवास योजना (PMAY)",
                    ministry: "आवास एवं शहरी मामलों का मंत्रालय",
                    description: "सभी के लिए किफायती आवास उपलब्ध कराने हेतु केंद्र सरकार की महत्वाकांक्षी योजना",
                    tags: ["आवास", "सब्सिडी", "ऋण"],
                    benefits: [
                        "होम लोन पर 2.67 लाख रुपये तक की सब्सिडी",
                        "6.5% की रियायती ब्याज दर"
                    ],
                    status: .active,
                    eligibility: .eligible,
                    buttonText: "आवेदन करें"
                )
                
                SchemeCard(
                    title: "आयुष्मान भारत योजना",
                    ministry: "स्वास्थ्य एवं परिवार कल्याण मंत्रालय",
                    description: "5 लाख रुपये तक का मुफ्त स्वास्थ्य बीमा कवर प्रदान करने वाली योजना",
                    tags: ["स्वास्थ्य", "बीमा", "परिवार"],
                    benefits: [
                        "प्रति परिवार 5 लाख रुपये का कवर",
                        "1350+ बीमारियों का इलाज",
                        "कैशलेस उपचार सुविधा"
                    ],
                    status: .active,
                    eligibility: .checkRequired,
                    buttonText: "जानें और"
                )
                
                SchemeCard(
                    title: "PM-KISAN सम्मान निधि",
                    ministry: "कृषि एवं किसान कल्याण मंत्रालय",
                    description: "छोटे और सीमांत किसानों को प्रति वर्ष 6000 रुपये की आर्थिक सहायता",
                    tags: ["किसान", "DBT", "वार्षिक"],
                    benefits: [
                        "2000 रुपये की 3 किस्तें प्रति वर्ष",
                        "सीधे बैंक खाते में भुगतान"
                    ],
                    status: .new,
                    eligibility: .eligible,
                    buttonText: "रजिस्टर करें"
                )
            }
            .padding(.horizontal, 16)
        }
    }
}
