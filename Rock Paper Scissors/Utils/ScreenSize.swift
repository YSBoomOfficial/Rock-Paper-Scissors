//
//  ScreenSize.swift
//  Rock Paper Scissors
//
//  Created by Yash Shah on 21/09/2021.
//

import SwiftUI

enum ScreenSize {
	static let width: CGFloat = UIScreen.main.bounds.width
	static let height: CGFloat = UIScreen.main.bounds.height
	static let minLength = min(width, height)
	static let maxLength = max(width, height)
}
