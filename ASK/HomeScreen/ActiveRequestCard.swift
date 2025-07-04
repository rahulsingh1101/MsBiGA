//
//  ActiveRequestCard.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct ActiveRequestCard: View {
    let id: String
    let type: String
    let date: String
    let description: String
    let metaItems: [(String, String)]
    let status: ActiveRequestStatus
    let assignedTo: String
    let agentInitials: String?
    let actionText: String
    let showTimeline: Bool
    let timelineItems: [(String, String)]
    
    init(id: String, type: String, date: String, description: String, metaItems: [(String, String)], status: ActiveRequestStatus, assignedTo: String, agentInitials: String?, actionText: String, showTimeline: Bool = false, timelineItems: [(String, String)] = []) {
        self.id = id
        self.type = type
        self.date = date
        self.description = description
        self.metaItems = metaItems
        self.status = status
        self.assignedTo = assignedTo
        self.agentInitials = agentInitials
        self.actionText = actionText
        self.showTimeline = showTimeline
        self.timelineItems = timelineItems
    }
    
    var body: some View {
        VStack(spacing: 12) {
            requestHeader
            requestContent
            requestFooter
            if showTimeline {
                timelineSection
            }
        }
        .padding(16)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: .black.opacity(0.05), radius: 2, y: 2)
    }
    
    // MARK: - Sub-components
    
    private var requestHeader: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text(id)
                    .font(.system(size: 12))
                    .foregroundColor(Color(red: 0.6, green: 0.6, blue: 0.6)) // #999
                
                Text(type)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2)) // #333
                
                Text(date)
                    .font(.system(size: 12))
                    .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4)) // #666
            }
            
            Spacer()
            
            statusBadge
        }
    }
    
    private var statusBadge: some View {
        Text(status.title)
            .font(.system(size: 12, weight: .medium))
            .foregroundColor(status.textColor)
            .padding(.horizontal, 12)
            .padding(.vertical, 6)
            .background(status.backgroundColor)
            .cornerRadius(16)
    }
    
    private var requestContent: some View {
        VStack(spacing: 8) {
            Text(description)
                .font(.system(size: 14))
                .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4)) // #666
                .frame(maxWidth: .infinity, alignment: .leading)
            
            metaItemsView
        }
    }
    
    private var metaItemsView: some View {
        HStack(spacing: 16) {
            ForEach(metaItems.indices, id: \.self) { index in
                HStack(spacing: 4) {
                    Text(metaItems[index].0)
                    Text(metaItems[index].1)
                }
                .font(.system(size: 13))
                .foregroundColor(Color(red: 0.533, green: 0.533, blue: 0.533)) // #888
            }
            Spacer()
        }
    }
    
    private var requestFooter: some View {
        VStack(spacing: 0) {
            Rectangle()
                .frame(height: 1)
                .foregroundColor(Color(.systemGray5))
            
            HStack {
                assignmentInfo
                Spacer()
                actionButton
            }
            .padding(.top, 12)
        }
    }
    
    private var assignmentInfo: some View {
        HStack(spacing: 8) {
            if let initials = agentInitials {
                agentAvatar(initials: initials)
            }
            
            Text(assignedTo)
                .font(.system(size: 13))
                .foregroundColor(status == .pending ? Color(red: 1.0, green: 0.596, blue: 0.0) : Color(red: 0.4, green: 0.4, blue: 0.4)) // #666 for normal, orange for pending
        }
    }
    
    private func agentAvatar(initials: String) -> some View {
        ZStack {
            Circle()
                .fill(Color(red: 0.89, green: 0.949, blue: 0.992))
                .frame(width: 24, height: 24)
            
            Text(initials)
                .font(.system(size: 11, weight: .medium))
                .foregroundColor(Color(red: 0.098, green: 0.463, blue: 0.824))
        }
    }
    
    private var actionButton: some View {
        Button(action: {
            // Handle action
        }) {
            Text(actionText)
                .font(.system(size: 13, weight: .medium))
                .foregroundColor(.white)
                .padding(.horizontal, 16)
                .padding(.vertical, 6)
                .background(Color(red: 0.098, green: 0.463, blue: 0.824))
                .cornerRadius(16)
        }
    }
    
    private var timelineSection: some View {
        VStack(spacing: 0) {
            Rectangle()
                .frame(height: 1)
                .foregroundColor(Color(.systemGray5))
            
            VStack(alignment: .leading, spacing: 12) {
                Text("प्रगति विवरण")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2)) // #333
                
                timelineList
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 16)
        }
    }
    
    private var timelineList: some View {
        VStack(spacing: 12) {
            ForEach(timelineItems.indices, id: \.self) { index in
                timelineItem(index: index)
            }
        }
    }
    
    private func timelineItem(index: Int) -> some View {
        HStack(spacing: 12) {
            Circle()
                .fill(Color(red: 0.098, green: 0.463, blue: 0.824))
                .frame(width: 8, height: 8)
                .offset(y: 2)
            
            VStack(alignment: .leading, spacing: 2) {
                Text(timelineItems[index].0)
                    .font(.system(size: 13))
                    .foregroundColor(Color(red: 0.4, green: 0.4, blue: 0.4)) // #666
                
                Text(timelineItems[index].1)
                    .font(.system(size: 11))
                    .foregroundColor(Color(red: 0.6, green: 0.6, blue: 0.6)) // #999
            }
            
            Spacer()
        }
    }
}
