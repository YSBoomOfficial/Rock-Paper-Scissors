//
//  BGView.swift
//  Rock Paper Scissors
//
//  Created by Yash Shah on 21/09/2021.
//

import SwiftUI

struct BGView: View {
	var body: some View {
		ZStack {
			Rectangle()
				.foregroundColor(Color(red: 32/255, green: 32/255, blue: 32/255))
				.ignoresSafeArea()
			Rectangle()
				.foregroundColor(Color(red: 64/255, green: 64/255, blue: 64/255))
				.rotationEffect(Angle(degrees: 45))
				.ignoresSafeArea()
		}
	}
}

struct BGView_Previews: PreviewProvider {
    static var previews: some View {
        BGView()
    }
}
