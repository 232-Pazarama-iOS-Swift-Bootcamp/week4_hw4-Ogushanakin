//
//  NetworkSettings.swift
//  Flickr App
//
//  Created by AKIN on 17.10.2022.
//

import Foundation

final class NetworkSettings {
    
    static let timeOut  = 300
    
    enum HttpMethod: String {
        case GET, POST, PUT, DELETE
    }

    static func request(method: HttpMethod, url: URL) -> URLRequest {
        var request                 = URLRequest(url: url)
        request.httpMethod          = method.rawValue
        request.timeoutInterval     = TimeInterval(timeOut)
        return request
    }
}
