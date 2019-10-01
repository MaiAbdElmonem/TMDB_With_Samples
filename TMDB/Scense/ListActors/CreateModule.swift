//
//  CreateModule.swift
//  TMDB
//
//  Created by Mai Abd Elmonem on 9/30/19.
//  Copyright © 2019 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import Foundation

class Module {
    static func ListAtorsModule() -> ListActorsViewController { // as routuing
        let model = ListActorsModel()
        let view = ListActorsViewController()
        let presenter = ListActorsPresenter(model: model, view: view)
        //run presenter of what view
        view.setPresenter(presenter: presenter)
        return view    //to return and start listactors
    }
}
