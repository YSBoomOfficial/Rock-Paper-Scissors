//
//  AppReviewRequest.swift
//  Rock Paper Scissors
//
//  Created by Yash Shah on 12/06/2022.
//

import SwiftUI
import StoreKit

enum AppReviewRequest {
	static var threshold = 5
	@AppStorage("runSinceLastRequest") static var runsSinceLastRequest = 0
	@AppStorage("version") static var version = ""

	static func requestReviewIfNeeded() {
		runsSinceLastRequest += 1
		guard let appBuild = Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as? String,
				let appVersion = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String else { return }

		let currentVersion = "\(appVersion).\(appBuild)"
#if DEBUG
		print("Run Count: \(runsSinceLastRequest) Out Of Threshold - \(threshold)")
		print("Version: \(currentVersion)")
#endif
		// Only present if new version
		guard currentVersion != version else { runsSinceLastRequest = 0; return }
		// Only present review if threshold has been met
		guard runsSinceLastRequest >= threshold else { return }

		// swiftlint:disable:next line_length
		if let scene = UIApplication.shared.connectedScenes.first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene {
			SKStoreReviewController.requestReview(in: scene)
			version = currentVersion
			runsSinceLastRequest = 0
		}
	}
}
