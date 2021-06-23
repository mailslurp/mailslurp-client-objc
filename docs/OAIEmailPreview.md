# OAIEmailPreview

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachments** | **NSArray&lt;NSString*&gt;*** | List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension. | [optional] 
**bcc** | **NSArray&lt;NSString*&gt;*** | List of &#x60;BCC&#x60; recipients email was addressed to | [optional] 
**cc** | **NSArray&lt;NSString*&gt;*** | List of &#x60;CC&#x60; recipients email was addressed to | [optional] 
**createdAt** | **NSDate*** | When was the email received by MailSlurp | [optional] 
**from** | **NSString*** | Who the email was sent from | [optional] 
**_id** | **NSString*** | ID of the email entity | [optional] 
**read** | **NSNumber*** | Read flag. Has the email ever been viewed in the dashboard or fetched via the API? If so the email is marked as read. | [optional] 
**subject** | **NSString*** | The subject line of the email message | [optional] 
**to** | **NSArray&lt;NSString*&gt;*** | List of &#x60;To&#x60; recipients that email was addressed to | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


