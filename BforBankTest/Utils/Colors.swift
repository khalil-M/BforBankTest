//
//  Colors.swift
//  BforBankTest
//
//  Created by User on 15/05/2024.
//

import SwiftUI
extension Color {
    static func getBackgroundColor(colorScheme: ColorScheme) -> Color {
        return colorScheme == .dark ? Color.black : Color.white
    }
}
