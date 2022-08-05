//
//  ButtonImage.swift
//  Rock Paper Scissors
//
//  Created by Yash Shah on 21/09/2021.
//

import SwiftUI

struct OptionButton: View {
	let proxy: GeometryProxy
	let symbol: String
	let title: String
	let onPressCondition: Bool

	var body: some View {
		VStack {
			Text(symbol)
				.font(.system(size: proxy.size.width/7.5))
				.padding()
				.background(
					Circle()
						.foregroundColor(onPressCondition ? .blue.opacity(0.5) : .blue)
				)

			Text(title)
				.font(.system(.title))
				.font(.callout)
				.fontWeight(.semibold)
				.foregroundColor(onPressCondition ? .white.opacity(0.5) : .white)
		}.scaleEffect(onPressCondition ? 0.95 : 1)
	}
}

struct ButtonImage_Previews: PreviewProvider {
	static var previews: some View {
		GeometryReader { proxy in
			ZStack {
				BGView(proxy: proxy)
				HStack {
					OptionButton(
						proxy: proxy,
						symbol: GameModel.rpsChoices[1].symbol,
						title: GameModel.rpsChoices[1].word,
						onPressCondition: true
					)
					OptionButton(
						proxy: proxy,
						symbol: GameModel.rpsChoices[1].symbol,
						title: GameModel.rpsChoices[1].word,
						onPressCondition: false
					)
				}
			}
		}
	}
}
