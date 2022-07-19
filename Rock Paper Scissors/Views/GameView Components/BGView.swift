//
//  BGView.swift
//  Rock Paper Scissors
//
//  Created by Yash Shah on 21/09/2021.
//

import SwiftUI

struct BGView: View {
	let bgColor: Color = Color(red: 32/255, green: 32/255, blue: 32/255)
	let fgColor: Color = Color(red: 64/255, green: 64/255, blue: 64/255)

	var body: some View {
		ZStack {
			Rectangle()
				.foregroundColor(bgColor)
				.edgesIgnoringSafeArea(.all)
			Rectangle()
				.scaleEffect(x: 1, y: ScreenSize.maxLength, anchor: .center)
				.foregroundColor(fgColor)
				.rotationEffect(Angle(degrees: 45))
				.edgesIgnoringSafeArea(.all)
		}
	}
}

struct BGView_Previews: PreviewProvider {
    static var previews: some View {
        BGView()
    }
}
