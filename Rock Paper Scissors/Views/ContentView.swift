//
//  ContentView.swift
//  Rock Paper Scissors
//
//  Created by Yash Shah on 12/06/2022.
//

import SwiftUI

struct ContentView: View {
	// swiftlint:disable:next identifier_name
	@StateObject var vm = GameViewModel()

    var body: some View {
		NavigationView {
			GameView(vm: vm)
				.navigationBarHidden(true)
				.sheet(isPresented: $vm.isShowingSettings) {
					SettingsView(vm: vm)
				}
		}.navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		ContentView()
    }
}
