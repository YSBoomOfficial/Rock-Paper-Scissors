//
//  ViewModel.swift
//  Rock Paper Scissors
//
//  Created by Yash Shah on 21/09/2021.
//

import SwiftUI

class ViewModel: ObservableObject {
	// Ai
	@Published var ai = 0
	@Published var aiScore = 0

	// Player
	@Published var player = 0
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
		
		isShowing = true
		
		if shouldWin == true {
			switch player {
				case 0: ai = 2
				case 1: ai = 0
				default: ai = 1
			}
			self.playerScore += 1
			
		} else {
			switch player {
				case 0: ai = 1
				case 1: ai = 2
				default: ai = 0
			}
			self.aiScore += 1
		}
			
		// reset display after delay
		DispatchQueue.main.asyncAfter(deadline: .now()+1.25) {
			self.isShowing = false
		}
	}

	func reset() {
		ai = 0
		aiScore = 0

		player = 0
		playerScore = 0

		isShowing = false
		shouldWin = Bool.random()
	}

}
