//
//  APIRequest.swift
//  PM2_storyboardConexionAPI
//
//  Created by Gerardo on 19/02/20.
//  Copyright © 2020 Gerardo. All rights reserved.
//

import Foundation

enum APIError:Error {
    case responseProblems
    case decodingProblems
    case encodingProblems
}

struct APIRequest {
    let resourceURL: URL
    
    init(endpoint:String){
        let baseURL = "http://127.0.0.1:8000/api/\(endpoint)/"
        guard let resourceURL = URL(string: baseURL) else {fatalError()}
        
        self.resourceURL = resourceURL
    }
    
    func save(_ dataToSave:Datos, completion: @escaping(Result<Datos, APIError>) -> Void) {
        do{
            var urlRequest = URLRequest(url: resourceURL)
            urlRequest.httpMethod = "Post"
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpBody = try JSONEncoder().encode(dataToSave)
            
            let task = URLSession.shared.dataTask(with: urlRequest){
                data, response, _ in
                guard let httpResponse = response as? HTTPURLResponse,
                    httpResponse.statusCode == 201, let JSONData = data else {
                        completion(.failure(.responseProblems))
                        return
                }
                do{
                    let contentData = try JSONDecoder().decode(Datos.self, from: JSONData)
                    completion(.success(contentData))
                }catch{
                    completion(.failure(.decodingProblems))
                }
            }
            task.resume()
        }catch{
            completion(.failure(.encodingProblems))
        }
    }
}
