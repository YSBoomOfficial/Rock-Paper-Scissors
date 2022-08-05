//
//  GameViewModel.swift
//  Rock Paper Scissors
//
//  Created by Yash Shah on 21/09/2021.
//

import SwiftUI

class GameViewModel: ObservableObject {
	// Ai
	@Published var aiIndex = 0
	@Published var aiScore = 0

	// Player
	@Published var playerIndex = 0
	@Published var playerScore = 0

	// should show ai response
	@Published var isShowing = false

	// should player win
	@Published var shouldWin = Bool.random()

	// Settings sheet
	@Published var isShowingSettings = false

	// Check Win / Los
	func check(player: Int) {
		shouldWin = Bool.random()

		withAnimation { self.isShowing = true }

		// swiftlint:disable switch_case_alignment
		if shouldWin == true {
			switch player {
				case 0: aiIndex = 2
				case 1: aiIndex = 0
				default: aiIndex = 1
			}
			self.playerScore += 1
		} else {
			switch player {
				case 0: aiIndex = 1
				case 1: aiIndex = 2
				default: aiIndex = 0
			}
			self.aiScore += 1
		}

		// reset display after delay
		DispatchQueue.main.asyncAfter(deadline: .now()+1.25) {
			withAnimation { self.isShowing = false }
		}
	}

	func reset() {
		aiIndex = 0
		aiScore = 0

		playerIndex = 0
		playerScore = 0

		isShowing = false
		shouldWin = Bool.random()
	}

}
