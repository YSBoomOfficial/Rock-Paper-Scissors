//
//  LightBlueButton+View.swift
//  Rock Paper Scissors
//
//  Created by Yash Shah on 12/06/2022.
//

import SwiftUI

struct LightBlueButton: ButtonStyle {
	func makeBody(configuration: Configuration) -> some View {
		configuration.label
			.foregroundColor(.white)
			.padding(8)
			.background(
				Circle()
					.foregroundColor(.blue.opacity(0.5))
			)
	}
}

extension ButtonStyle where Self == LightBlueButton {
	static var lightBlue: LightBlueButton { .init() }
}
