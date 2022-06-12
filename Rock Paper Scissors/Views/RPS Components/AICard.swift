//
//  AICard.swift
//  Rock Paper Scissors
//
//  Created by Yash Shah on 21/09/2021.
//

import SwiftUI

struct AICard: View {
	@Binding var isShowing: Bool
	@Binding var playerShouldWin: Bool
	let model: RPSModel
	let ai: Int
	
	var body: some View {
		VStack {
			Text(isShowing ? model.choices[ai].symbol : " ")
				.font(.system(size: ScreenSize.minLength/2.5))
				.padding()
				.background(
					Circle()
						.foregroundColor(!isShowing ? .yellow : playerShouldWin ? .red : .green)
						.frame(
							width: isShowing ? nil : ScreenSize.minLength/1.95,
							height: isShowing ? nil : ScreenSize.minLength/1.95
						)
				)

			Text(isShowing ? model.choices[ai].word : "???")
				.font(.system(size: ScreenSize.minLength/14).bold())
				.foregroundColor(.white)
		}
	}
}

struct AICard_Previews: PreviewProvider {
    static var previews: some View {
		ZStack {
			BGView()
			HStack {
				AICard(isShowing: .constant(true),
					   playerShouldWin: .constant(false),
					   model: .init(),
					   ai: 0)
			}
		}
    }
}
