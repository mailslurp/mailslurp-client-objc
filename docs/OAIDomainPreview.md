# OAIDomainPreview

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** |  | [optional] 
**domain** | **NSString*** |  | [optional] 
**catchAllInboxId** | **NSString*** |  | [optional] 
**createdAt** | **NSDate*** |  | [optional] 
**domainType** | **NSString*** | Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails. | [optional] 
**verified** | **NSNumber*** |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


