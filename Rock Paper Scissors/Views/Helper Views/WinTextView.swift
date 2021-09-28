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
		if isShowing {
			Text(shouldWin ? "You won" : "You Lost")
				.foregroundColor(shouldWin ? .green : .red)
				.font(.system(size: size.width/10))
				.bold()
		} else {
			Text("_")
				.foregroundColor(.clear)
				.font(.system(size: size.width/10))
				.bold()
		}
    }
}

struct WinTextView_Previews: PreviewProvider {
    static var previews: some View {
		WinTextView(isShowing: .constant(true), shouldWin: .constant(true))
    }
}
