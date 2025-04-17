//
//  CardContainer.swift
//  DesignSystem
//
//  Created by Muhammad Hassan on 2025-04-17.
//

import SwiftUI

public enum CardContainerType {
    case elevated(_ elevation: ElevationLevel)
    case outlined
    case filled(_ color: Color)
    case outlinedWithFilledColor(_ color: Color)
}

public extension CardContainerType {
    func stringValue() -> String {
        switch self {
        case .elevated:
            return "Elevated"
        case .outlined:
            return "Outlined"
        case .filled:
            return "Filled"
        case .outlinedWithFilledColor:
            return "OutlinedWithFilledColor"
        }
    }
}

extension CardContainerType: Equatable {
    public static func == (lhs: CardContainerType, rhs: CardContainerType) -> Bool {
        switch (lhs, rhs) {
        case (.elevated, .elevated), (.outlined, .outlined), (.filled, .filled), (.outlinedWithFilledColor, .outlinedWithFilledColor):
            return true
        default:
            return false
        }
    }
}

extension CardContainerType: Hashable {
    public func hash(into hasher: inout Hasher) {
        switch self {
        case .elevated(let value):
            hasher.combine(value)
        case .outlined:
            hasher.combine(100)
        case .filled(let value):
            hasher.combine(value)
        case .outlinedWithFilledColor(let value):
            hasher.combine(value)
        }
    }
}

public struct CardContainer<Content: View>: View {
    var content: () -> Content
    let cardContainerType: CardContainerType
    
    public init(cardContainerType: CardContainerType, @ViewBuilder _ contet: @escaping () -> Content) {
        self.content = contet
        self.cardContainerType = cardContainerType
    }
    
    public var body: some View {
        ZStack {
            switch cardContainerType {
            case .elevated(let elevation):
                ZStack {
                    RoundedRectangle(cornerRadius: Spacing.dp8)
                        .fill(ThemeColors.surface.primaryTint.color)
                }
                .elevation(elevation)
            case .outlined:
                ZStack {
                    RoundedRectangle(cornerRadius: Spacing.dp8)
                        .fill(ThemeColors.appBackground.primary.color)
                    RoundedRectangle(cornerRadius: Spacing.dp8)
                        .stroke(ThemeColors.separator.primary.color, lineWidth: 1)
                }
            case .filled(let color):
                RoundedRectangle(cornerRadius: Spacing.dp8)
                    .foregroundStyle(color)
            case .outlinedWithFilledColor(let color):
                ZStack {
                    RoundedRectangle(cornerRadius: Spacing.dp8)
                        .fill(color)
                    RoundedRectangle(cornerRadius: Spacing.dp8)
                        .stroke(ThemeColors.separator.primary.color, lineWidth: 1)
                }
            }
            
            content()
                .cornerRadius(3.0)
        }
    }
}
