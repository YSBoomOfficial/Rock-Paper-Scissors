//
//  SettingsView.swift
//  Rock Paper Scissors
//
//  Created by Yash Shah on 12/06/2022.
//

import SwiftUI

struct SettingsView: View {
	var body: some View {
		NavigationView {
			List {
				Section {
					Label("Version \(String.basicBuildInfo())", systemImage: "app.badge")
				} header: {
					Text("About")
				} footer: {
					Text("Made with 🤍 by Yash")
				}
			}
			.listStyle(.insetGrouped)
			.navigationTitle("Settings")
		}
	}
}

struct SettingsView_Previews: PreviewProvider {
	static var previews: some View {
		SettingsView()
			.preferredColorScheme(.dark)
	}
}
