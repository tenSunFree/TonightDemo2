import Alamofire
import Foundation

protocol ApiObject: Decodable {
    static var apiPath: String? { get }
}

enum Api {
    static let baseUrl = "https://api.publicapis.org/"
}

final class NetworkManager {
    func get<T: ApiObject>(_ Type: T.Type,
                           completion: @escaping (T) -> Void)
    {
        AF.request(Api.baseUrl + T.apiPath!).responseDecodable(of: Type) {
            response in guard let resultInstance = response.value else { return }
            completion(resultInstance)
        }
    }
}
