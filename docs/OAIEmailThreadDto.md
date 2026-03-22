# OAIEmailThreadDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | ID of email thread | 
**userId** | **NSString*** | User ID | 
**inboxId** | **NSString*** | Inbox ID | [optional] 
**from** | **NSString*** | From sender | [optional] 
**to** | **NSArray&lt;NSString*&gt;*** | To recipients | 
**cc** | **NSArray&lt;NSString*&gt;*** | CC recipients | [optional] 
**bcc** | **NSArray&lt;NSString*&gt;*** | BCC recipients | [optional] 
**sender** | [**OAISender***](OAISender) |  | [optional] 
**recipients** | [**OAIEmailRecipients***](OAIEmailRecipients) |  | [optional] 
**subject** | **NSString*** | Thread topic subject | [optional] 
**createdAt** | **NSDate*** | Created at DateTime | 
**updatedAt** | **NSDate*** | Updated at DateTime | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


