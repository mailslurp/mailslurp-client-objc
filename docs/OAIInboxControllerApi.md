# OAIInboxControllerApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createInbox**](OAIInboxControllerApi#createinbox) | **POST** /inboxes | Create an inbox email address. An inbox has a real email address and can send and receive emails. Inboxes can be either &#x60;SMTP&#x60; or &#x60;HTTP&#x60; inboxes.
[**createInboxRuleset**](OAIInboxControllerApi#createinboxruleset) | **POST** /inboxes/{inboxId}/rulesets | Create an inbox ruleset
[**createInboxWithDefaults**](OAIInboxControllerApi#createinboxwithdefaults) | **POST** /inboxes/withDefaults | Create an inbox with default options. Uses MailSlurp domain pool address and is private.
[**createInboxWithOptions**](OAIInboxControllerApi#createinboxwithoptions) | **POST** /inboxes/withOptions | Create an inbox with options. Extended options for inbox creation.
[**deleteAllInboxes**](OAIInboxControllerApi#deleteallinboxes) | **DELETE** /inboxes | Delete all inboxes
[**deleteInbox**](OAIInboxControllerApi#deleteinbox) | **DELETE** /inboxes/{inboxId} | Delete inbox
[**doesInboxExist**](OAIInboxControllerApi#doesinboxexist) | **GET** /inboxes/exists | Does inbox exist
[**flushExpired**](OAIInboxControllerApi#flushexpired) | **DELETE** /inboxes/expired | Remove expired inboxes
[**getAllInboxes**](OAIInboxControllerApi#getallinboxes) | **GET** /inboxes/paginated | List All Inboxes Paginated
[**getEmails**](OAIInboxControllerApi#getemails) | **GET** /inboxes/{inboxId}/emails | Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.
[**getInbox**](OAIInboxControllerApi#getinbox) | **GET** /inboxes/{inboxId} | Get Inbox. Returns properties of an inbox.
[**getInboxCount**](OAIInboxControllerApi#getinboxcount) | **GET** /inboxes/count | Get total inbox count
[**getInboxEmailCount**](OAIInboxControllerApi#getinboxemailcount) | **GET** /inboxes/{inboxId}/emails/count | Get email count in inbox
[**getInboxEmailsPaginated**](OAIInboxControllerApi#getinboxemailspaginated) | **GET** /inboxes/{inboxId}/emails/paginated | Get inbox emails paginated
[**getInboxSentEmails**](OAIInboxControllerApi#getinboxsentemails) | **GET** /inboxes/{inboxId}/sent | Get Inbox Sent Emails
[**getInboxTags**](OAIInboxControllerApi#getinboxtags) | **GET** /inboxes/tags | Get inbox tags
[**getInboxes**](OAIInboxControllerApi#getinboxes) | **GET** /inboxes | List Inboxes and email addresses
[**getOrganizationInboxes**](OAIInboxControllerApi#getorganizationinboxes) | **GET** /inboxes/organization | List Organization Inboxes Paginated
[**listInboxRulesets**](OAIInboxControllerApi#listinboxrulesets) | **GET** /inboxes/{inboxId}/rulesets | List inbox rulesets
[**listInboxTrackingPixels**](OAIInboxControllerApi#listinboxtrackingpixels) | **GET** /inboxes/{inboxId}/tracking-pixels | List inbox tracking pixels
[**sendEmail**](OAIInboxControllerApi#sendemail) | **POST** /inboxes/{inboxId} | Send Email
[**sendEmailAndConfirm**](OAIInboxControllerApi#sendemailandconfirm) | **POST** /inboxes/{inboxId}/confirm | Send email and return sent confirmation
[**sendTestEmail**](OAIInboxControllerApi#sendtestemail) | **POST** /inboxes/{inboxId}/send-test-email | Send a test email to inbox
[**setInboxFavourited**](OAIInboxControllerApi#setinboxfavourited) | **PUT** /inboxes/{inboxId}/favourite | Set inbox favourited state
[**updateInbox**](OAIInboxControllerApi#updateinbox) | **PATCH** /inboxes/{inboxId} | Update Inbox. Change name and description. Email address is not editable.


# **createInbox**
```objc
-(NSURLSessionTask*) createInboxWithACustomEmailAddressToUseWithTheInboxDefaultsToNullWhenNullMailSlurpWillAssignARandomEmailAddressToTheInboxSuchAs123mailslurpComIfYouUseTheUseDomainPoolOptionWhenTheEmailAddressIsNullItWillGenerateAnEmailAddressWithAMoreVariedDomainEndingSuchAs123mailslurpInfoOr123mailslurpBizWhenACustomEmailAddressIsProvidedTheAddressIsSplitIntoADomainAndTheDomainIsQueriedAgainstYourUserIfYouHaveCreatedTheDomainInTheMailSlurpDashboardAndVerifiedItYouCanUseAnyEmailAddressThatEndsWithTheDomainNoteDomainTypesMustMatchTheInboxTypeSoSMTPInboxesWillOnlyWorkWithSMTPTypeDomainsAvoidSMTPInboxesIfYouNeedToSendEmailsAsTheyCanOnlyReceiveSendAnEmailToThisAddressAndTheInboxWillReceiveAndStoreItForYouToRetrieveTheEmailUseTheInboxAndEmailControllerEndpointsWithTheInboxID: (NSString*) aCustomEmailAddressToUseWithTheInboxDefaultsToNullWhenNullMailSlurpWillAssignARandomEmailAddressToTheInboxSuchAs123mailslurpComIfYouUseTheUseDomainPoolOptionWhenTheEmailAddressIsNullItWillGenerateAnEmailAddressWithAMoreVariedDomainEndingSuchAs123mailslurpInfoOr123mailslurpBizWhenACustomEmailAddressIsProvidedTheAddressIsSplitIntoADomainAndTheDomainIsQueriedAgainstYourUserIfYouHaveCreatedTheDomainInTheMailSlurpDashboardAndVerifiedItYouCanUseAnyEmailAddressThatEndsWithTheDomainNoteDomainTypesMustMatchTheInboxTypeSoSMTPInboxesWillOnlyWorkWithSMTPTypeDomainsAvoidSMTPInboxesIfYouNeedToSendEmailsAsTheyCanOnlyReceiveSendAnEmailToThisAddressAndTheInboxWillReceiveAndStoreItForYouToRetrieveTheEmailUseTheInboxAndEmailControllerEndpointsWithTheInboxID
    tagsThatInboxHasBeenTaggedWithTagsCanBeAddedToInboxesToGroupDifferentInboxesWithinAnAccountYouCanAlsoSearchForInboxesByTagInTheDashboardUI: (NSArray<NSString*>*) tagsThatInboxHasBeenTaggedWithTagsCanBeAddedToInboxesToGroupDifferentInboxesWithinAnAccountYouCanAlsoSearchForInboxesByTagInTheDashboardUI
    optionalNameOfTheInboxDisplayedInTheDashboardForEasierSearchAndUsedAsTheSenderNameWhenSendingEmails: (NSString*) optionalNameOfTheInboxDisplayedInTheDashboardForEasierSearchAndUsedAsTheSenderNameWhenSendingEmails
    optionalDescriptionOfTheInboxForLabellingPurposesIsShownInTheDashboardAndCanBeUsedWith: (NSString*) optionalDescriptionOfTheInboxForLabellingPurposesIsShownInTheDashboardAndCanBeUsedWith
    useTheMailSlurpDomainNamePoolWithThisInboxWhenCreatingTheEmailAddressDefaultsToNullIfEnabledTheInboxWillBeAnEmailAddressWithADomainRandomlyChosenFromAListOfTheMailSlurpDomainsThisIsUsefulWhenTheDefaultMailslurpComEmailAddressesUsedWithInboxesAreBlockedOrConsideredSpamByAProviderOrReceivingServiceWhenDomainPoolIsEnabledAnEmailAddressWillBeGeneratedEndingInMailslurpWorldinfoxyzThisMeansATLDIsRandomlySelectingFromAListOfBizInfoXyzEtcToAddVarianceToTheGeneratedEmailAddressesWhenNullOrFalseMailSlurpUsesTheDefaultBehaviorOfMailslurpComOrCustomEmailAddressProvidedByTheEmailAddressFieldNoteThisFeatureIsOnlyAvailableForHTTPInboxTypes: (NSNumber*) useTheMailSlurpDomainNamePoolWithThisInboxWhenCreatingTheEmailAddressDefaultsToNullIfEnabledTheInboxWillBeAnEmailAddressWithADomainRandomlyChosenFromAListOfTheMailSlurpDomainsThisIsUsefulWhenTheDefaultMailslurpComEmailAddressesUsedWithInboxesAreBlockedOrConsideredSpamByAProviderOrReceivingServiceWhenDomainPoolIsEnabledAnEmailAddressWillBeGeneratedEndingInMailslurpWorldinfoxyzThisMeansATLDIsRandomlySelectingFromAListOfBizInfoXyzEtcToAddVarianceToTheGeneratedEmailAddressesWhenNullOrFalseMailSlurpUsesTheDefaultBehaviorOfMailslurpComOrCustomEmailAddressProvidedByTheEmailAddressFieldNoteThisFeatureIsOnlyAvailableForHTTPInboxTypes
    isTheInboxAFavoriteMarkingAnInboxAsAFavoriteIsTypicallyDoneInTheDashboardForQuickAccessOrFiltering: (NSNumber*) isTheInboxAFavoriteMarkingAnInboxAsAFavoriteIsTypicallyDoneInTheDashboardForQuickAccessOrFiltering
    optionalInboxExpirationDateIfNullThenThisInboxIsPermanentAndTheEmailsInItWontBeDeletedIfAnExpirationDateIsProvidedOrIsRequiredByYourPlanTheInboxWillBeClosedWhenTheExpirationTimeIsReachedExpiredInboxesStillContainTheirEmailsButCanNoLongerSendOrReceiveEmailsAnExpiredInboxRecordIsCreatedWhenAnInboxAndTheEmailAddressAndInboxIDAreRecordedTheExpiresAtPropertyIsATimestampStringInISODateTimeFormatYyyyMMDdTHHmmssSSSXXX: (NSDate*) optionalInboxExpirationDateIfNullThenThisInboxIsPermanentAndTheEmailsInItWontBeDeletedIfAnExpirationDateIsProvidedOrIsRequiredByYourPlanTheInboxWillBeClosedWhenTheExpirationTimeIsReachedExpiredInboxesStillContainTheirEmailsButCanNoLongerSendOrReceiveEmailsAnExpiredInboxRecordIsCreatedWhenAnInboxAndTheEmailAddressAndInboxIDAreRecordedTheExpiresAtPropertyIsATimestampStringInISODateTimeFormatYyyyMMDdTHHmmssSSSXXX
    numberOfMillisecondsThatInboxShouldExistFor: (NSNumber*) numberOfMillisecondsThatInboxShouldExistFor
    dEPRECATEDTeamAccessIsAlwaysTrueGrantTeamAccessToThisInboxAndTheEmailsThatBelongToItForTeamMembersOfYourOrganization: (NSNumber*) dEPRECATEDTeamAccessIsAlwaysTrueGrantTeamAccessToThisInboxAndTheEmailsThatBelongToItForTeamMembersOfYourOrganization
    hTTPDefaultOrSMTPInboxTypeHTTPInboxesAreDefaultAndBestSolutionForMostCasesSMTPInboxesAreMoreReliableForPublicInboundEmailConsumptionButDoNotSupportSendingEmailsWhenUsingCustomDomainsTheDomainTypeMustMatchTheInboxTypeHTTPInboxesAreProcessedByAWSSESWhileSMTPInboxesUseACustomMailServerRunningAtMxMailslurpCom: (NSString*) hTTPDefaultOrSMTPInboxTypeHTTPInboxesAreDefaultAndBestSolutionForMostCasesSMTPInboxesAreMoreReliableForPublicInboundEmailConsumptionButDoNotSupportSendingEmailsWhenUsingCustomDomainsTheDomainTypeMustMatchTheInboxTypeHTTPInboxesAreProcessedByAWSSESWhileSMTPInboxesUseACustomMailServerRunningAtMxMailslurpCom
        completionHandler: (void (^)(OAIInboxDto* output, NSError* error)) handler;
```

Create an inbox email address. An inbox has a real email address and can send and receive emails. Inboxes can be either `SMTP` or `HTTP` inboxes.

Create a new inbox and with a randomized email address to send and receive from. Pass emailAddress parameter if you wish to use a specific email address. Creating an inbox is required before sending or receiving emails. If writing tests it is recommended that you create a new inbox during each test method so that it is unique and empty. 

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* aCustomEmailAddressToUseWithTheInboxDefaultsToNullWhenNullMailSlurpWillAssignARandomEmailAddressToTheInboxSuchAs123mailslurpComIfYouUseTheUseDomainPoolOptionWhenTheEmailAddressIsNullItWillGenerateAnEmailAddressWithAMoreVariedDomainEndingSuchAs123mailslurpInfoOr123mailslurpBizWhenACustomEmailAddressIsProvidedTheAddressIsSplitIntoADomainAndTheDomainIsQueriedAgainstYourUserIfYouHaveCreatedTheDomainInTheMailSlurpDashboardAndVerifiedItYouCanUseAnyEmailAddressThatEndsWithTheDomainNoteDomainTypesMustMatchTheInboxTypeSoSMTPInboxesWillOnlyWorkWithSMTPTypeDomainsAvoidSMTPInboxesIfYouNeedToSendEmailsAsTheyCanOnlyReceiveSendAnEmailToThisAddressAndTheInboxWillReceiveAndStoreItForYouToRetrieveTheEmailUseTheInboxAndEmailControllerEndpointsWithTheInboxID = @"aCustomEmailAddressToUseWithTheInboxDefaultsToNullWhenNullMailSlurpWillAssignARandomEmailAddressToTheInboxSuchAs123mailslurpComIfYouUseTheUseDomainPoolOptionWhenTheEmailAddressIsNullItWillGenerateAnEmailAddressWithAMoreVariedDomainEndingSuchAs123mailslurpInfoOr123mailslurpBizWhenACustomEmailAddressIsProvidedTheAddressIsSplitIntoADomainAndTheDomainIsQueriedAgainstYourUserIfYouHaveCreatedTheDomainInTheMailSlurpDashboardAndVerifiedItYouCanUseAnyEmailAddressThatEndsWithTheDomainNoteDomainTypesMustMatchTheInboxTypeSoSMTPInboxesWillOnlyWorkWithSMTPTypeDomainsAvoidSMTPInboxesIfYouNeedToSendEmailsAsTheyCanOnlyReceiveSendAnEmailToThisAddressAndTheInboxWillReceiveAndStoreItForYouToRetrieveTheEmailUseTheInboxAndEmailControllerEndpointsWithTheInboxID_example"; //  (optional)
NSArray<NSString*>* tagsThatInboxHasBeenTaggedWithTagsCanBeAddedToInboxesToGroupDifferentInboxesWithinAnAccountYouCanAlsoSearchForInboxesByTagInTheDashboardUI = @[@"tagsThatInboxHasBeenTaggedWithTagsCanBeAddedToInboxesToGroupDifferentInboxesWithinAnAccountYouCanAlsoSearchForInboxesByTagInTheDashboardUI_example"]; //  (optional)
NSString* optionalNameOfTheInboxDisplayedInTheDashboardForEasierSearchAndUsedAsTheSenderNameWhenSendingEmails = @"optionalNameOfTheInboxDisplayedInTheDashboardForEasierSearchAndUsedAsTheSenderNameWhenSendingEmails_example"; //  (optional)
NSString* optionalDescriptionOfTheInboxForLabellingPurposesIsShownInTheDashboardAndCanBeUsedWith = @"optionalDescriptionOfTheInboxForLabellingPurposesIsShownInTheDashboardAndCanBeUsedWith_example"; //  (optional)
NSNumber* useTheMailSlurpDomainNamePoolWithThisInboxWhenCreatingTheEmailAddressDefaultsToNullIfEnabledTheInboxWillBeAnEmailAddressWithADomainRandomlyChosenFromAListOfTheMailSlurpDomainsThisIsUsefulWhenTheDefaultMailslurpComEmailAddressesUsedWithInboxesAreBlockedOrConsideredSpamByAProviderOrReceivingServiceWhenDomainPoolIsEnabledAnEmailAddressWillBeGeneratedEndingInMailslurpWorldinfoxyzThisMeansATLDIsRandomlySelectingFromAListOfBizInfoXyzEtcToAddVarianceToTheGeneratedEmailAddressesWhenNullOrFalseMailSlurpUsesTheDefaultBehaviorOfMailslurpComOrCustomEmailAddressProvidedByTheEmailAddressFieldNoteThisFeatureIsOnlyAvailableForHTTPInboxTypes = @56; //  (optional)
NSNumber* isTheInboxAFavoriteMarkingAnInboxAsAFavoriteIsTypicallyDoneInTheDashboardForQuickAccessOrFiltering = @56; //  (optional)
NSDate* optionalInboxExpirationDateIfNullThenThisInboxIsPermanentAndTheEmailsInItWontBeDeletedIfAnExpirationDateIsProvidedOrIsRequiredByYourPlanTheInboxWillBeClosedWhenTheExpirationTimeIsReachedExpiredInboxesStillContainTheirEmailsButCanNoLongerSendOrReceiveEmailsAnExpiredInboxRecordIsCreatedWhenAnInboxAndTheEmailAddressAndInboxIDAreRecordedTheExpiresAtPropertyIsATimestampStringInISODateTimeFormatYyyyMMDdTHHmmssSSSXXX = @"2013-10-20T19:20:30+01:00"; //  (optional)
NSNumber* numberOfMillisecondsThatInboxShouldExistFor = @56; //  (optional)
NSNumber* dEPRECATEDTeamAccessIsAlwaysTrueGrantTeamAccessToThisInboxAndTheEmailsThatBelongToItForTeamMembersOfYourOrganization = @56; //  (optional)
NSString* hTTPDefaultOrSMTPInboxTypeHTTPInboxesAreDefaultAndBestSolutionForMostCasesSMTPInboxesAreMoreReliableForPublicInboundEmailConsumptionButDoNotSupportSendingEmailsWhenUsingCustomDomainsTheDomainTypeMustMatchTheInboxTypeHTTPInboxesAreProcessedByAWSSESWhileSMTPInboxesUseACustomMailServerRunningAtMxMailslurpCom = @"hTTPDefaultOrSMTPInboxTypeHTTPInboxesAreDefaultAndBestSolutionForMostCasesSMTPInboxesAreMoreReliableForPublicInboundEmailConsumptionButDoNotSupportSendingEmailsWhenUsingCustomDomainsTheDomainTypeMustMatchTheInboxTypeHTTPInboxesAreProcessedByAWSSESWhileSMTPInboxesUseACustomMailServerRunningAtMxMailslurpCom_example"; //  (optional)

OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// Create an inbox email address. An inbox has a real email address and can send and receive emails. Inboxes can be either `SMTP` or `HTTP` inboxes.
[apiInstance createInboxWithACustomEmailAddressToUseWithTheInboxDefaultsToNullWhenNullMailSlurpWillAssignARandomEmailAddressToTheInboxSuchAs123mailslurpComIfYouUseTheUseDomainPoolOptionWhenTheEmailAddressIsNullItWillGenerateAnEmailAddressWithAMoreVariedDomainEndingSuchAs123mailslurpInfoOr123mailslurpBizWhenACustomEmailAddressIsProvidedTheAddressIsSplitIntoADomainAndTheDomainIsQueriedAgainstYourUserIfYouHaveCreatedTheDomainInTheMailSlurpDashboardAndVerifiedItYouCanUseAnyEmailAddressThatEndsWithTheDomainNoteDomainTypesMustMatchTheInboxTypeSoSMTPInboxesWillOnlyWorkWithSMTPTypeDomainsAvoidSMTPInboxesIfYouNeedToSendEmailsAsTheyCanOnlyReceiveSendAnEmailToThisAddressAndTheInboxWillReceiveAndStoreItForYouToRetrieveTheEmailUseTheInboxAndEmailControllerEndpointsWithTheInboxID:aCustomEmailAddressToUseWithTheInboxDefaultsToNullWhenNullMailSlurpWillAssignARandomEmailAddressToTheInboxSuchAs123mailslurpComIfYouUseTheUseDomainPoolOptionWhenTheEmailAddressIsNullItWillGenerateAnEmailAddressWithAMoreVariedDomainEndingSuchAs123mailslurpInfoOr123mailslurpBizWhenACustomEmailAddressIsProvidedTheAddressIsSplitIntoADomainAndTheDomainIsQueriedAgainstYourUserIfYouHaveCreatedTheDomainInTheMailSlurpDashboardAndVerifiedItYouCanUseAnyEmailAddressThatEndsWithTheDomainNoteDomainTypesMustMatchTheInboxTypeSoSMTPInboxesWillOnlyWorkWithSMTPTypeDomainsAvoidSMTPInboxesIfYouNeedToSendEmailsAsTheyCanOnlyReceiveSendAnEmailToThisAddressAndTheInboxWillReceiveAndStoreItForYouToRetrieveTheEmailUseTheInboxAndEmailControllerEndpointsWithTheInboxID
              tagsThatInboxHasBeenTaggedWithTagsCanBeAddedToInboxesToGroupDifferentInboxesWithinAnAccountYouCanAlsoSearchForInboxesByTagInTheDashboardUI:tagsThatInboxHasBeenTaggedWithTagsCanBeAddedToInboxesToGroupDifferentInboxesWithinAnAccountYouCanAlsoSearchForInboxesByTagInTheDashboardUI
              optionalNameOfTheInboxDisplayedInTheDashboardForEasierSearchAndUsedAsTheSenderNameWhenSendingEmails:optionalNameOfTheInboxDisplayedInTheDashboardForEasierSearchAndUsedAsTheSenderNameWhenSendingEmails
              optionalDescriptionOfTheInboxForLabellingPurposesIsShownInTheDashboardAndCanBeUsedWith:optionalDescriptionOfTheInboxForLabellingPurposesIsShownInTheDashboardAndCanBeUsedWith
              useTheMailSlurpDomainNamePoolWithThisInboxWhenCreatingTheEmailAddressDefaultsToNullIfEnabledTheInboxWillBeAnEmailAddressWithADomainRandomlyChosenFromAListOfTheMailSlurpDomainsThisIsUsefulWhenTheDefaultMailslurpComEmailAddressesUsedWithInboxesAreBlockedOrConsideredSpamByAProviderOrReceivingServiceWhenDomainPoolIsEnabledAnEmailAddressWillBeGeneratedEndingInMailslurpWorldinfoxyzThisMeansATLDIsRandomlySelectingFromAListOfBizInfoXyzEtcToAddVarianceToTheGeneratedEmailAddressesWhenNullOrFalseMailSlurpUsesTheDefaultBehaviorOfMailslurpComOrCustomEmailAddressProvidedByTheEmailAddressFieldNoteThisFeatureIsOnlyAvailableForHTTPInboxTypes:useTheMailSlurpDomainNamePoolWithThisInboxWhenCreatingTheEmailAddressDefaultsToNullIfEnabledTheInboxWillBeAnEmailAddressWithADomainRandomlyChosenFromAListOfTheMailSlurpDomainsThisIsUsefulWhenTheDefaultMailslurpComEmailAddressesUsedWithInboxesAreBlockedOrConsideredSpamByAProviderOrReceivingServiceWhenDomainPoolIsEnabledAnEmailAddressWillBeGeneratedEndingInMailslurpWorldinfoxyzThisMeansATLDIsRandomlySelectingFromAListOfBizInfoXyzEtcToAddVarianceToTheGeneratedEmailAddressesWhenNullOrFalseMailSlurpUsesTheDefaultBehaviorOfMailslurpComOrCustomEmailAddressProvidedByTheEmailAddressFieldNoteThisFeatureIsOnlyAvailableForHTTPInboxTypes
              isTheInboxAFavoriteMarkingAnInboxAsAFavoriteIsTypicallyDoneInTheDashboardForQuickAccessOrFiltering:isTheInboxAFavoriteMarkingAnInboxAsAFavoriteIsTypicallyDoneInTheDashboardForQuickAccessOrFiltering
              optionalInboxExpirationDateIfNullThenThisInboxIsPermanentAndTheEmailsInItWontBeDeletedIfAnExpirationDateIsProvidedOrIsRequiredByYourPlanTheInboxWillBeClosedWhenTheExpirationTimeIsReachedExpiredInboxesStillContainTheirEmailsButCanNoLongerSendOrReceiveEmailsAnExpiredInboxRecordIsCreatedWhenAnInboxAndTheEmailAddressAndInboxIDAreRecordedTheExpiresAtPropertyIsATimestampStringInISODateTimeFormatYyyyMMDdTHHmmssSSSXXX:optionalInboxExpirationDateIfNullThenThisInboxIsPermanentAndTheEmailsInItWontBeDeletedIfAnExpirationDateIsProvidedOrIsRequiredByYourPlanTheInboxWillBeClosedWhenTheExpirationTimeIsReachedExpiredInboxesStillContainTheirEmailsButCanNoLongerSendOrReceiveEmailsAnExpiredInboxRecordIsCreatedWhenAnInboxAndTheEmailAddressAndInboxIDAreRecordedTheExpiresAtPropertyIsATimestampStringInISODateTimeFormatYyyyMMDdTHHmmssSSSXXX
              numberOfMillisecondsThatInboxShouldExistFor:numberOfMillisecondsThatInboxShouldExistFor
              dEPRECATEDTeamAccessIsAlwaysTrueGrantTeamAccessToThisInboxAndTheEmailsThatBelongToItForTeamMembersOfYourOrganization:dEPRECATEDTeamAccessIsAlwaysTrueGrantTeamAccessToThisInboxAndTheEmailsThatBelongToItForTeamMembersOfYourOrganization
              hTTPDefaultOrSMTPInboxTypeHTTPInboxesAreDefaultAndBestSolutionForMostCasesSMTPInboxesAreMoreReliableForPublicInboundEmailConsumptionButDoNotSupportSendingEmailsWhenUsingCustomDomainsTheDomainTypeMustMatchTheInboxTypeHTTPInboxesAreProcessedByAWSSESWhileSMTPInboxesUseACustomMailServerRunningAtMxMailslurpCom:hTTPDefaultOrSMTPInboxTypeHTTPInboxesAreDefaultAndBestSolutionForMostCasesSMTPInboxesAreMoreReliableForPublicInboundEmailConsumptionButDoNotSupportSendingEmailsWhenUsingCustomDomainsTheDomainTypeMustMatchTheInboxTypeHTTPInboxesAreProcessedByAWSSESWhileSMTPInboxesUseACustomMailServerRunningAtMxMailslurpCom
          completionHandler: ^(OAIInboxDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->createInbox: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aCustomEmailAddressToUseWithTheInboxDefaultsToNullWhenNullMailSlurpWillAssignARandomEmailAddressToTheInboxSuchAs123mailslurpComIfYouUseTheUseDomainPoolOptionWhenTheEmailAddressIsNullItWillGenerateAnEmailAddressWithAMoreVariedDomainEndingSuchAs123mailslurpInfoOr123mailslurpBizWhenACustomEmailAddressIsProvidedTheAddressIsSplitIntoADomainAndTheDomainIsQueriedAgainstYourUserIfYouHaveCreatedTheDomainInTheMailSlurpDashboardAndVerifiedItYouCanUseAnyEmailAddressThatEndsWithTheDomainNoteDomainTypesMustMatchTheInboxTypeSoSMTPInboxesWillOnlyWorkWithSMTPTypeDomainsAvoidSMTPInboxesIfYouNeedToSendEmailsAsTheyCanOnlyReceiveSendAnEmailToThisAddressAndTheInboxWillReceiveAndStoreItForYouToRetrieveTheEmailUseTheInboxAndEmailControllerEndpointsWithTheInboxID** | **NSString***|  | [optional] 
 **tagsThatInboxHasBeenTaggedWithTagsCanBeAddedToInboxesToGroupDifferentInboxesWithinAnAccountYouCanAlsoSearchForInboxesByTagInTheDashboardUI** | [**NSArray&lt;NSString*&gt;***](NSString*)|  | [optional] 
 **optionalNameOfTheInboxDisplayedInTheDashboardForEasierSearchAndUsedAsTheSenderNameWhenSendingEmails** | **NSString***|  | [optional] 
 **optionalDescriptionOfTheInboxForLabellingPurposesIsShownInTheDashboardAndCanBeUsedWith** | **NSString***|  | [optional] 
 **useTheMailSlurpDomainNamePoolWithThisInboxWhenCreatingTheEmailAddressDefaultsToNullIfEnabledTheInboxWillBeAnEmailAddressWithADomainRandomlyChosenFromAListOfTheMailSlurpDomainsThisIsUsefulWhenTheDefaultMailslurpComEmailAddressesUsedWithInboxesAreBlockedOrConsideredSpamByAProviderOrReceivingServiceWhenDomainPoolIsEnabledAnEmailAddressWillBeGeneratedEndingInMailslurpWorldinfoxyzThisMeansATLDIsRandomlySelectingFromAListOfBizInfoXyzEtcToAddVarianceToTheGeneratedEmailAddressesWhenNullOrFalseMailSlurpUsesTheDefaultBehaviorOfMailslurpComOrCustomEmailAddressProvidedByTheEmailAddressFieldNoteThisFeatureIsOnlyAvailableForHTTPInboxTypes** | **NSNumber***|  | [optional] 
 **isTheInboxAFavoriteMarkingAnInboxAsAFavoriteIsTypicallyDoneInTheDashboardForQuickAccessOrFiltering** | **NSNumber***|  | [optional] 
 **optionalInboxExpirationDateIfNullThenThisInboxIsPermanentAndTheEmailsInItWontBeDeletedIfAnExpirationDateIsProvidedOrIsRequiredByYourPlanTheInboxWillBeClosedWhenTheExpirationTimeIsReachedExpiredInboxesStillContainTheirEmailsButCanNoLongerSendOrReceiveEmailsAnExpiredInboxRecordIsCreatedWhenAnInboxAndTheEmailAddressAndInboxIDAreRecordedTheExpiresAtPropertyIsATimestampStringInISODateTimeFormatYyyyMMDdTHHmmssSSSXXX** | **NSDate***|  | [optional] 
 **numberOfMillisecondsThatInboxShouldExistFor** | **NSNumber***|  | [optional] 
 **dEPRECATEDTeamAccessIsAlwaysTrueGrantTeamAccessToThisInboxAndTheEmailsThatBelongToItForTeamMembersOfYourOrganization** | **NSNumber***|  | [optional] 
 **hTTPDefaultOrSMTPInboxTypeHTTPInboxesAreDefaultAndBestSolutionForMostCasesSMTPInboxesAreMoreReliableForPublicInboundEmailConsumptionButDoNotSupportSendingEmailsWhenUsingCustomDomainsTheDomainTypeMustMatchTheInboxTypeHTTPInboxesAreProcessedByAWSSESWhileSMTPInboxesUseACustomMailServerRunningAtMxMailslurpCom** | **NSString***|  | [optional] 

### Return type

[**OAIInboxDto***](OAIInboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createInboxRuleset**
```objc
-(NSURLSessionTask*) createInboxRulesetWithInboxId: (NSString*) inboxId
    createInboxRulesetOptions: (OAICreateInboxRulesetOptions*) createInboxRulesetOptions
        completionHandler: (void (^)(OAIInboxRulesetDto* output, NSError* error)) handler;
```

Create an inbox ruleset

Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // 
OAICreateInboxRulesetOptions* createInboxRulesetOptions = [[OAICreateInboxRulesetOptions alloc] init]; // 

OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// Create an inbox ruleset
[apiInstance createInboxRulesetWithInboxId:inboxId
              createInboxRulesetOptions:createInboxRulesetOptions
          completionHandler: ^(OAIInboxRulesetDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->createInboxRuleset: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()|  | 
 **createInboxRulesetOptions** | [**OAICreateInboxRulesetOptions***](OAICreateInboxRulesetOptions)|  | 

### Return type

[**OAIInboxRulesetDto***](OAIInboxRulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createInboxWithDefaults**
```objc
-(NSURLSessionTask*) createInboxWithDefaultsWithCompletionHandler: 
        (void (^)(OAIInboxDto* output, NSError* error)) handler;
```

Create an inbox with default options. Uses MailSlurp domain pool address and is private.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// Create an inbox with default options. Uses MailSlurp domain pool address and is private.
[apiInstance createInboxWithDefaultsWithCompletionHandler: 
          ^(OAIInboxDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->createInboxWithDefaults: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIInboxDto***](OAIInboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createInboxWithOptions**
```objc
-(NSURLSessionTask*) createInboxWithOptionsWithCreateInboxDto: (OAICreateInboxDto*) createInboxDto
        completionHandler: (void (^)(OAIInboxDto* output, NSError* error)) handler;
```

Create an inbox with options. Extended options for inbox creation.

Additional endpoint that allows inbox creation with request body options. Can be more flexible that other methods for some clients.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


OAICreateInboxDto* createInboxDto = [[OAICreateInboxDto alloc] init]; // 

OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// Create an inbox with options. Extended options for inbox creation.
[apiInstance createInboxWithOptionsWithCreateInboxDto:createInboxDto
          completionHandler: ^(OAIInboxDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->createInboxWithOptions: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createInboxDto** | [**OAICreateInboxDto***](OAICreateInboxDto)|  | 

### Return type

[**OAIInboxDto***](OAIInboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteAllInboxes**
```objc
-(NSURLSessionTask*) deleteAllInboxesWithCompletionHandler: 
        (void (^)(NSError* error)) handler;
```

Delete all inboxes

Permanently delete all inboxes and associated email addresses. This will also delete all emails within the inboxes. Be careful as inboxes cannot be recovered once deleted. Note: deleting inboxes will not impact your usage limits. Monthly inbox creation limits are based on how many inboxes were created in the last 30 days, not how many inboxes you currently have.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// Delete all inboxes
[apiInstance deleteAllInboxesWithCompletionHandler: 
          ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->deleteAllInboxes: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteInbox**
```objc
-(NSURLSessionTask*) deleteInboxWithInboxId: (NSString*) inboxId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete inbox

Permanently delete an inbox and associated email address as well as all emails within the given inbox. This action cannot be undone. Note: deleting an inbox will not affect your account usage. Monthly inbox usage is based on how many inboxes you create within 30 days, not how many exist at time of request.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // 

OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// Delete inbox
[apiInstance deleteInboxWithInboxId:inboxId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->deleteInbox: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **doesInboxExist**
```objc
-(NSURLSessionTask*) doesInboxExistWithEmailAddress: (NSString*) emailAddress
        completionHandler: (void (^)(OAIInboxExistsDto* output, NSError* error)) handler;
```

Does inbox exist

Check if inboxes exist by email address. Useful if you are sending emails to mailslurp addresses

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* emailAddress = @"emailAddress_example"; // Email address

OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// Does inbox exist
[apiInstance doesInboxExistWithEmailAddress:emailAddress
          completionHandler: ^(OAIInboxExistsDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->doesInboxExist: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailAddress** | **NSString***| Email address | 

### Return type

[**OAIInboxExistsDto***](OAIInboxExistsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **flushExpired**
```objc
-(NSURLSessionTask*) flushExpiredWithBefore: (NSDate*) before
        completionHandler: (void (^)(OAIFlushExpiredInboxesResult* output, NSError* error)) handler;
```

Remove expired inboxes

Remove any expired inboxes for your account (instead of waiting for scheduled removal on server)

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSDate* before = @"2013-10-20T19:20:30+01:00"; // Optional expired at before flag to flush expired inboxes that have expired before the given time (optional)

OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// Remove expired inboxes
[apiInstance flushExpiredWithBefore:before
          completionHandler: ^(OAIFlushExpiredInboxesResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->flushExpired: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **NSDate***| Optional expired at before flag to flush expired inboxes that have expired before the given time | [optional] 

### Return type

[**OAIFlushExpiredInboxesResult***](OAIFlushExpiredInboxesResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllInboxes**
```objc
-(NSURLSessionTask*) getAllInboxesWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    favourite: (NSNumber*) favourite
    search: (NSString*) search
    tag: (NSString*) tag
    dEPRECATEDOptionallyFilterByTeamAccess: (NSNumber*) dEPRECATEDOptionallyFilterByTeamAccess
    since: (NSDate*) since
    before: (NSDate*) before
        completionHandler: (void (^)(OAIPageInboxProjection* output, NSError* error)) handler;
```

List All Inboxes Paginated

List inboxes in paginated form. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). You Can also filter by whether an inbox is favorited or use email address pattern. This method is the recommended way to query inboxes. The alternative `getInboxes` method returns a full list of inboxes but is limited to 100 results.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* page = @0; // Optional page index in list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSNumber* favourite = @(NO); // Optionally filter results for favourites only (optional) (default to @(NO))
NSString* search = @"search_example"; // Optionally filter by search words partial matching ID, tags, name, and email address (optional)
NSString* tag = @"tag_example"; // Optionally filter by tags. Will return inboxes that include given tags (optional)
NSNumber* dEPRECATEDOptionallyFilterByTeamAccess = @56; //  (optional)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Optional filter by created after given date time (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Optional filter by created before given date time (optional)

OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// List All Inboxes Paginated
[apiInstance getAllInboxesWithPage:page
              size:size
              sort:sort
              favourite:favourite
              search:search
              tag:tag
              dEPRECATEDOptionallyFilterByTeamAccess:dEPRECATEDOptionallyFilterByTeamAccess
              since:since
              before:before
          completionHandler: ^(OAIPageInboxProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->getAllInboxes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| Optional page index in list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **favourite** | **NSNumber***| Optionally filter results for favourites only | [optional] [default to @(NO)]
 **search** | **NSString***| Optionally filter by search words partial matching ID, tags, name, and email address | [optional] 
 **tag** | **NSString***| Optionally filter by tags. Will return inboxes that include given tags | [optional] 
 **dEPRECATEDOptionallyFilterByTeamAccess** | **NSNumber***|  | [optional] 
 **since** | **NSDate***| Optional filter by created after given date time | [optional] 
 **before** | **NSDate***| Optional filter by created before given date time | [optional] 

### Return type

[**OAIPageInboxProjection***](OAIPageInboxProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmails**
```objc
-(NSURLSessionTask*) getEmailsWithIdOfInboxThatEmailsBelongsTo: (NSString*) idOfInboxThatEmailsBelongsTo
    aliasForLimitAssessedFirstBeforeAssessingAnyPassedLimit: (NSNumber*) aliasForLimitAssessedFirstBeforeAssessingAnyPassedLimit
    limit: (NSNumber*) limit
    sortTheResultsByReceivedDateAndDirectionASCOrDESC: (NSString*) sortTheResultsByReceivedDateAndDirectionASCOrDESC
    retryTimeout: (NSNumber*) retryTimeout
    delayTimeout: (NSNumber*) delayTimeout
    minCount: (NSNumber*) minCount
    unreadOnly: (NSNumber*) unreadOnly
    excludeEmailsReceivedAfterThisISO8601DateTime: (NSDate*) excludeEmailsReceivedAfterThisISO8601DateTime
    excludeEmailsReceivedBeforeThisISO8601DateTime: (NSDate*) excludeEmailsReceivedBeforeThisISO8601DateTime
        completionHandler: (void (^)(NSArray<OAIEmailPreview>* output, NSError* error)) handler;
```

Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.

List emails that an inbox has received. Only emails that are sent to the inbox's email address will appear in the inbox. It may take several seconds for any email you send to an inbox's email address to appear in the inbox. To make this endpoint wait for a minimum number of emails use the `minCount` parameter. The server will retry the inbox database until the `minCount` is satisfied or the `retryTimeout` is reached

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* idOfInboxThatEmailsBelongsTo = @"idOfInboxThatEmailsBelongsTo_example"; // 
NSNumber* aliasForLimitAssessedFirstBeforeAssessingAnyPassedLimit = @56; //  (optional)
NSNumber* limit = @56; // Limit the result set, ordered by received date time sort direction. Maximum 100. For more listing options see the email controller (optional)
NSString* sortTheResultsByReceivedDateAndDirectionASCOrDESC = @"sortTheResultsByReceivedDateAndDirectionASCOrDESC_example"; //  (optional)
NSNumber* retryTimeout = @56; // Maximum milliseconds to spend retrying inbox database until minCount emails are returned (optional)
NSNumber* delayTimeout = @56; //  (optional)
NSNumber* minCount = @56; // Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached. (optional)
NSNumber* unreadOnly = @56; //  (optional)
NSDate* excludeEmailsReceivedAfterThisISO8601DateTime = @"2013-10-20T19:20:30+01:00"; //  (optional)
NSDate* excludeEmailsReceivedBeforeThisISO8601DateTime = @"2013-10-20T19:20:30+01:00"; //  (optional)

OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.
[apiInstance getEmailsWithIdOfInboxThatEmailsBelongsTo:idOfInboxThatEmailsBelongsTo
              aliasForLimitAssessedFirstBeforeAssessingAnyPassedLimit:aliasForLimitAssessedFirstBeforeAssessingAnyPassedLimit
              limit:limit
              sortTheResultsByReceivedDateAndDirectionASCOrDESC:sortTheResultsByReceivedDateAndDirectionASCOrDESC
              retryTimeout:retryTimeout
              delayTimeout:delayTimeout
              minCount:minCount
              unreadOnly:unreadOnly
              excludeEmailsReceivedAfterThisISO8601DateTime:excludeEmailsReceivedAfterThisISO8601DateTime
              excludeEmailsReceivedBeforeThisISO8601DateTime:excludeEmailsReceivedBeforeThisISO8601DateTime
          completionHandler: ^(NSArray<OAIEmailPreview>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->getEmails: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idOfInboxThatEmailsBelongsTo** | [**NSString***]()|  | 
 **aliasForLimitAssessedFirstBeforeAssessingAnyPassedLimit** | **NSNumber***|  | [optional] 
 **limit** | **NSNumber***| Limit the result set, ordered by received date time sort direction. Maximum 100. For more listing options see the email controller | [optional] 
 **sortTheResultsByReceivedDateAndDirectionASCOrDESC** | **NSString***|  | [optional] 
 **retryTimeout** | **NSNumber***| Maximum milliseconds to spend retrying inbox database until minCount emails are returned | [optional] 
 **delayTimeout** | **NSNumber***|  | [optional] 
 **minCount** | **NSNumber***| Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached. | [optional] 
 **unreadOnly** | **NSNumber***|  | [optional] 
 **excludeEmailsReceivedAfterThisISO8601DateTime** | **NSDate***|  | [optional] 
 **excludeEmailsReceivedBeforeThisISO8601DateTime** | **NSDate***|  | [optional] 

### Return type

[**NSArray<OAIEmailPreview>***](OAIEmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInbox**
```objc
-(NSURLSessionTask*) getInboxWithInboxId: (NSString*) inboxId
        completionHandler: (void (^)(OAIInboxDto* output, NSError* error)) handler;
```

Get Inbox. Returns properties of an inbox.

Returns an inbox's properties, including its email address and ID.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // 

OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// Get Inbox. Returns properties of an inbox.
[apiInstance getInboxWithInboxId:inboxId
          completionHandler: ^(OAIInboxDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->getInbox: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()|  | 

### Return type

[**OAIInboxDto***](OAIInboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxCount**
```objc
-(NSURLSessionTask*) getInboxCountWithCompletionHandler: 
        (void (^)(OAICountDto* output, NSError* error)) handler;
```

Get total inbox count

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// Get total inbox count
[apiInstance getInboxCountWithCompletionHandler: 
          ^(OAICountDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->getInboxCount: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAICountDto***](OAICountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxEmailCount**
```objc
-(NSURLSessionTask*) getInboxEmailCountWithIdOfInboxThatEmailsBelongsTo: (NSString*) idOfInboxThatEmailsBelongsTo
        completionHandler: (void (^)(OAICountDto* output, NSError* error)) handler;
```

Get email count in inbox

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* idOfInboxThatEmailsBelongsTo = @"idOfInboxThatEmailsBelongsTo_example"; // 

OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// Get email count in inbox
[apiInstance getInboxEmailCountWithIdOfInboxThatEmailsBelongsTo:idOfInboxThatEmailsBelongsTo
          completionHandler: ^(OAICountDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->getInboxEmailCount: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idOfInboxThatEmailsBelongsTo** | [**NSString***]()|  | 

### Return type

[**OAICountDto***](OAICountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxEmailsPaginated**
```objc
-(NSURLSessionTask*) getInboxEmailsPaginatedWithIdOfInboxThatEmailsBelongsTo: (NSString*) idOfInboxThatEmailsBelongsTo
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
        completionHandler: (void (^)(OAIPageEmailPreview* output, NSError* error)) handler;
```

Get inbox emails paginated

Get a paginated list of emails in an inbox. Does not hold connections open.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* idOfInboxThatEmailsBelongsTo = @"idOfInboxThatEmailsBelongsTo_example"; // 
NSNumber* page = @0; // Optional page index in inbox emails list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in inbox emails list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Optional filter by received after given date time (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Optional filter by received before given date time (optional)

OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// Get inbox emails paginated
[apiInstance getInboxEmailsPaginatedWithIdOfInboxThatEmailsBelongsTo:idOfInboxThatEmailsBelongsTo
              page:page
              size:size
              sort:sort
              since:since
              before:before
          completionHandler: ^(OAIPageEmailPreview* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->getInboxEmailsPaginated: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idOfInboxThatEmailsBelongsTo** | [**NSString***]()|  | 
 **page** | **NSNumber***| Optional page index in inbox emails list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in inbox emails list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **since** | **NSDate***| Optional filter by received after given date time | [optional] 
 **before** | **NSDate***| Optional filter by received before given date time | [optional] 

### Return type

[**OAIPageEmailPreview***](OAIPageEmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxSentEmails**
```objc
-(NSURLSessionTask*) getInboxSentEmailsWithInboxId: (NSString*) inboxId
    page: (NSNumber*) page
    optionalPageSizeInInboxSentEmailListPagination: (NSNumber*) optionalPageSizeInInboxSentEmailListPagination
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
        completionHandler: (void (^)(OAIPageSentEmailProjection* output, NSError* error)) handler;
```

Get Inbox Sent Emails

Returns an inbox's sent email receipts. Call individual sent email endpoints for more details. Note for privacy reasons the full body of sent emails is never stored. An MD5 hash hex is available for comparison instead.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // 
NSNumber* page = @0; // Optional page index in inbox sent email list pagination (optional) (default to @0)
NSNumber* optionalPageSizeInInboxSentEmailListPagination = @20; //  (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSString* searchFilter = @"searchFilter_example"; // Optional sent email search (optional)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Optional filter by sent after given date time (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Optional filter by sent before given date time (optional)

OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// Get Inbox Sent Emails
[apiInstance getInboxSentEmailsWithInboxId:inboxId
              page:page
              optionalPageSizeInInboxSentEmailListPagination:optionalPageSizeInInboxSentEmailListPagination
              sort:sort
              searchFilter:searchFilter
              since:since
              before:before
          completionHandler: ^(OAIPageSentEmailProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->getInboxSentEmails: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()|  | 
 **page** | **NSNumber***| Optional page index in inbox sent email list pagination | [optional] [default to @0]
 **optionalPageSizeInInboxSentEmailListPagination** | **NSNumber***|  | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **searchFilter** | **NSString***| Optional sent email search | [optional] 
 **since** | **NSDate***| Optional filter by sent after given date time | [optional] 
 **before** | **NSDate***| Optional filter by sent before given date time | [optional] 

### Return type

[**OAIPageSentEmailProjection***](OAIPageSentEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxTags**
```objc
-(NSURLSessionTask*) getInboxTagsWithCompletionHandler: 
        (void (^)(NSArray<NSString*>* output, NSError* error)) handler;
```

Get inbox tags

Get all inbox tags

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];



OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// Get inbox tags
[apiInstance getInboxTagsWithCompletionHandler: 
          ^(NSArray<NSString*>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->getInboxTags: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

**NSArray<NSString*>***

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxes**
```objc
-(NSURLSessionTask*) getInboxesWithSize: (NSNumber*) size
    sort: (NSString*) sort
    since: (NSDate*) since
    before: (NSDate*) before
        completionHandler: (void (^)(NSArray<OAIInboxDto>* output, NSError* error)) handler;
```

List Inboxes and email addresses

List the inboxes you have created. Note use of the more advanced `getAllEmails` is recommended and allows paginated access using a limit and sort parameter.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* size = @100; // Optional result size limit. Note an automatic limit of 100 results is applied. See the paginated `getAllEmails` for larger queries. (optional) (default to @100)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Optional filter by created after given date time (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Optional filter by created before given date time (optional)

OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// List Inboxes and email addresses
[apiInstance getInboxesWithSize:size
              sort:sort
              since:since
              before:before
          completionHandler: ^(NSArray<OAIInboxDto>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->getInboxes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **NSNumber***| Optional result size limit. Note an automatic limit of 100 results is applied. See the paginated &#x60;getAllEmails&#x60; for larger queries. | [optional] [default to @100]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **since** | **NSDate***| Optional filter by created after given date time | [optional] 
 **before** | **NSDate***| Optional filter by created before given date time | [optional] 

### Return type

[**NSArray<OAIInboxDto>***](OAIInboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getOrganizationInboxes**
```objc
-(NSURLSessionTask*) getOrganizationInboxesWithPage: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
        completionHandler: (void (^)(OAIPageOrganizationInboxProjection* output, NSError* error)) handler;
```

List Organization Inboxes Paginated

List organization inboxes in paginated form. These are inboxes created with `allowTeamAccess` flag enabled. Organization inboxes are `readOnly` for non-admin users. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). 

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* page = @0; // Optional page index in list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSString* searchFilter = @"searchFilter_example"; // Optional search filter (optional)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Optional filter by created after given date time (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Optional filter by created before given date time (optional)

OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// List Organization Inboxes Paginated
[apiInstance getOrganizationInboxesWithPage:page
              size:size
              sort:sort
              searchFilter:searchFilter
              since:since
              before:before
          completionHandler: ^(OAIPageOrganizationInboxProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->getOrganizationInboxes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| Optional page index in list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **searchFilter** | **NSString***| Optional search filter | [optional] 
 **since** | **NSDate***| Optional filter by created after given date time | [optional] 
 **before** | **NSDate***| Optional filter by created before given date time | [optional] 

### Return type

[**OAIPageOrganizationInboxProjection***](OAIPageOrganizationInboxProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **listInboxRulesets**
```objc
-(NSURLSessionTask*) listInboxRulesetsWithInboxId: (NSString*) inboxId
    page: (NSNumber*) page
    size: (NSNumber*) size
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
        completionHandler: (void (^)(OAIPageInboxRulesetDto* output, NSError* error)) handler;
```

List inbox rulesets

List all rulesets attached to an inbox

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // 
NSNumber* page = @0; // Optional page index in inbox ruleset list pagination (optional) (default to @0)
NSNumber* size = @20; // Optional page size in inbox ruleset list pagination (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSString* searchFilter = @"searchFilter_example"; // Optional search filter (optional)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Optional filter by created after given date time (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Optional filter by created before given date time (optional)

OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// List inbox rulesets
[apiInstance listInboxRulesetsWithInboxId:inboxId
              page:page
              size:size
              sort:sort
              searchFilter:searchFilter
              since:since
              before:before
          completionHandler: ^(OAIPageInboxRulesetDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->listInboxRulesets: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()|  | 
 **page** | **NSNumber***| Optional page index in inbox ruleset list pagination | [optional] [default to @0]
 **size** | **NSNumber***| Optional page size in inbox ruleset list pagination | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **searchFilter** | **NSString***| Optional search filter | [optional] 
 **since** | **NSDate***| Optional filter by created after given date time | [optional] 
 **before** | **NSDate***| Optional filter by created before given date time | [optional] 

### Return type

[**OAIPageInboxRulesetDto***](OAIPageInboxRulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **listInboxTrackingPixels**
```objc
-(NSURLSessionTask*) listInboxTrackingPixelsWithInboxId: (NSString*) inboxId
    page: (NSNumber*) page
    optionalPageSizeInInboxTrackingPixelListPagination: (NSNumber*) optionalPageSizeInInboxTrackingPixelListPagination
    sort: (NSString*) sort
    searchFilter: (NSString*) searchFilter
    since: (NSDate*) since
    before: (NSDate*) before
        completionHandler: (void (^)(OAIPageTrackingPixelProjection* output, NSError* error)) handler;
```

List inbox tracking pixels

List all tracking pixels sent from an inbox

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // 
NSNumber* page = @0; // Optional page index in inbox tracking pixel list pagination (optional) (default to @0)
NSNumber* optionalPageSizeInInboxTrackingPixelListPagination = @20; //  (optional) (default to @20)
NSString* sort = @"ASC"; // Optional createdAt sort direction ASC or DESC (optional) (default to @"ASC")
NSString* searchFilter = @"searchFilter_example"; // Optional search filter (optional)
NSDate* since = @"2013-10-20T19:20:30+01:00"; // Optional filter by created after given date time (optional)
NSDate* before = @"2013-10-20T19:20:30+01:00"; // Optional filter by created before given date time (optional)

OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// List inbox tracking pixels
[apiInstance listInboxTrackingPixelsWithInboxId:inboxId
              page:page
              optionalPageSizeInInboxTrackingPixelListPagination:optionalPageSizeInInboxTrackingPixelListPagination
              sort:sort
              searchFilter:searchFilter
              since:since
              before:before
          completionHandler: ^(OAIPageTrackingPixelProjection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->listInboxTrackingPixels: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()|  | 
 **page** | **NSNumber***| Optional page index in inbox tracking pixel list pagination | [optional] [default to @0]
 **optionalPageSizeInInboxTrackingPixelListPagination** | **NSNumber***|  | [optional] [default to @20]
 **sort** | **NSString***| Optional createdAt sort direction ASC or DESC | [optional] [default to @&quot;ASC&quot;]
 **searchFilter** | **NSString***| Optional search filter | [optional] 
 **since** | **NSDate***| Optional filter by created after given date time | [optional] 
 **before** | **NSDate***| Optional filter by created before given date time | [optional] 

### Return type

[**OAIPageTrackingPixelProjection***](OAIPageTrackingPixelProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendEmail**
```objc
-(NSURLSessionTask*) sendEmailWithIDOfTheInboxYouWantToSendTheEmailFrom: (NSString*) iDOfTheInboxYouWantToSendTheEmailFrom
    sendEmailOptions: (OAISendEmailOptions*) sendEmailOptions
        completionHandler: (void (^)(NSError* error)) handler;
```

Send Email

Send an email from an inbox's email address.  The request body should contain the `SendEmailOptions` that include recipients, attachments, body etc. See `SendEmailOptions` for all available properties. Note the `inboxId` refers to the inbox's id not the inbox's email address. See https://www.mailslurp.com/guides/ for more information on how to send emails. This method does not return a sent email entity due to legacy reasons. To send and get a sent email as returned response use the sister method `sendEmailAndConfirm`.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* iDOfTheInboxYouWantToSendTheEmailFrom = @"iDOfTheInboxYouWantToSendTheEmailFrom_example"; // 
OAISendEmailOptions* sendEmailOptions = [[OAISendEmailOptions alloc] init]; // 

OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// Send Email
[apiInstance sendEmailWithIDOfTheInboxYouWantToSendTheEmailFrom:iDOfTheInboxYouWantToSendTheEmailFrom
              sendEmailOptions:sendEmailOptions
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->sendEmail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **iDOfTheInboxYouWantToSendTheEmailFrom** | [**NSString***]()|  | 
 **sendEmailOptions** | [**OAISendEmailOptions***](OAISendEmailOptions)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendEmailAndConfirm**
```objc
-(NSURLSessionTask*) sendEmailAndConfirmWithIDOfTheInboxYouWantToSendTheEmailFrom: (NSString*) iDOfTheInboxYouWantToSendTheEmailFrom
    sendEmailOptions: (OAISendEmailOptions*) sendEmailOptions
        completionHandler: (void (^)(OAISentEmailDto* output, NSError* error)) handler;
```

Send email and return sent confirmation

Sister method for standard `sendEmail` method with the benefit of returning a `SentEmail` entity confirming the successful sending of the email with a link to the sent object created for it.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* iDOfTheInboxYouWantToSendTheEmailFrom = @"iDOfTheInboxYouWantToSendTheEmailFrom_example"; // 
OAISendEmailOptions* sendEmailOptions = [[OAISendEmailOptions alloc] init]; // 

OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// Send email and return sent confirmation
[apiInstance sendEmailAndConfirmWithIDOfTheInboxYouWantToSendTheEmailFrom:iDOfTheInboxYouWantToSendTheEmailFrom
              sendEmailOptions:sendEmailOptions
          completionHandler: ^(OAISentEmailDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->sendEmailAndConfirm: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **iDOfTheInboxYouWantToSendTheEmailFrom** | [**NSString***]()|  | 
 **sendEmailOptions** | [**OAISendEmailOptions***](OAISendEmailOptions)|  | 

### Return type

[**OAISentEmailDto***](OAISentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendTestEmail**
```objc
-(NSURLSessionTask*) sendTestEmailWithInboxId: (NSString*) inboxId
        completionHandler: (void (^)(NSError* error)) handler;
```

Send a test email to inbox

Send an inbox a test email to test email receiving is working

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // 

OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// Send a test email to inbox
[apiInstance sendTestEmailWithInboxId:inboxId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->sendTestEmail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **setInboxFavourited**
```objc
-(NSURLSessionTask*) setInboxFavouritedWithInboxId: (NSString*) inboxId
    setInboxFavouritedOptions: (OAISetInboxFavouritedOptions*) setInboxFavouritedOptions
        completionHandler: (void (^)(OAIInboxDto* output, NSError* error)) handler;
```

Set inbox favourited state

Set and return new favourite state for an inbox

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // 
OAISetInboxFavouritedOptions* setInboxFavouritedOptions = [[OAISetInboxFavouritedOptions alloc] init]; // 

OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// Set inbox favourited state
[apiInstance setInboxFavouritedWithInboxId:inboxId
              setInboxFavouritedOptions:setInboxFavouritedOptions
          completionHandler: ^(OAIInboxDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->setInboxFavourited: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()|  | 
 **setInboxFavouritedOptions** | [**OAISetInboxFavouritedOptions***](OAISetInboxFavouritedOptions)|  | 

### Return type

[**OAIInboxDto***](OAIInboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateInbox**
```objc
-(NSURLSessionTask*) updateInboxWithInboxId: (NSString*) inboxId
    updateInboxOptions: (OAIUpdateInboxOptions*) updateInboxOptions
        completionHandler: (void (^)(OAIInboxDto* output, NSError* error)) handler;
```

Update Inbox. Change name and description. Email address is not editable.

Update editable fields on an inbox

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: API_KEY)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* inboxId = @"inboxId_example"; // 
OAIUpdateInboxOptions* updateInboxOptions = [[OAIUpdateInboxOptions alloc] init]; // 

OAIInboxControllerApi*apiInstance = [[OAIInboxControllerApi alloc] init];

// Update Inbox. Change name and description. Email address is not editable.
[apiInstance updateInboxWithInboxId:inboxId
              updateInboxOptions:updateInboxOptions
          completionHandler: ^(OAIInboxDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInboxControllerApi->updateInbox: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**NSString***]()|  | 
 **updateInboxOptions** | [**OAIUpdateInboxOptions***](OAIUpdateInboxOptions)|  | 

### Return type

[**OAIInboxDto***](OAIInboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

