//
//  UserProfileResponseModel.swift
//  ManishAssignment
//
//  Created by Manish Rathi on 14/02/19.
//  Copyright © 2019 Manish. All rights reserved.
//

import Foundation

/**
 User Profile Response Model.
 */
struct UserProfileResponseModel: BaseModel {
    let code: Int?
    let message: String?
    let data: [UserProfile]?
}
