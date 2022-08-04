//
//  ButtonImage.swift
//  Rock Paper Scissors
//
//  Created by Yash Shah on 21/09/2021.
//

import SwiftUI

struct ButtonImage: View {
	let proxy: GeometryProxy
	let index: Int
	let model: GameModel

	var body: some View {
		VStack {
			Text(model.choices[index].symbol)
				.font(.system(size: proxy.size.width/7.5))
				.padding()
				.background(
					Circle()
						.foregroundColor(.blue)
				)

			Text(model.choices[index].word)
				.font(.system(.title))
				.font(.callout)
				.fontWeight(.semibold)
				.foregroundColor(.white)
		}
	}
}

struct ButtonImage_Previews: PreviewProvider {
    static var previews: some View {
		GeometryReader { proxy in
			ZStack {
				BGView(proxy: proxy)
				ButtonImage(proxy: proxy, index: 0, model: .init())
			}
		}
    }
}
