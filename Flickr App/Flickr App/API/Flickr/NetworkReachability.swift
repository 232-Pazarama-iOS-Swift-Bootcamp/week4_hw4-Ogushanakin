//
//  NetworkReachability.swift
//  Flickr App
//
//  Created by AKIN on 17.10.2022.
//

import Foundation

import Network

public class NetworkReachability {
    static let shared = NetworkReachability()

    let monitor = NWPathMonitor()
    private var status: NWPath.Status = .requiresConnection
    var isReachable: Bool { status == .satisfied }
    var isReachableOnCellular: Bool = true

    func startMonitoring() {
        monitor.pathUpdateHandler = { path in
            self.status = path.status
            self.isReachableOnCellular = path.isExpensive

            if path.status == .satisfied {
                // "We're connected!"
            } else {
                // "No connection."
            }
        }

        let queue = DispatchQueue(label: "NetworkReachability")
        monitor.start(queue: queue)
    }

    func stopMonitoring() {
        monitor.cancel()
    }
}
