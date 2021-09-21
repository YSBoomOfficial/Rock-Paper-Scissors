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

struct AICard_Previews: PreviewProvider {
    static var previews: some View {
		AICard(isShowing: .constant(true), shouldWin: .constant(true), ai: 0)
    }
}
