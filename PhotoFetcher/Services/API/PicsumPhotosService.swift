//
//  PicsumPhotosService.swift
//  PhotoFetcher
//
//  Created by Jonni Akesson on 2024-09-11.
//

import Foundation

class PicsumPhotosService: BaseAPIService<[PicsumPhoto]> {
    
    init() {
        let defaultSession = SessionBuilder().withDefaultConfiguration().build()
        let networkManager = NetworkManager(session: defaultSession)
        let requestBuilder = PicsumPhotosRequestBuilder()
        super.init(networkManager: networkManager, requestBuilder: requestBuilder)
    }

    func fetchPicsumPhotos(page: Int, pageLimit: Int) async throws -> [PicsumPhoto] {
        return try await performRequest(for: page, pageLimit: pageLimit, method: .GET)
    }
}
