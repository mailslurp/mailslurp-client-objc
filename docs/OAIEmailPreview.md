# OAIEmailPreview

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachments** | **NSArray&lt;NSString*&gt;*** | List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension. | [optional] 
**bcc** | **NSArray&lt;NSString*&gt;*** | List of &#x60;BCC&#x60; recipients email was addressed to | [optional] 
**cc** | **NSArray&lt;NSString*&gt;*** | List of &#x60;CC&#x60; recipients email was addressed to | [optional] 
**createdAt** | **NSDate*** | When was the email received by MailSlurp | [optional] 
**from** | **NSString*** | Who the email was sent from | [optional] 
**_id** | **NSString*** | ID of the email | [optional] 
**read** | **NSNumber*** | Has the email been viewed ever | [optional] 
**subject** | **NSString*** | The subject line of the email message | [optional] 
**to** | **NSArray&lt;NSString*&gt;*** | List of &#x60;To&#x60; recipients email was addressed to | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


