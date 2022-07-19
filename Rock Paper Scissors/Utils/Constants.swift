//
//  String+BuildInfo.swift
//  Rock Paper Scissors
//
//  Created by Yash Shah on 12/06/2022.
//

import Foundation

enum Constants {
	static var appVersion = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? ""
}
