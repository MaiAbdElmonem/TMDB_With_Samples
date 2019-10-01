//
//  ListActorsPresenter.swift
//  TMDB
//
//  Created by Mai Abd Elmonem on 9/30/19.
//  Copyright © 2019 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import Foundation

class ListActorsPresenter: BasePresenter , ListActorsPresenterProtocal {
    
    
    var ListActorModel : ListActorsModelProtocal?
    var ListActorView : ListActorsViewProtocal?
    var currentPage:Int = 1
    
    init(model : ListActorsModelProtocal , view : ListActorsViewProtocal) {
        ListActorModel = model
        ListActorView = view
    }
    
    func loadActors() {
        ListActorModel?.getActors(forPage :currentPage) { result in
            do {
            let results = try result.get()
            self.ListActorView?.getActorList(array: results as! [Person])
            }catch {
               print(error)
            }
    }
  }
}
