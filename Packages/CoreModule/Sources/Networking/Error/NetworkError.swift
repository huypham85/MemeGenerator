
import Foundation

public enum NetworkError: Error, Equatable {
    case decode
    case generic
    case invalidURL
    case noResponse
    case unauthorized
    case unexpectedStatusCode(HTTPURLResponse)
    case unknown
    case badRequest
    case forbidden
    case notFound
    case serverError
    case custom(String)

    public var customMessage: String {
        switch self {
        case .decode:
            return "Decode Error"
        case .generic:
            return "Generic Error"
        case .invalidURL:
            return "Invalid URL Error"
        case .noResponse:
            return "No Response"
        case .unauthorized:
            return "Unauthorized URL"
        case .unexpectedStatusCode:
            return "Status Code Error"
        default:
            return "Unknown Error"
        }
    }
}
