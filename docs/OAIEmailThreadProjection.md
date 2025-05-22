# OAIEmailThreadProjection

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender** | [**OAISenderProjection***](OAISenderProjection) |  | [optional] 
**recipients** | [**OAIEmailRecipientsProjection***](OAIEmailRecipientsProjection) |  | [optional] 
**userId** | **NSString*** | User ID | 
**inboxId** | **NSString*** | Inbox ID | [optional] 
**updatedAt** | **NSDate*** | Updated at DateTime | 
**createdAt** | **NSDate*** | Created at DateTime | 
**to** | **NSArray&lt;NSString*&gt;*** | To recipients | 
**cc** | **NSArray&lt;NSString*&gt;*** | CC recipients | [optional] 
**bcc** | **NSArray&lt;NSString*&gt;*** | BCC recipients | [optional] 
**hasAttachments** | **NSNumber*** | Has attachments | 
**unread** | **NSNumber*** | Has unread | 
**messageCount** | **NSNumber*** | Number of messages in the thread | 
**lastBodyExcerpt** | **NSString*** | Last body excerpt | [optional] 
**lastTextExcerpt** | **NSString*** | Last text excerpt | [optional] 
**lastCreatedAt** | **NSDate*** | Last email created time | [optional] 
**lastFrom** | **NSString*** | Last sender | [optional] 
**lastSender** | [**OAISenderProjection***](OAISenderProjection) |  | [optional] 
**subject** | **NSString*** | Thread topic subject | [optional] 
**_id** | **NSString*** | ID of email thread | 
**from** | **NSString*** | From sender | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


