# OAISearchInboxesOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pageIndex** | **NSNumber*** | Optional page index in list pagination | [optional] 
**pageSize** | **NSNumber*** | Optional page size in list pagination | [optional] 
**sortDirection** | **NSString*** | Optional createdAt sort direction ASC or DESC | [optional] 
**favourite** | **NSNumber*** | Optionally filter results for favourites only | [optional] 
**search** | **NSString*** | Optionally filter by search words partial matching ID, tags, name, and email address | [optional] 
**tag** | **NSString*** | Optionally filter by tags. Will return inboxes that include given tags | [optional] 
**since** | **NSDate*** | Optional filter by created after given date time | [optional] 
**before** | **NSDate*** | Optional filter by created before given date time | [optional] 
**inboxType** | **NSString*** | Type of inbox. HTTP inboxes are faster and better for most cases. SMTP inboxes are more suited for public facing inbound messages (but cannot send). | [optional] 
**inboxFunction** | **NSString*** | Optional filter by inbox function | [optional] 
**domainId** | **NSString*** | Optional domain ID filter | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


