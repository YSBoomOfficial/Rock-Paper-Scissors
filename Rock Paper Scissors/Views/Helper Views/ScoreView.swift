//
//  ScoreView.swift
//  Rock Paper Scissors
//
//  Created by Yash Shah on 21/09/2021.
//

import SwiftUI

struct ScoreView: View {
	let playerScore: Int
	let aiScore: Int
	
	var body: some View {
		VStack {
			HStack {
				Text("Player") + Text(" - ").bold() + Text("The Ai")
			}
			Text("\(playerScore) - \(aiScore)").bold()
		}
		.font(.largeTitle)
		.foregroundColor(.white)
			
	}
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
		ScoreView(playerScore: 0, aiScore: 0)
    }
}
