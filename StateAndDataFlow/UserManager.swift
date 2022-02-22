//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by brubru on 21.02.2022.
//

import Foundation
import SwiftUI
class UserManager: ObservableObject {
    @AppStorage("username") var name = ""
}
