//
//  SearchItemsResponse.swift
//  MeliAssignment
//
//  Created by Alejandro Rodríguez on 28/06/21.
//

import Foundation

struct SearchItemsResponse: Decodable {
    var pagingResponse: PagingResponse?
//    var results: [SearchItemResponse]?
//    var siteId: String?

    enum CodingKeys: String, CodingKey {
        case pagingResponse = "paging"
//        case siteId = "site_id"
//        case results
    }
}

struct SearchItemResponse: Decodable {
    var id: String?
    var title: String?
//    var seller: SearchItemSellerResponse?
//    var price: Int?
//    var thumbnail: String?
//    var shipping: SearchItemSellerShippingResponse?

//    enum CodingKeys: String, CodingKey {
//        case id
//        case title
//        case seller
//        case price
//        case thumbnail = "permalink"
//        case shipping
//    }
}

struct SearchItemSellerResponse: Decodable {
    var id: Int?
    var eShop: SearchItemSellerEShopResponse?

    enum CodingKeys: String, CodingKey {
        case eShop = "eshop"
    }

}

struct SearchItemSellerEShopResponse: Decodable {
    var nickName: String?

    enum CodingKeys: String, CodingKey {
        case nickName = "nick_name"
    }
}

struct SearchItemSellerShippingResponse: Decodable {
    var freeShipping: Bool?

    enum CodingKeys: String, CodingKey {
        case freeShipping = "free_shipping"
    }
}

struct PagingResponse: Decodable {
    var total: Int?
    var offset: Int?
    var limit: Int?
}
