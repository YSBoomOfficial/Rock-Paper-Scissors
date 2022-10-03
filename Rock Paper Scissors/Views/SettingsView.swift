//
//  SettingsView.swift
//  Rock Paper Scissors
//
//  Created by Yash Shah on 12/06/2022.
//

import SwiftUI

struct SettingsView: View {
	// swiftlint:disable:next identifier_name
	@ObservedObject var vm: GameViewModel
	private let linksUrl = URL(string: "https://linktr.ee/YSBoomOfficial")!
	private let repoURL = URL(string: "https://github.com/YSBoomOfficial/Rock-Paper-Scissors")!

	var body: some View {
		NavigationView {
			List {
				Section {

					Label(
						"Version \(Bundle.main.releaseVersionNumber!).\(Bundle.main.buildVersionNumber!)",
						systemImage: "app.badge"
					)

					Label(
						"Build \(Bundle.main.buildVersionNumber!)",
						systemImage: "hammer.circle"
					)

					Link(destination: repoURL) {
						VStack(alignment: .leading) {
							Text("Wanna take a peak at the code? ")
								.foregroundColor(.primary)
							Text("Here's the GitHub repo")
						}
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
		SettingsView(vm: .init())
			.preferredColorScheme(.dark)
	}
}
