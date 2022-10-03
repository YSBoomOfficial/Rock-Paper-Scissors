//
//  Bundle+AppInfo.swift
//  Rock Paper Scissors
//
//  Created by Yash Shah on 03/10/2022.
//

import Foundation

extension Bundle {
	/// Retrieve the app version number from Bundle
	var releaseVersionNumber: String? {
		infoDictionary?["CFBundleShortVersionString"] as? String
	}

	/// Retrieve the build version number from Bundle
	var buildVersionNumber: String? {
		infoDictionary?["CFBundleVersion"] as? String
	}
}
