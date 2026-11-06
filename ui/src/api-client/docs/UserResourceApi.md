# UserResourceApi

All URIs are relative to *http://localhost:8081*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**syncUser**](#syncuser) | **GET** /api/user/sync | |

# **syncUser**
> UserDTO syncUser()


### Example

```typescript
import {
    UserResourceApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new UserResourceApi(configuration);

const { status, data } = await apiInstance.syncUser();
```

### Parameters
This endpoint does not have any parameters.


### Return type

**UserDTO**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Sync user |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

