# ActivityResourceApi

All URIs are relative to *http://localhost:8081*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**addActivity**](#addactivity) | **POST** /api/activity | |
|[**deleteActivityById**](#deleteactivitybyid) | **DELETE** /api/activity/{id} | |
|[**getActivities**](#getactivities) | **GET** /api/activity | |
|[**getActivity**](#getactivity) | **GET** /api/activity/{id} | |
|[**updateActivity**](#updateactivity) | **PUT** /api/activity/{id} | |

# **addActivity**
> ActivityDTO addActivity(activityDTO)


### Example

```typescript
import {
    ActivityResourceApi,
    Configuration,
    ActivityDTO
} from './api';

const configuration = new Configuration();
const apiInstance = new ActivityResourceApi(configuration);

let activityDTO: ActivityDTO; //

const { status, data } = await apiInstance.addActivity(
    activityDTO
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **activityDTO** | **ActivityDTO**|  | |


### Return type

**ActivityDTO**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Add acitivity by id |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteActivityById**
> ActivityDTO deleteActivityById()


### Example

```typescript
import {
    ActivityResourceApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new ActivityResourceApi(configuration);

let id: number; // (default to undefined)

const { status, data } = await apiInstance.deleteActivityById(
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **id** | [**number**] |  | defaults to undefined|


### Return type

**ActivityDTO**

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

# **getActivities**
> Array<ActivityDTO> getActivities()


### Example

```typescript
import {
    ActivityResourceApi,
    Configuration,
    Pageable
} from './api';

const configuration = new Configuration();
const apiInstance = new ActivityResourceApi(configuration);

let pageable: Pageable; // (default to undefined)

const { status, data } = await apiInstance.getActivities(
    pageable
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **pageable** | **Pageable** |  | defaults to undefined|


### Return type

**Array<ActivityDTO>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Get acitivities |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getActivity**
> ActivityDTO getActivity()


### Example

```typescript
import {
    ActivityResourceApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new ActivityResourceApi(configuration);

let id: number; // (default to undefined)

const { status, data } = await apiInstance.getActivity(
    id
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **id** | [**number**] |  | defaults to undefined|


### Return type

**ActivityDTO**

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

# **updateActivity**
> ActivityDTO updateActivity(activityDTO)


### Example

```typescript
import {
    ActivityResourceApi,
    Configuration,
    ActivityDTO
} from './api';

const configuration = new Configuration();
const apiInstance = new ActivityResourceApi(configuration);

let id: number; // (default to undefined)
let activityDTO: ActivityDTO; //

const { status, data } = await apiInstance.updateActivity(
    id,
    activityDTO
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **activityDTO** | **ActivityDTO**|  | |
| **id** | [**number**] |  | defaults to undefined|


### Return type

**ActivityDTO**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Update acitivity by id |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

