//
//  UserProfileViewController+LoadProfiles.swift
//  ManishAssignment
//
//  Created by Manish Rathi on 14/02/19.
//  Copyright © 2019 Manish. All rights reserved.
//

import UIKit

// Load user profiles from server.
extension UserProfileViewController {
    // Fetch data from server & Load it inside TableView.
    func loadUserProfiles() {
        ApiClientManager.shared.fetchUserProfiles { [weak self] (userProfiles, error) in
            guard
                let weakSelf = self,
                let profiles = userProfiles?.data
                else { return }
            weakSelf.userProfiles = profiles.unique{$0.id} //Get Unique items based on Id.
            weakSelf.tableView.reloadData()
        }
    }
}
