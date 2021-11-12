import Foundation

struct HomeEntriesResponse: ApiObject {
    static var apiPath: String? = "entries"
    let detailResponse: [HomeEntriesDetailResponse]?

    enum CodingKeys: String, CodingKey {
        case detailResponse = "entries"
    }
}

struct HomeEntriesDetailResponse: ApiObject {
    static var apiPath: String? = ""
    let description: String?
    let link: String?

    enum CodingKeys: String, CodingKey {
        case description = "Description"
        case link = "Link"
    }
}
