//
//  ButtonImage.swift
//  Rock Paper Scissors
//
//  Created by Yash Shah on 21/09/2021.
//

import SwiftUI

struct ButtonImage: View {
	let index: Int
	let model: GameModel

	var body: some View {
		VStack {
			Text(model.choices[index].symbol)
				.font(.system(size: ScreenSize.minLength/7.5))
				.padding()
				.background(
					Circle().foregroundColor(.blue)
				)

			Text(model.choices[index].word)
				.font(.system(size: ScreenSize.minLength/18))
				.font(.callout)
				.fontWeight(.semibold)
				.foregroundColor(.white)
		}
	}
}

struct ButtonImage_Previews: PreviewProvider {
    static var previews: some View {
		ZStack {
			BGView()
			ButtonImage(index: 0, model: .init())	
		}
    }
}
