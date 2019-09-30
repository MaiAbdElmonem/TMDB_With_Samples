//
//  CreateModule.swift
//  TMDB
//
//  Created by Mai Abd Elmonem on 9/30/19.
//  Copyright © 2019 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import Foundation

class Module {
    static func ListAtorsModule() -> ListActorsViewController {
        let model = ListActorsModel()
        let view = ListActorsViewController()
        let presenter = ListActorsPresenter(view: view, model: model)
        //run presenter of what view
        return view    //to return and start listactors
    }
}
