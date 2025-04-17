//
//  ThemeColors.swift
//  DesignSystem
//
//  Created by Muhammad Hassan on 2025-04-17.
//

import SwiftUI

public protocol PrimaryColors {
    var goozamRed: ColorAsset { get }
    var primary: ColorAsset { get }
    var primaryText: ColorAsset { get }
    var secondary: ColorAsset { get }
    var citrine: ColorAsset { get }
}

public extension PrimaryColors {
    var goozamRed: ColorAsset {
        ColorAsset(assetName: "goozamRed")
    }
    
    var primary: ColorAsset {
        ColorAsset(assetName: "primary")
    }
    
    var primaryText: ColorAsset {
        ColorAsset(assetName: "primaryText")
    }
    
    var secondary: ColorAsset {
        ColorAsset(assetName: "secondary")
    }
    
    var citrine: ColorAsset {
        ColorAsset(assetName: "citrine")
    }
}

public struct EmeraldColors: PrimaryColors {
    public init() { }
}

public protocol AppBackgroundColors {
    var primary: ColorAsset { get }
    var secondary: ColorAsset { get }
    var clari: ColorAsset { get }
}

public extension AppBackgroundColors {
    var primary: ColorAsset {
        ColorAsset(assetName: "primaryBackgroundTint")
    }
    
    var secondary: ColorAsset {
        ColorAsset(assetName: "secondaryBackgroundTint")
    }
    
    var clari: ColorAsset {
        ColorAsset(assetName: "clariBackgroundTint")
    }
}

public struct EmeraldAppBackgroundColors: AppBackgroundColors {
    public init() { }
}

public protocol SeparatorColors {
    var primary: ColorAsset { get }
    var thick: ColorAsset { get }
    var primaryBorder: ColorAsset { get }
    var secondaryBorder: ColorAsset { get }
}

public extension SeparatorColors {
    var primary: ColorAsset {
        DefaultGlobalColors().global4
    }
    
    var thick: ColorAsset {
        ColorAsset(assetName: "separatorThick")
    }
    
    var primaryBorder: ColorAsset {
        ColorAsset(assetName: "primaryBorder")
    }
    
    var secondaryBorder: ColorAsset {
        ColorAsset(assetName: "secondaryBorder")
    }
}

public struct EmeraldSeparatorColors: SeparatorColors {
    public init() { }
}

public protocol TextColors {
    var primary: ColorAsset { get }
    var secondary: ColorAsset { get }
    var tertiary: ColorAsset { get }
    var quaternary: ColorAsset { get }
    var error: ColorAsset { get }
    var disabled: ColorAsset { get }
}

public extension TextColors {
    var primary: ColorAsset {
        DefaultGlobalColors().global0
    }
    
    var secondary: ColorAsset {
        DefaultGlobalColors().global1
    }
    
    var tertiary: ColorAsset {
        DefaultGlobalColors().global2
    }
    
    var quaternary: ColorAsset {
        DefaultGlobalColors().global5
    }
    
    var error: ColorAsset {
        DefaultGlobalColors().danger
    }
    
    var disabled: ColorAsset {
        DefaultGlobalColors().global4
    }
}

public struct EmeraldTextColors: TextColors {
    public init() { }
}

@MainActor
public protocol LinkColors {
    var primary: ColorAsset { get }
    var destructive: ColorAsset { get }
}

public extension LinkColors {
    var primary: ColorAsset {
        ThemeColors.primary.primaryText
    }
    
    var destructive: ColorAsset {
        ColorAsset(assetName: "linkDestructive")
    }
}

public struct EmeraldLinkColors: LinkColors {
    public init() { }
}

public protocol SurfaceColors {
    var primaryTint: ColorAsset { get }
    var secondaryTint: ColorAsset { get }
    var tertiaryTint: ColorAsset { get }
    var quaternaryTint: ColorAsset { get }
}

public extension SurfaceColors {
    var primaryTint: ColorAsset {
        ColorAsset(assetName: "primaryTint")
    }
    
    var secondaryTint: ColorAsset {
        ColorAsset(assetName: "secondaryTint")
    }
    
    var tertiaryTint: ColorAsset {
        ColorAsset(assetName: "tertiaryTint")
    }
    
    var quaternaryTint: ColorAsset {
        ColorAsset(assetName: "quaternaryTint")
    }
}

public struct EmeraldSurfaceColors: SurfaceColors {
    public init() { }
}

@MainActor
public protocol StateColors {
    var primaryPressed: ColorAsset { get }
    var secondaryPressed: ColorAsset { get }
    var destructivePressed: ColorAsset { get }
    var secondaryDestructivePressed: ColorAsset { get }
    var tertiaryPressed: ColorAsset { get }
    var citrineTint: ColorAsset { get }
    var disabledFilled: ColorAsset { get }
    var disabledStroke: ColorAsset { get }
}

public extension StateColors {
    var primaryPressed: ColorAsset {
        ColorAsset(assetName: "primaryPressed")
    }
    
    var secondaryPressed: ColorAsset {
        ColorAsset(assetName: "secondaryPressed")
    }
    
    var destructivePressed: ColorAsset {
        ColorAsset(assetName: "destructivePressed")
    }
    
    var secondaryDestructivePressed: ColorAsset {
        ColorAsset(assetName: "secondaryDestructivePressed")
    }
    
    var tertiaryPressed: ColorAsset {
        ColorAsset(assetName: "tertiaryPressed")
    }
    
    var citrineTint: ColorAsset {
        ColorAsset(assetName: "citrineTint")
    }
    
    var disabledFilled: ColorAsset {
        ColorAsset(assetName: "disabledFilled")
    }
    
    var disabledStroke: ColorAsset {
        ThemeColors.global.global4
    }
}

public struct EmeraldStateColors: StateColors {
    public init() { }
}
