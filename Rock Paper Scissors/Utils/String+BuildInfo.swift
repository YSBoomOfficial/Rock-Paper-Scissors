//
//  String+BuildInfo.swift
//  Rock Paper Scissors
//
//  Created by Yash Shah on 12/06/2022.
//

import Foundation

extension String {
	public static func basicBuildInfo() -> String {
		let version = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? ""
		return version
	}
}
