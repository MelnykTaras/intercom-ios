//
//  NotificationsManager.swift
//  Sample-Swift-UISceneDelegate
//
//  Created by Taras on 6-May-2021.
//  Copyright © 2021 Michael McNamara. All rights reserved.
//

import Foundation
import Intercom

final class NotificationsManager {
    
    func addObservers() {
        
        print("NotificationsManager addObservers")
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(didReceiveNotification(_:)),
                                               name: Notification.Name.IntercomWindowWillShow,
                                               object: Notification.Name.IntercomWindowWillShow)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(didReceiveNotification(_:)),
                                               name: Notification.Name.IntercomWindowDidShow,
                                               object: Notification.Name.IntercomWindowDidShow)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(didReceiveNotification(_:)),
                                               name: Notification.Name.IntercomWindowWillHide,
                                               object: Notification.Name.IntercomWindowWillHide)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(didReceiveNotification(_:)),
                                               name: Notification.Name.IntercomWindowDidHide,
                                               object: Notification.Name.IntercomWindowDidHide)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(didReceiveNotification(_:)),
                                               name: Notification.Name.IntercomDidStartNewConversation,
                                               object: Notification.Name.IntercomDidStartNewConversation)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(didReceiveNotification(_:)),
                                               name: Notification.Name.IntercomHelpCenterWillShow,
                                               object: Notification.Name.IntercomHelpCenterWillShow)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(didReceiveNotification(_:)),
                                               name: Notification.Name.IntercomHelpCenterDidShow,
                                               object: Notification.Name.IntercomHelpCenterDidShow)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(didReceiveNotification(_:)),
                                               name: Notification.Name.IntercomHelpCenterWillHide,
                                               object: Notification.Name.IntercomHelpCenterWillHide)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(didReceiveNotification(_:)),
                                               name: Notification.Name.IntercomHelpCenterDidHide,
                                               object: Notification.Name.IntercomHelpCenterDidHide)
    }
    
    @objc private func didReceiveNotification(_ notification: Notification) {
        print("didReceiveNotification: \(notification)")
    }
}
