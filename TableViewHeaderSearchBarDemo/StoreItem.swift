
import UIKit

struct StoreItem: Codable {
    let trackName: String
    let artistName: String
    var kind: String
    var artworkUrl100: URL
}

struct SearchResponse: Codable {
    let results: [StoreItem]
}

extension StoreItem {
    static var data: [Self] {
        if let data = NSDataAsset(name: "劉德華")?.data {
            let decoder = JSONDecoder()
            do {
                let searchResponse = try decoder.decode(SearchResponse.self, from: data)
                return searchResponse.results
            } catch  {
                print(error)
            }
        }
        return []

    }
}
