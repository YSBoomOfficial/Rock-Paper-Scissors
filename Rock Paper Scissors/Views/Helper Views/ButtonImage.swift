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
					.frame(width: size.width/4.5,
						   height: size.width/4.5,
						   alignment: .center)
				Text(const.choices[index])
					.font(.system(size: size.width/7.5))
			}
			Text(const.wordChoice[index])
				.font(.system(size: size.width/20))
				.foregroundColor(.white)
				.font(.callout)
				.fontWeight(.semibold)
		}
	}
}

struct ButtonImage_Previews: PreviewProvider {
    static var previews: some View {
		ButtonImage(index: 0)
			.background(Color.black)
    }
}
