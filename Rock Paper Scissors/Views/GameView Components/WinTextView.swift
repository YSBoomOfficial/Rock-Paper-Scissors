//
//  WinTextView.swift
//  Rock Paper Scissors
//
//  Created by Yash Shah on 28/09/2021.
//

import SwiftUI

struct WinTextView: View {
	let proxy: GeometryProxy
	let isShowing: Bool
	let shouldWin: Bool

    var body: some View {
		Text(!isShowing ? "." : shouldWin ? "You won" : "You Lost")
			.font(.largeTitle.bold())
			.foregroundColor(!isShowing ? .clear : shouldWin ? .green : .red)
			.frame(width: proxy.size.width/2)
    }
}

struct WinTextView_Previews: PreviewProvider {
    static var previews: some View {
		GeometryReader { proxy in
			ZStack {
				BGView(proxy: proxy)
				WinTextView(proxy: proxy, isShowing: true, shouldWin: true)
			}
		}
    }
}
