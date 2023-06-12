# OAICreateInboxReplierOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**inboxId** | **NSString*** | Inbox ID to attach replier to | 
**name** | **NSString*** | Name for replier | [optional] 
**field** | **NSString*** | Field to match against to trigger inbox replier for inbound email | 
**match** | **NSString*** | String or wildcard style match for field specified when evaluating reply rules. Use &#x60;*&#x60; to match anything. | 
**replyTo** | **NSString*** | Reply-to email address when sending replying | [optional] 
**subject** | **NSString*** | Subject override when replying to email | [optional] 
**from** | **NSString*** | Send email from address | [optional] 
**charset** | **NSString*** | Email reply charset | [optional] 
**ignoreReplyTo** | **NSNumber*** | Ignore sender replyTo when responding. Send directly to the sender if enabled. | [optional] 
**isHTML** | **NSNumber*** | Send HTML email | [optional] 
**body** | **NSString*** | Email body for reply | [optional] 
**templateId** | **NSString*** | ID of template to use when sending a reply | [optional] 
**templateVariables** | **NSDictionary&lt;NSString*, NSObject*&gt;*** | Template variable values | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


