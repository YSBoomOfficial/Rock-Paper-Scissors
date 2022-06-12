//
//  WinTextView.swift
//  Rock Paper Scissors
//
//  Created by Yash Shah on 28/09/2021.
//

import SwiftUI

struct WinTextView: View {
	@Binding var isShowing: Bool
	@Binding var shouldWin: Bool
	
    var body: some View {
		Text(!isShowing ? "_" : shouldWin ? "You won" : "You Lost")
			.font(.system(size: ScreenSize.minLength/10))
			.foregroundColor(!isShowing ? .clear : shouldWin ? .green : .red)
			.bold()
    }
}

struct WinTextView_Previews: PreviewProvider {
    static var previews: some View {
		ZStack {
			BGView()
			WinTextView(isShowing: .constant(true), shouldWin: .constant(true))
		}
    }
}
