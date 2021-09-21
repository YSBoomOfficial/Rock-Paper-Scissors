//
//  ButtonImage.swift
//  Rock Paper Scissors
//
//  Created by Yash Shah on 21/09/2021.
//

import SwiftUI

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
					.font(.system(size: 85))
			}
			Text(const.wordChoice[index])
				.font(.system(size: 25))
				.foregroundColor(.white)
				.font(.callout)
				.fontWeight(.semibold)
		}
		.padding(10)
	}
}

struct ButtonImage_Previews: PreviewProvider {
    static var previews: some View {
		ButtonImage(index: 0)
			.background(Color.black)
    }
}
