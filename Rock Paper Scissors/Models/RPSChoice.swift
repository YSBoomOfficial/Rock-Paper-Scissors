//
//  RPSChoice.swift
//  Rock Paper Scissors
//
//  Created by Yash Shah on 11/06/2022.
//

import Foundation

struct RPSChoice {
	let title: String
	let symbol: String
}

extension RPSChoice {
	static let examples = [
		RPSChoice(title: "Rock", symbol: "👊"),
		RPSChoice(title: "Paper", symbol: "🖐"),
		RPSChoice(title: "Scissors", symbol: "✌️")
	]
}
