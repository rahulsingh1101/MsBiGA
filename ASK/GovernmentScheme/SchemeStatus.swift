//
//  SchemeStatus.swift
//  ASK
//
//  Created by Rahul Singh on 03/07/25.
//

import SwiftUICore

enum SchemeStatus {
    case active
    case new
    
    var title: String {
        switch self {
        case .active: return "सक्रिय"
        case .new: return "नई"
        }
    }
    
    var textColor: Color {
        switch self {
        case .active: return Color(red: 0.298, green: 0.686, blue: 0.314)
        case .new: return Color(red: 1.0, green: 0.596, blue: 0.0)
        }
    }
    
    var backgroundColor: Color {
        switch self {
        case .active: return Color(red: 0.298, green: 0.686, blue: 0.314).opacity(0.2)
        case .new: return Color(red: 1.0, green: 0.596, blue: 0.0).opacity(0.2)
        }
    }
}
