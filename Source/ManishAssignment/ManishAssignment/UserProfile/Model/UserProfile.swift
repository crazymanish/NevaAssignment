//
//  UserProfile.swift
//  ManishAssignment
//
//  Created by Manish Rathi on 14/02/19.
//  Copyright © 2019 Manish. All rights reserved.
//

import Foundation

/**
 User Profile Model.
 */
struct UserProfile: BaseModel {
    let id: Int?
    let name: String?
    let skills: String?
    let image: String?
}
