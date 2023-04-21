//
//  ViewModel.swift
//  
//
//  Created by Dana Haukoos on 1/12/23.
//

import UIKit
import Foundation

open class ViewModel: ObservableObject {
    @Published public var isNudgeEnabled: Bool = true
    @Published open var org: OrgData
    @Published open var versions: VersionData
    
    public init() {
        org = OrgData()
        versions = VersionData()
    }
}

public struct OrgData: Hashable {
    public var orgID : String = "OrgID"
    public var orgName: String = "OrgName"
    public var apiKey: String = "apiKeyValue"
    public var federationID: String = "federationId"
    public var userId: String = "User Id"
    public var deviceId: String = "Device Id"
}

public struct VersionData: Hashable {
    public var nudgeBaseVersion = "X.Y.Z"
    public var sdkVersion = "XX.Y"
    public var environment = "envString"
    public var language = "language"
}

