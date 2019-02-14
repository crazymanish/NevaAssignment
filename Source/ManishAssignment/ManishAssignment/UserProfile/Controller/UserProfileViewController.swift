//
//  UserProfileViewController.swift
//  ManishAssignment
//
//  Created by Manish Rathi on 14/02/19.
//  Copyright © 2019 Manish. All rights reserved.
//

import UIKit

class UserProfileViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var userProfiles: [UserProfile] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadUserProfiles()  //Load User Proflies from Server.
    }
}

extension UserProfileViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return self.userProfiles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCellIndentifier.userProfile, for: indexPath)
        if let userProfileCell = cell as? UserProfileTableViewCell {
            let userProfile = self.userProfiles[indexPath.row]
            userProfileCell.configureUserProfileCell(userProfile)
        }
        return cell
    }
}
