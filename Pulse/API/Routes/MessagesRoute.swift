//
//  MessagesRoute.swift
//  Pulse
//
//  Created by Luke Klinker on 1/4/18.
//  Copyright © 2018 Luke Klinker. All rights reserved.
//

import Foundation
import Alamofire

class MessagesRoute : BaseRoute {
    
    init() {
        super.init(route: "messages")
    }
    
    func get(conversationId: Int64, completionHandler: @escaping (DataResponse<[Message]>) -> Void) {
        get(path: "", parameters: ["account_id": Account.accountId!, "conversation_id": conversationId, "web": "true", "limit": 20])
            .responseCollection(completionHandler: completionHandler)
    }

}
