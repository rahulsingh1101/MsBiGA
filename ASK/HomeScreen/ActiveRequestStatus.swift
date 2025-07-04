//
//  ActiveRequestStatus.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore

enum ActiveRequestStatus {
    case pending
    case progress
    case completed
    case cancelled
    
    var title: String {
        switch self {
        case .pending: return "लंबित"
        case .progress: return "प्रगति में"
        case .completed: return "पूर्ण"
        case .cancelled: return "रद्द"
        }
    }
    
    var textColor: Color {
        switch self {
        case .pending: return Color(red: 1.0, green: 0.596, blue: 0.0)
        case .progress: return Color(red: 0.129, green: 0.588, blue: 0.953)
        case .completed: return Color(red: 0.298, green: 0.686, blue: 0.314)
        case .cancelled: return Color(red: 0.957, green: 0.263, blue: 0.212)
        }
    }
    
    var backgroundColor: Color {
        switch self {
        case .pending: return Color(red: 1.0, green: 0.596, blue: 0.0).opacity(0.2)
        case .progress: return Color(red: 0.129, green: 0.588, blue: 0.953).opacity(0.2)
        case .completed: return Color(red: 0.298, green: 0.686, blue: 0.314).opacity(0.2)
        case .cancelled: return Color(red: 0.957, green: 0.263, blue: 0.212).opacity(0.2)
        }
    }
}
