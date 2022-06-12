//
//  CustomNavBar.swift
//  Rock Paper Scissors
//
//  Created by Yash Shah on 12/06/2022.
//

import SwiftUI

struct CustomTopBar: View {
	@EnvironmentObject var vm: ViewModel

    var body: some View {
		HStack {
			Button(action: vm.reset) {
				Image(systemName: "arrow.counterclockwise")
			}.buttonStyle(.lightBlue)

			Spacer(minLength: 0)

			Text("RPS")
				.font(.largeTitle.bold())
				.foregroundColor(.white)

			Spacer(minLength: 0)

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
		ZStack {
			BGView()
			VStack {
				CustomTopBar()
					.padding(.horizontal)
					.environmentObject(ViewModel())
				Spacer()
			}
		}.preferredColorScheme(.dark)
    }
}
