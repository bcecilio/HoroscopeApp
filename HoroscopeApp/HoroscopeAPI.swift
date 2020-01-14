//
//  HoroscopeAPI.swift
//  HoroscopeApp
//
//  Created by Brendon Cecilio on 1/13/20.
//  Copyright © 2020 Brendon Cecilio. All rights reserved.
//

import Foundation
import NetworkHelper

struct HoroscopeAPI {
    
    func getHoroscope(completion: @escaping (Result<[Horoscope], AppError>) -> ()) {
        
//        let searchSign = searchQuery.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? "scorpio"
        
        let endpointUrl = "http://sandipbgt.com/theastrologer/api/horoscope/all/today"
        
        guard let url = URL(string: endpointUrl) else {
            completion(.failure(.badURL(endpointUrl)))
            return
        }
        let request = URLRequest(url: url)
        NetworkHelper.shared.performDataTask(with: request) { (result) in
            switch result {
            case .failure(let appError):
                completion(.failure(.networkClientError(appError)))
            case .success(let data):
                do {
                    let horoscopeData = try JSONDecoder().decode([Horoscope].self, from: data)
                    completion(.success(horoscopeData))
                } catch {
                    completion(.failure(.decodingError(error)))
                }
            }
        }
    }
}
