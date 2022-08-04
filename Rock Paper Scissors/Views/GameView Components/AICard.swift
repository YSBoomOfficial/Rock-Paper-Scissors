//
//  AICard.swift
//  Rock Paper Scissors
//
//  Created by Yash Shah on 21/09/2021.
//

import SwiftUI

struct AICard: View {
	let proxy: GeometryProxy
	@Binding var isShowing: Bool
	@Binding var playerShouldWin: Bool
	let model: GameModel
	let ai: Int
	
	var body: some View {
		VStack {
			Text(isShowing ? model.choices[ai].symbol : " ")
				.font(.system(size: proxy.size.width/2.5))
				.padding()
				.background(
					Circle()
						.foregroundColor(!isShowing ? .yellow : playerShouldWin ? .red : .green)
						.frame(
							width: isShowing ? nil : proxy.size.width/2,
							height: isShowing ? nil : proxy.size.width/2
						)
				)

			Text(isShowing ? model.choices[ai].word : "???")
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
					AICard(proxy: proxy, isShowing: .constant(true),
						   playerShouldWin: .constant(false),
						   model: .init(),
						   ai: 0)
				}
			}
		}
    }
}
