//
//  loginpageApp.swift
//  loginpage
//
//  Created by Minglin Chen on 9/28/23.
//

import SwiftUI

@main
struct loginpageApp: App {
    var body: some Scene {
        WindowGroup {
            loginhomepage()
                .environmentObject(Order())
        }
    }
}
