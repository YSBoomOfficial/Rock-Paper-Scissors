//
//  ContentView.swift
//  Rock Paper Scissors
//
//  Created by Yash Shah on 12/06/2022.
//

import SwiftUI

struct ContentView: View {
	@EnvironmentObject var vm: GameViewModel

    var body: some View {
		NavigationView {
			GameView()
				.navigationBarHidden(true)
				.sheet(isPresented: $vm.isShowingSettings) {
					SettingsView()
				}
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		ContentView()
			.environmentObject(GameViewModel())
			.preferredColorScheme(.dark)
    }
}
