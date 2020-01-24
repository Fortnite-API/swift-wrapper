import Foundation

public struct Cosmetic: Codable {
    let id: String
    let type: String
    let backendType: String
    let rarity: String
    let displayRarity: String
    let backendRarity: String
    let name: String
    let shortDescription: String
    let description: String
    let images: String
    let gameplayTags: String
    let displayAssetPath: String
    let definition: String
    let path: String
    let lastUpdate: String
    let added: String
}

func fnapi_get(endpoint: String, xapikey: String) -> (Data, URLResponse?) {
    let url = URL(string: "https://fortnite-api.com/\(endpoint)")
    var request = URLRequest(url: url!)
    request.setValue(xapikey, forHTTPHeaderField: "x-api-key")
    
    let semaphore = DispatchSemaphore(value: 0)

    var result: Data?
    var _response: URLResponse?

    let task = URLSession.shared.dataTask(with: request) {(data, response, error) in
        result = data!
        _response = response
        semaphore.signal()
    }
    
    task.resume()
    semaphore.wait()
    return (result!, _response)
}

public struct fortnite_api {
    
    public static func getShop(language: String, xapikey: String) -> (Data){
        let query: (data: Data, address: URLResponse?) = fnapi_get(endpoint: "shop/br?language\(language)", xapikey: "\(xapikey)")
        return query.data
    }
    
    public static func getCreatorCode(slug: String, xapikey: String) -> (Data){
        let query: (data: Data, address: URLResponse?) = fnapi_get(endpoint: "creatorcode/search?slug=\(slug)", xapikey: "\(xapikey)")
        return query.data
    }
    
    public static func getAllCosmetics(xapikey: String) -> (Data){
        let query: (data: Data, address: URLResponse?) = fnapi_get(endpoint: "cosmetics/br", xapikey: "\(xapikey)")
        return query.data
    }
    
    public static func searchCosmetics(parameters: String, value: String, xapikey: String) -> (Data){
        let query: (data: Data, address: URLResponse?) = fnapi_get(endpoint: "cosmetics/br/search?\(parameters)=\(value)", xapikey: "\(xapikey)")
        return query.data

    }
    
    public static func searchAllCosmetics(parameters: String, value: String, xapikey: String) -> (Data){
        let query: (data: Data, address: URLResponse?) = fnapi_get(endpoint: "cosmetics/br/search/all?\(parameters)=\(value)", xapikey: "\(xapikey)")
        return query.data
    }
    
    public static func searchCosmeticIds(id: String, xapikey: String) -> (Data){
        let query: (data: Data, address: URLResponse?) = fnapi_get(endpoint: "cosmetics/br/search/ids?id=\(id)", xapikey: "\(xapikey)")
        return query.data
    }
    
    public static func getAllNews(xapikey: String) -> (Data){
        let query: (data: Data, address: URLResponse?) = fnapi_get(endpoint: "news/", xapikey: "\(xapikey)")
        return query.data
    }
    
    public static func getNews(gamemode: String, xapikey: String) -> (Data){
        let query: (data: Data, address: URLResponse?) = fnapi_get(endpoint: "news/\(gamemode)", xapikey: "\(xapikey)")
        return query.data
    }
    
    public static func getAes(xapikey: String) -> (Data){
        let query: (data: Data, address: URLResponse?) = fnapi_get(endpoint: "aes", xapikey: "\(xapikey)")
        return query.data
    }
}
