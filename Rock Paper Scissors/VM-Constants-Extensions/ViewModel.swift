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
			
		// reset display after delay : asyncAfter .now() + 1
		DispatchQueue.main.asyncAfter(deadline: .now()+1) {
			self.isShowing = false
		}
	}
	
}
