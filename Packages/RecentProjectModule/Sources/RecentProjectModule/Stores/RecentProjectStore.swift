//
//  RecentProjectStore.swift
//
//
//  Created by Huy Pham on 26/11/24.
//

import Foundation
import Combine

class RecentProjectStore: ObservableObject {
//    var products: [Product]
    var loadingState: LoadingState = .notStarted
        
//    private let apiClient: APIClient
//    private let databaseClient: DatabaseClient
//    private let discountCalculator: DiscountCalculator
//    private let logger: Logger
    
//    init(
//        apiClient: APIClient = .live,
//        databaseClient: DatabaseClient = .live,
//        discountCalculator: DiscountCalculator,
//        logger: Logger
//    ) {
//        self.products = []
//        self.apiClient = apiClient
//        self.databaseClient = databaseClient
//        self.discountCalculator = discountCalculator
//        self.logger = logger
//    }
    
    enum LoadingState {
        case notStarted
        case loading
        case loaded
        case empty
        case error(message: String)
    }
    
//    @MainActor
//    func fetchProducts() async {
//        loadingState = .loading
//        logger.log("Started fetching products.")
//        
//        // Try fetching from the cache first
//        let cachedProducts = databaseClient.fetchCachedProducts()
//        guard cachedProducts.isEmpty else {
//            products = cachedProducts
//            loadingState = .loaded(result: cachedProducts)
//            logger.log("Fetched products from cache.")
//            return
//        }
//        
//        do {
//            var fetchedProducts = try await apiClient.fetchProducts()
//            fetchedProducts = discountCalculator.applyDiscount(to: fetchedProducts)
//            products = fetchedProducts
//            loadingState = products.isEmpty ? .empty : .loaded(result: products)
//            
//            // Save fetched products to the database
//            databaseClient.saveProducts(products)
//            logger.log("Fetched products from API and applied discounts.")
//        } catch {
//            loadingState = .error(message: error.localizedDescription)
//            logger.log("Error fetching products: \(error.localizedDescription).")
//        }
//    }
//    
//    // This code is for demo purpuses
//    func fetchProducts(completion: @escaping (Result<[Product], Error>) -> Void) {
//        apiClient.fetchProducts(completion: completion)
//    }
    
}
