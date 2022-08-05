//
//  CustomTopBarView.swift
//  Rock Paper Scissors
//
//  Created by Yash Shah on 12/06/2022.
//

import SwiftUI

struct CustomTopBarView: View {
	@ObservedObject var vm: GameViewModel

	var body: some View {
		HStack {
			Button(action: vm.reset) {
				Image(systemName: "arrow.counterclockwise")
			}.buttonStyle(.lightBlue)

			Spacer()

			Text("RPS")
				.font(.largeTitle.bold())
				.foregroundColor(.white)

			Spacer()

			Button {
				vm.isShowingSettings.toggle()
			} label: {
				Image(systemName: "gearshape")
			}.buttonStyle(.lightBlue)
		}
	}
}

struct CustomTopBar_Previews: PreviewProvider {
	static var previews: some View {
		GeometryReader { proxy in
			ZStack {
				BGView(proxy: proxy)
				VStack {
					CustomTopBarView(vm: .init())
						.padding(.horizontal)
					Spacer()
				}
			}
		}
		.environmentObject(GameViewModel())
	}
}
