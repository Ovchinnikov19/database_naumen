//
//  NetworkServiceGeneral.swift
//  ComputerDatabaseTest
//
//  Created by Eduard Ovchinnikov on 18.06.2018.
//  Copyright © 2018 Эдуард Овчинников. All rights reserved.
//

import Foundation

class NetworkServiceGeneral {
    private init(){}
    static let shared = NetworkServiceGeneral()
    
    public func getData(url: URL, completion: @escaping(Any) ->()) {
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                DispatchQueue.main.async {
                    completion(json)
                }
            } catch {
                print(error)
            }
            }.resume()
    }
}
