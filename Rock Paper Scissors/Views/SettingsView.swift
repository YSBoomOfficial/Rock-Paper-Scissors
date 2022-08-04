//
//  SettingsView.swift
//  Rock Paper Scissors
//
//  Created by Yash Shah on 12/06/2022.
//

import SwiftUI

struct SettingsView: View {
	private let linksUrl = URL(string: "https://linktr.ee/YSBoomOfficial")!
	private let repoURL = URL(string: "https://github.com/YSBoomOfficial/Rock-Paper-Scissors")!

	var body: some View {
		NavigationView {
			List {
				Section {
					Label("Version \(Constants.appVersion)", systemImage: "app.badge")
					Link(destination: repoURL) {
						Text("Wanna see how I made this app? ").foregroundColor(.primary) + Text("Here's the code")
					}
				} header: {
					Text("About The App")
				} footer: {
					Text("Made with 🤍 by Yash")
				}

				Section {
					Link("My Links 👨‍💻", destination: linksUrl)
				} header: {
					Text("About Me")
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
