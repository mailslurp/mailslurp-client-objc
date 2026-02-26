# OAIAliasDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** |  | 
**emailAddress** | **NSString*** | The alias&#39;s email address for receiving email | 
**maskedEmailAddress** | **NSString*** | The underlying email address that is hidden and will received forwarded email | [optional] 
**userId** | **NSString*** |  | 
**inboxId** | **NSString*** | Inbox that is associated with the alias | 
**name** | **NSString*** |  | [optional] 
**useThreads** | **NSNumber*** | If alias will generate response threads or not when email are received by it | [optional] 
**isVerified** | **NSNumber*** | Has the alias been verified. You must verify an alias if the masked email address has not yet been verified by your account | 
**domainId** | **NSString*** | Domain ID associated with the alias | [optional] 
**createdAt** | **NSDate*** |  | [optional] 
**updatedAt** | **NSDate*** |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


