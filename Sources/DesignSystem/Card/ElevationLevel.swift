//
//  ElevationLevel.swift
//  DesignSystem
//
//  Created by Muhammad Hassan on 2025-04-17.
//

import SwiftUI

public enum ElevationLevel {
    case low
    case medium
    case high
}

public struct ShadowConfig {
    let color: Color
    let radius: CGFloat
    let offsetX: CGFloat
    let offsetY: CGFloat
}

public struct Elevation: ViewModifier {
    @Environment(\.colorScheme) var colorScheme
    
    let shadow0: ShadowConfig
    let shadow1: ShadowConfig
    
    public init(shadow0: ShadowConfig, shadow1: ShadowConfig) {
        self.shadow0 = shadow0
        self.shadow1 = shadow1
    }
    
    public func body(content: Content) -> some View {
        if colorScheme == .light {
            content
                .shadow(color: shadow0.color, radius: shadow0.radius, x: shadow0.offsetX, y: shadow0.offsetY)
                .shadow(color: shadow1.color, radius: shadow1.radius, x: shadow1.offsetX, y: shadow1.offsetY)
        } else {
            // No elevation(shadow) on dark mode
            content
        }
    }
}

public extension View {
    func elevation(_ level: ElevationLevel) -> some View {
        Group {
            let globalColors = DefaultGlobalColors()
            switch level {
            case .low:
                let shadow0 = ShadowConfig(color: globalColors.global0.color.opacity(0.06), radius: 4, offsetX: 0, offsetY: 1)
                let shadow1 = ShadowConfig(color: globalColors.global0.color.opacity(0.03), radius: 2, offsetX: 0, offsetY: 1)
                modifier(Elevation(shadow0: shadow0, shadow1: shadow1))
            case .medium:
                let shadow0 = ShadowConfig(color: globalColors.global0.color.opacity(0.06), radius: 7, offsetX: 0, offsetY: 1)
                let shadow1 = ShadowConfig(color: globalColors.global0.color.opacity(0.04), radius: 4, offsetX: 0, offsetY: 6)
                modifier(Elevation(shadow0: shadow0, shadow1: shadow1))
            case .high:
                let shadow0 = ShadowConfig(color: globalColors.global0.color.opacity(0.04), radius: 11, offsetX: 0, offsetY: 6)
                let shadow1 = ShadowConfig(color: globalColors.global0.color.opacity(0.08), radius: 7, offsetX: 0, offsetY: 12)
                modifier(Elevation(shadow0: shadow0, shadow1: shadow1))
            }
        }
    }
}
