//
//  ContentView.swift
//  Rock Paper Scissors
//
//  Created by Yash on 22/05/2021.
//

import SwiftUI

struct RPCView: View {
	@StateObject var vm = ViewModel()
	
	var body: some View {
		ZStack {
			// Background
			BGView()
			
			// Foreground
			VStack {
				
				Spacer()
				
				VStack(spacing: 10) {
				// Ai
					AICard(isShowing: $vm.isShowing, shouldWin: $vm.shouldWin, ai: vm.ai)
						// Win/Lose text
					
					WinTextView(isShowing: $vm.isShowing, shouldWin: $vm.shouldWin)
				}
				
				Spacer()
				
				// Player
				HStack(spacing: 25) {
					ForEach(0..<3) { index in
						Button() {
							vm.player = index
							vm.check(player: vm.player)
						} label: {
							ButtonImage(index: index)
						}
					}
				}
				
				Spacer()
				
				// Score
				ScoreView(playerScore: vm.playerScore, aiScore: vm.aiScore)
				
				Spacer()
			}
		}.allowsHitTesting(!vm.isShowing)

	}
}


struct RPCView_Previews: PreviewProvider {
	static var previews: some View {
		RPCView()
	}
}
