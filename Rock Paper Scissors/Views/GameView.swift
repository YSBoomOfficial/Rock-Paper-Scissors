//
//  GameView.swift
//  Rock Paper Scissors
//
//  Created by Yash on 22/05/2021.
//

import SwiftUI

struct GameView: View {
	// swiftlint:disable:next identifier_name
	@ObservedObject var vm: GameViewModel

	var body: some View {
		GeometryReader { proxy in
			ZStack {
				// Background
				BGView(proxy: proxy)

				// Foreground
				VStack {
					CustomTopBarView(vm: vm)
						.padding(.horizontal)

					Spacer()

					VStack {
						// Ai
						AICard(
							proxy: proxy,
							symbol: GameModel.rpsChoices[vm.aiIndex].symbol,
							title: GameModel.rpsChoices[vm.aiIndex].word,
							onShowCondition: vm.isShowing,
							shouldWinCondition: vm.shouldWin
						)
						// Win/Lose text
						WinTextView(
							proxy: proxy,
							isShowing: vm.isShowing,
							shouldWin: vm.shouldWin
						).padding(.top, 5)
					}

					// Player
					HStack(spacing: 35) {
						ForEach(0..<GameModel.rpsChoices.count, id: \.self) { index in
							OptionButton(
								proxy: proxy,
								symbol: GameModel.rpsChoices[index].symbol,
								title: GameModel.rpsChoices[index].word,
								onPressCondition: (vm.isShowing && index == vm.playerIndex)
							).onTapGesture { vm.check(playerMove: index) }
						}
					}

					Spacer()

					// Score
					ScoreView(
						playerScore: vm.playerScore,
						aiScore: vm.aiScore
					)

					Spacer()
				}
			}
			.allowsHitTesting(!vm.isShowing)
		}
	}
}

struct RPSView_Previews: PreviewProvider {
	static var previews: some View {
		GameView(vm: .init())
	}
}
