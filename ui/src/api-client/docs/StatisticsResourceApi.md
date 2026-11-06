# StatisticsResourceApi

All URIs are relative to *http://localhost:8081*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**getStatistics**](#getstatistics) | **GET** /api/statistics | |

# **getStatistics**
> StatisticsDTO getStatistics()


### Example

```typescript
import {
    StatisticsResourceApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new StatisticsResourceApi(configuration);

const { status, data } = await apiInstance.getStatistics();
```

### Parameters
This endpoint does not have any parameters.


### Return type

**StatisticsDTO**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Get acitivity by id |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

