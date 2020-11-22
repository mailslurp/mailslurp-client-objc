# OAIEmail

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**analysis** | [**OAIEmailAnalysis***](OAIEmailAnalysis.md) |  | [optional] 
**attachments** | **NSArray&lt;NSString*&gt;*** | List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension. | [optional] 
**bcc** | **NSArray&lt;NSString*&gt;*** | List of &#x60;BCC&#x60; recipients email was addressed to | [optional] 
**body** | **NSString*** | The body of the email message | [optional] 
**bodyMD5Hash** | **NSString*** | A hash signature of the email message | [optional] 
**cc** | **NSArray&lt;NSString*&gt;*** | List of &#x60;CC&#x60; recipients email was addressed to | [optional] 
**charset** | **NSString*** | Detected character set of the email body such as UTF-8 | [optional] 
**createdAt** | **NSDate*** | When was the email received by MailSlurp | [optional] 
**from** | **NSString*** | Who the email was sent from | [optional] 
**headers** | **NSDictionary&lt;NSString*, NSString*&gt;*** |  | [optional] 
**_id** | **NSString*** | ID of the email | [optional] 
**inboxId** | **NSString*** | ID of the inbox that received the email | [optional] 
**isHTML** | **NSNumber*** | Was HTML sent in the email body | [optional] 
**read** | **NSNumber*** | Has the email been viewed ever | [optional] 
**subject** | **NSString*** | The subject line of the email message | [optional] 
**to** | **NSArray&lt;NSString*&gt;*** | List of &#x60;To&#x60; recipients email was addressed to | [optional] 
**updatedAt** | **NSDate*** | When was the email last updated | [optional] 
**userId** | **NSString*** | ID of user that email belongs | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


