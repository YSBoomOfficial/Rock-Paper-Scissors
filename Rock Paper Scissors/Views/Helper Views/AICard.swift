//
//  AICard.swift
//  Rock Paper Scissors
//
//  Created by Yash Shah on 21/09/2021.
//

import SwiftUI

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
						.font(.system(size: size.width/2))
				}
				.frame(width: size.width/1.5,
					   height: size.width/1.5,
					   alignment: .center)
				
				Text(self.isShowing ? const.wordChoice[ai] : "???")
					.foregroundColor(.white)
					.font(.system(size: size.width/12))
					.bold()
			}
		}
	}
}

struct AICard_Previews: PreviewProvider {
    static var previews: some View {
		AICard(isShowing: .constant(true), shouldWin: .constant(true), ai: 0)
    }
}
