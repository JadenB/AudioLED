//
//  AppDelegate.swift
//  LED Strip Controller
//
//  Created by Jaden Bernal on 12/19/18.
//  Copyright © 2018 Jaden Bernal. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
	
	func applicationWillFinishLaunching(_ notification: Notification) {
		NSApp.appearance = NSAppearance(named: .darkAqua)
	}

    func applicationDidFinishLaunching(_ aNotification: Notification) {
		
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        LightController.shared.turnOff()
        
        if DeviceManager.shared.deviceIsActive() {
            DeviceManager.shared.deactivateDevice()
        }
    }
    
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }

}
