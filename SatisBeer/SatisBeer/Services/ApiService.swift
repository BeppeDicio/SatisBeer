//
//  ApiService.swift
//  SatisBeer
//
//  Created by Giuseppe Diciolla on 27/07/21.
//

import Foundation

class ApiService {
    
    private var dataTask: URLSessionDataTask?
    
    func getStargazersData(page: Int, filter: String, completion: @escaping (Result<[Beer], Error>) -> Void) {
        
        let stargazersURL = "https://api.punkapi.com/v2/beers?page=\(page)"
        
        guard let url = URL(string: stargazersURL) else {return}
        
        //Create URL Session - work on the background
        dataTask = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            //Handle Error
            if let error = error {
                completion(.failure(error))
                print("DataTask error: \(error.localizedDescription)")
                return
            }
            
            guard let response = response as? HTTPURLResponse else {
        
                // TODO: Handle Empty Response
                print("Empty Response")
                return
            }
            print("Response status code: \(response.statusCode)")
            
            guard let data = data else {
                // TODO: Handle Empty Data
                print("Empty Data")
                return
            }
            
            do {
                //Parse the data
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode([Beer].self, from: data)
                
                DispatchQueue.main.async {
                    completion(.success(jsonData))
                }
            } catch let error {
                completion(.failure(error))
            }
        }
        dataTask?.resume()
    }
}
