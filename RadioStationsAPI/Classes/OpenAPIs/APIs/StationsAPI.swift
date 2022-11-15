//
// StationsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(Combine)
import Combine
#endif
#if canImport(AnyCodable)
import AnyCodable
#endif

open class StationsAPI {

    /**
     This is a summary
     
     - parameter id: (query) The id to consume. (optional)
     - returns: AnyPublisher<[RadioStationsListDTO], Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getAllRadioStations(id: Int? = nil) -> AnyPublisher<[RadioStationsListDTO], Error> {
        var requestTask: RequestTask?
        return Future<[RadioStationsListDTO], Error> { promise in
            requestTask = getAllRadioStationsWithRequestBuilder(id: id).execute { result in
                switch result {
                case let .success(response):
                    promise(.success(response.body))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }
        .handleEvents(receiveCancel: {
            requestTask?.cancel()
        })
        .eraseToAnyPublisher()
    }
    #endif

    /**
     This is a summary
     - GET /stations
     - This is a description
     - parameter id: (query) The id to consume. (optional)
     - returns: RequestBuilder<[RadioStationsListDTO]> 
     */
    open class func getAllRadioStationsWithRequestBuilder(id: Int? = nil) -> RequestBuilder<[RadioStationsListDTO]> {
        let localVariablePath = "/stations"
        let localVariableURLString = RadioStationsAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "id": (wrappedValue: id?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[RadioStationsListDTO]>.Type = RadioStationsAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}
