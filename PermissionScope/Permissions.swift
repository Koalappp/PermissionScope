//
//  Permissions.swift
//  PermissionScope
//
//  Created by Nick O'Neill on 8/25/15.
//  Copyright © 2015 That Thing in Swift. All rights reserved.
//

import Foundation
import CoreLocation
import AddressBook
import AVFoundation
import Photos
import EventKit
import CoreBluetooth
import CoreMotion
import CloudKit
import Accounts

/**
*  Protocol for permission configurations.
*/
@objc public protocol Permission {
	/// Permission type
	var type: PermissionType { get }
}

@objc public class NotificationsPermission: NSObject, Permission {
	public let type: PermissionType = .Notifications
}

public typealias requestPermissionUnknownResult = () -> Void
public typealias requestPermissionShowAlert     = (PermissionType) -> Void