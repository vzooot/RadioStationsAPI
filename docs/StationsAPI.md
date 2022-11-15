# StationsAPI

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllRadioStations**](StationsAPI.md#getallradiostations) | **GET** /stations | This is a summary


# **getAllRadioStations**
```swift
    open class func getAllRadioStations(id: Int? = nil, completion: @escaping (_ data: [RadioStationsListDTO]?, _ error: Error?) -> Void)
```

This is a summary

This is a description

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import RadioStationsAPI

let id = 987 // Int | The id to consume. (optional)

// This is a summary
StationsAPI.getAllRadioStations(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The id to consume. | [optional] 

### Return type

[**[RadioStationsListDTO]**](RadioStationsListDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

