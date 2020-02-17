//
//  AppFullscreenController.swift
//  Appstore
//
//  Created by Cole Riggle on 2/16/20.
//  Copyright © 2020 Cole Riggle. All rights reserved.
//

import UIKit

class AppFullscreenController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = TodayCell()
        return header
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 450
    }
}
