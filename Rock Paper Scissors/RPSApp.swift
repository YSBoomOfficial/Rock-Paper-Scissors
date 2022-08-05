//
//  RPSApp.swift
//  Rock Paper Scissors
//
//  Created by Yash Shah on 22/05/2021.
//

import SwiftUI

@main
struct RPSApp: App {
    var body: some Scene {
        WindowGroup {
			ContentView()
				.onAppear {
					// MARK: Uncomment before prod
					// AppReviewRequest.requestReviewIfNeeded()
				}
        }
    }
}
