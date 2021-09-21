//
//  ContentView.swift
//  Rock Paper Scissors
//
//  Created by Yash on 22/05/2021.
//

import SwiftUI

enum size {
	static let width = UIScreen.main.bounds.width
}

enum const {
	static let wordChoice = ["Rock", "Paper", "Scissors"]
	static let choices = ["👊", "🖐", "✌️"]
}


struct RPCView: View {
	@State private var ai = 0
	@State private var player = 0
	@State private var playerScore = 0
	@State private var aiScore = 0
	@State private var isShowing = false
	@State private var shouldWin = Bool.random()
	
	var body: some View {
		ZStack {
			// Background
			BGView()
			
			// Foreground
			VStack {
				// Ai
				AICard(isShowing: $isShowing, shouldWin: $shouldWin, ai: ai)
				
				Spacer()
				
				// Player
				HStack {
					ForEach(0..<3) { index in
						Button() {
							player = index
							check(player: player) {
								DispatchQueue.main.asyncAfter(deadline: .now()+1) {
									self.isShowing = false
								}
							}
						} label: {
							ButtonImage(index: index)
						}
						.padding(10)
						.font(.system(size: 80))
					}
				}.padding()
				
				Spacer()
				
				// Score
				Score(playerScore: playerScore, aiScore: aiScore)
				
				Spacer()
			}
		}.allowsHitTesting(!isShowing)
	}
	
	// Check Win / Los
	func check(player: Int, completion: @escaping () -> Void) {
		shouldWin = Bool.random()
		// process win loss
		if shouldWin == true {
			switch player {
				case 0: ai = 2
				case 1: ai = 0
				default: ai = 1
			}
			playerScore += 1
		} else {
			switch player {
				case 0: ai = 1
				case 1: ai = 2
				default: ai = 0
			}
			aiScore += 1
		}
		
		self.isShowing = true
		// reset display after delay : asyncAfter .now() + 1
		completion()
	}
}


struct RPCView_Previews: PreviewProvider {
	static var previews: some View {
		RPCView()
	}
}

struct BGView: View {
	var body: some View {
		Rectangle()
			.foregroundColor(Color(red: 32/255, green: 32/255, blue: 32/255))
			.ignoresSafeArea()
		Rectangle()
			.foregroundColor(Color(red: 64/255, green: 64/255, blue: 64/255))
			.rotationEffect(Angle(degrees: 45))
			.ignoresSafeArea()
	}
}

struct AICard: View {
	@Binding var isShowing: Bool
	@Binding var shouldWin: Bool
	let ai: Int
	
	var body: some View {
		VStack {
			VStack {
				ZStack {
					if isShowing {
						Circle()
							.foregroundColor(shouldWin ? .red : .green)
					} else {
						Circle()
							.foregroundColor(.yellow)
					}
					
					Text(isShowing ? const.choices[ai] : "")
						.font(.system(size: 180))
				}
				.frame(width: size.width/1.5,
					   height: size.width/1.5,
					   alignment: .center)
				
				Text(self.isShowing ? const.wordChoice[ai] : "???")
					.foregroundColor(.white)
					.font(.system(size: 35))
					.fontWeight(.bold)
			}
			.padding()
			.padding(.top, 20)
			
			if isShowing {
				Text(shouldWin ? "You won" : "You Lost")
					.foregroundColor(shouldWin ? .green : .red)
					.font(.system(size: 45))
					.fontWeight(.bold)
			} else {
				Text("_")
					.foregroundColor(.clear)
					.font(.system(size: 45))
					.fontWeight(.bold)
			}
		}
	}
}

struct ButtonImage: View {
	let index: Int
	var body: some View {
		VStack {
			ZStack {
				Circle()
					.foregroundColor(.blue)
					.frame(width: size.width/4,
						   height: size.width/4,
						   alignment: .center)
				Text(const.choices[index])
			}
			Text(const.wordChoice[index])
				.font(.system(size: 20))
				.foregroundColor(.white)
				.font(.callout)
		}
	}
}

struct Score: View {
	let playerScore: Int
	let aiScore: Int
	
	var body: some View {
		VStack {
			HStack {
				Text("Player") + Text("-").bold() + Text("The Ai")
			}
			Text("\(playerScore) - \(aiScore)")
				.bold()
				.font(.system(size: 50))
		}
		.font(.system(size: 35))
		.foregroundColor(.white)
	}
}
