# TestResourceApi

All URIs are relative to *http://localhost:8081*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**getPerson**](#getperson) | **GET** /api/test/a | |

# **getPerson**
> Array<PersonDTO> getPerson()


### Example

```typescript
import {
    TestResourceApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new TestResourceApi(configuration);

const { status, data } = await apiInstance.getPerson();
```

### Parameters
This endpoint does not have any parameters.


### Return type

**Array<PersonDTO>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | This is super boring description |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

