//
//  GameView.swift
//  Rock Paper Scissors
//
//  Created by Yash on 22/05/2021.
//

import SwiftUI

struct GameView: View {
	@EnvironmentObject var vm: GameViewModel
	let model = GameModel()
	
	var body: some View {
		GeometryReader { proxy in
			ZStack {
				// Background
				BGView(proxy: proxy)

				// Foreground
				VStack {
					CustomTopBarView().padding(.horizontal)

					Spacer()

					VStack {
						// Ai
						AICard(
							proxy: proxy,
							isShowing: $vm.isShowing,
							playerShouldWin: $vm.shouldWin,
							model: model,
							ai: vm.ai
						)
						// Win/Lose text
						WinTextView(
							proxy: proxy,
							isShowing: $vm.isShowing,
							shouldWin: $vm.shouldWin
						).padding(.top, 5)
					}

					// Player
					HStack(spacing: 35) {
						ForEach(0..<3) { index in
							Button() {
								vm.player = index
								vm.check(player: vm.player)
							} label: {
								ButtonImage(
									proxy: proxy,
									index: index,
									model: model
								)
							}
						}
					}

					Spacer()

					// Score
					ScoreView(
						proxy: proxy,
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
		GameView()
			.environmentObject(GameViewModel())
			.preferredColorScheme(.dark)
	}
}
