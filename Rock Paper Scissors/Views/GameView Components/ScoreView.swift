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
			Text("Player - The Ai")
			Text("\(playerScore) - \(aiScore)").bold()
		}
		.font(.system(size: ScreenSize.minLength/12))
		.foregroundColor(.white)
		.padding()
	}
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
		ZStack {
			BGView()
			ScoreView(playerScore: 0, aiScore: 0)
		}
    }
}
