//
//  AICard.swift
//  Rock Paper Scissors
//
//  Created by Yash Shah on 21/09/2021.
//

import SwiftUI

struct AICard: View {
	let proxy: GeometryProxy
	let symbol: String
	let title: String
	let onShowCondition: Bool
	let shouldWinCondition: Bool
	
	var body: some View {
		VStack {
			Text(onShowCondition ? symbol : " ")
				.font(.system(size: proxy.size.width/2.5))
				.padding()
				.background(
					Circle()
						.foregroundColor(!onShowCondition ? .yellow : shouldWinCondition ? .red : .green)
						.frame(
							width: onShowCondition ? nil : proxy.size.width/2,
							height: onShowCondition ? nil : proxy.size.width/2
						)
				)

			Text(onShowCondition ? title : "???")
				.font(.system(size: proxy.size.width/14).bold())
				.foregroundColor(.white)

		}.frame(width: proxy.size.width/2)
	}
}

struct AICard_Previews: PreviewProvider {
    static var previews: some View {
		GeometryReader { proxy in
			ZStack {
				BGView(proxy: proxy)
				HStack {
					AICard(
						proxy: proxy,
						symbol: GameModel.rpsChoices[1].symbol,
						title: GameModel.rpsChoices[1].word,
						onShowCondition: true,
						shouldWinCondition: true
					)
				}
			}
		}
    }
}
