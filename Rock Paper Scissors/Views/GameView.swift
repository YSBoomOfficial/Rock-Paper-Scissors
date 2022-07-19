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
		ZStack {
			// Background
			BGView()

			// Foreground
			VStack {
				CustomTopBarView()
					.padding(.horizontal)

				Spacer(minLength: 0)

				VStack {
				// Ai
					AICard(isShowing: $vm.isShowing,
						   playerShouldWin: $vm.shouldWin,
						   model: model,
						   ai: vm.ai)
					.padding(.top, 5)
						// Win/Lose text
					
					WinTextView(isShowing: $vm.isShowing, shouldWin: $vm.shouldWin)
				}

				Spacer(minLength: 0)
				
				// Player
				HStack(spacing: ScreenSize.minLength/10) {
					ForEach(0..<3) { index in
						Button() {
							vm.player = index
							vm.check(player: vm.player)
						} label: {
							ButtonImage(index: index, model: model)
						}
					}
				}.padding()

				Spacer(minLength: 0)

				// Score
				ScoreView(playerScore: vm.playerScore, aiScore: vm.aiScore)
					.padding()

				Spacer(minLength: 0)
			}
		}.allowsHitTesting(!vm.isShowing)
	}
}


struct RPSView_Previews: PreviewProvider {
	static var previews: some View {
		GameView()
			.environmentObject(GameViewModel())
			.preferredColorScheme(.dark)
	}
}
