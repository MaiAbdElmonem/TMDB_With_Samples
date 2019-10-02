//
//  ListActorsAdapter.swift
//  TMDB
//
//  Created by Mai Abd Elmonem on 9/30/19.
//  Copyright © 2019 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import Foundation



class ListActorsAdapter : ListActorsAdapterProtocal {
    
   typealias DataType = Person
    var reloadData:(() -> Void)?
    var showEmptyState: ((Bool) -> Void)?
    
    var list: [Person]? = [Person]()
    
    func add(item: Person){
        
    }
    func add(items: [Person]){
        list?.append(contentsOf: items)
        reloadData?()
    }
    func update(item: Person){
        
    }
    func count() -> Int{
        return list?.count ?? 0
    }
    func isLastIndex(index: IndexPath) -> Bool{
        return true
    }
    func clear(reload: Bool){
        
    }
    
    func getPerson(index:Int) -> Person {
        return list![index]
    }

    
}
