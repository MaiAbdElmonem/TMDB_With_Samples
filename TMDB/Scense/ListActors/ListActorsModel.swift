//
//  ListActorsModel.swift
//  TMDB
//
//  Created by Mai Abd Elmonem on 9/30/19.
//  Copyright © 2019 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import Foundation

class ListActorsModel: BaseModel, ListActorsModelProtocal {
    
    func getActors(forPage page: Int, compelation: @escaping (Result<Any, Error>) -> Void) {
        NetworkManager.shared.getActors(pageNumber:page) { (result,statusCode) in
            do {
                let res = try result.get().results
                compelation(.success(res!))
            } catch {
                print(error)
                compelation(.failure(error))
            }
        }
    }
    
   
}
