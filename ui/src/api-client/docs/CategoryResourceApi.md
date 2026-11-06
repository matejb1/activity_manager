# CategoryResourceApi

All URIs are relative to *http://localhost:8081*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**getAllCategories**](#getallcategories) | **GET** /api/category | |

# **getAllCategories**
> Array<CategoryDTO> getAllCategories()


### Example

```typescript
import {
    CategoryResourceApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new CategoryResourceApi(configuration);

const { status, data } = await apiInstance.getAllCategories();
```

### Parameters
This endpoint does not have any parameters.


### Return type

**Array<CategoryDTO>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Get all categories |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

