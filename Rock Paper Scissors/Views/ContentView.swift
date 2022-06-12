//
//  ContentView.swift
//  Rock Paper Scissors
//
//  Created by Yash Shah on 12/06/2022.
//

import SwiftUI

struct ContentView: View {
	@StateObject var vm = ViewModel()

    var body: some View {
		NavigationView {
			RPSView()
				.navigationBarHidden(true)
				.sheet(isPresented: $vm.isShowingSettings) {
					SettingsView()
				}
		}.environmentObject(vm)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
			.environmentObject(ViewModel())
			.preferredColorScheme(.dark)
    }
}
