#import <Foundation/Foundation.h>
#import "YPAssessment.h"
#import "YPAssessmentResultAnswer.h"
#import "YPAssessmentResult.h"


@interface YPAssessmentsApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(YPAssessmentsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 stores an update for the assessment with id assessmentId, AccessLevel: al_productadmin
 updates an existing assessment
 @param _id ID of the assessment
 @param body The assessment to store, or only some keys of it
 */
-(NSNumber*) putAssessmentWithCompletionBlock:(NSString*) _id 
        body:(YPAssessmentResult*) body 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 stores a new result for the assessment with id assessmentId, AccessLevel: al_individual
 stores a new result
 @param assessmentId ID of the assessment for which to store a result
 @param body The assessment result to store
 */
-(NSNumber*) postAssessmentResultWithCompletionBlock:(NSString*) assessmentId 
        body:(YPAssessmentResult*) body 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 Put an answer of an assessment result, AccessLevel: al_individual
 Put an answer of an assessment result
 @param assessmentId ID of the assessment for which to save and result answer
 @param body The assessment answer to store
 */
-(NSNumber*) assessmentResultAnswerPutWithCompletionBlock:(NSString*) assessmentId 
        body:(YPAssessmentResultAnswer*) body 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 returns a the newest assessmentResult for the current user and the assessment with id assessmentId, AccessLevel: al_individual
 always returns zero or one result, the newest result is the one with the newest created timestamp
 @param assessmentId ID of the assessment for which to store a result
 @param populate populates specified reference properties of the retrieved ressource with the full object, e.g. comments.author is of type ObjectId ref User, if you want the full user object instead of the ObjectIdadd this queryParam: &quot;populate=&quot;author&quot;. Supports multiple space separated values, also allows to populateembedded subobject properties by using .-notation. Limitation: Only allows to populate over one DB-Collection, meaningyou can populate the comments.author, but you cannot populate ActivityEvent.Comment.Author, use &quot;populatedeep&quot; if you need this. 
Use with caution, it may impact performance! 
 @param populatedeep populates specified reference deep properties of the retrieved ressource with the full object,use this if you need to go over more than 1 collection, see documentation of &quot;populate&quot; 
Use with caution, it may impact performance! 
 */
-(NSNumber*) getNewestAssessmentResultWithCompletionBlock:(NSString*) assessmentId 
        populate:(NSString*) populate 
        populatedeep:(NSString*) populatedeep 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 returns all assessmentResult for the current user and the assessment with id assessmentId, AccessLevel: al_individual
 returns an array of assessmentResults
 @param assessmentId ID of the assessment for which to store a result
 @param populate populates specified reference properties of the retrieved ressource with the full object, e.g. comments.author is of type ObjectId ref User, if you want the full user object instead of the ObjectIdadd this queryParam: &quot;populate=&quot;author&quot;. Supports multiple space separated values, also allows to populateembedded subobject properties by using .-notation. Limitation: Only allows to populate over one DB-Collection, meaningyou can populate the comments.author, but you cannot populate ActivityEvent.Comment.Author, use &quot;populatedeep&quot; if you need this. 
Use with caution, it may impact performance! 
 @param populatedeep populates specified reference deep properties of the retrieved ressource with the full object,use this if you need to go over more than 1 collection, see documentation of &quot;populate&quot; 
Use with caution, it may impact performance! 
 */
-(NSNumber*) getAssessmentResultsWithCompletionBlock:(NSString*) assessmentId 
        populate:(NSString*) populate 
        populatedeep:(NSString*) populatedeep 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 deletes all assessmentResults for the current user and the assessment with id assessmentId, AccessLevel: al_user
 can only delete the results for one specific assessement
 @param assessmentId ID of the assessment for which to store a result
 */
-(NSNumber*) deleteAssessmentResultsWithCompletionBlock:(NSString*) assessmentId 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 deletes one specifv assessmentResult for the current user and the assessment with id assessmentId, AccessLevel: al_user
 can only delete the results for one specific assessement
 @param assessmentId ID of the assessment for which to store a result
 @param _id ID of the result to delete
 */
-(NSNumber*) deleteAssessmentResultWithCompletionBlock:(NSString*) assessmentId 
        _id:(NSString*) _id 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 returns all assessments in the system, AccessLevel: al_all
 returns an array of all assessments
 @param sort sorts the results by the specified properties, add &quot;:-1&quot; to reverse sort: e.g. sort=&quot;created:-1&quot;
 @param limit limit the amount of returned objects, default is 100, max is 1000
 @param filter filters the results by adding a where clause, to see  the supported language and format see 
 @param populate populates specified reference properties of the retrieved ressource with the full object, e.g. comments.author is of type ObjectId ref User, if you want the full user object instead of the ObjectIdadd this queryParam: &quot;populate=&quot;author&quot;. Supports multiple space separated values, also allows to populateembedded subobject properties by using .-notation. Limitation: Only allows to populate over one DB-Collection, meaningyou can populate the comments.author, but you cannot populate ActivityEvent.Comment.Author, use &quot;populatedeep&quot; if you need this. 
Use with caution, it may impact performance! 
 @param populatedeep populates specified reference deep properties of the retrieved ressource with the full object,use this if you need to go over more than 1 collection, see documentation of &quot;populate&quot; 
Use with caution, it may impact performance! 
 */
-(NSNumber*) getAssessmentsWithCompletionBlock:(NSString*) sort 
        limit:(NSNumber*) limit 
        filter:(NSString*) filter 
        populate:(NSString*) populate 
        populatedeep:(NSString*) populatedeep 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 returns one specific assessment by id, AccessLevel: al_all
 returns the assessment by id, pass the Object Id as String 
 @param _id ID of the assessment to fetch
 @param populate populates specified reference properties of the retrieved ressource with the full object, e.g. comments.author is of type ObjectId ref User, if you want the full user object instead of the ObjectIdadd this queryParam: &quot;populate=&quot;author&quot;. Supports multiple space separated values, also allows to populateembedded subobject properties by using .-notation. Limitation: Only allows to populate over one DB-Collection, meaningyou can populate the comments.author, but you cannot populate ActivityEvent.Comment.Author, use &quot;populatedeep&quot; if you need this. 
Use with caution, it may impact performance! 
 @param populatedeep populates specified reference deep properties of the retrieved ressource with the full object,use this if you need to go over more than 1 collection, see documentation of &quot;populate&quot; 
Use with caution, it may impact performance! 
 */
-(NSNumber*) getAssessmentWithCompletionBlock:(NSString*) _id 
        populate:(NSString*) populate 
        populatedeep:(NSString*) populatedeep 
        completionHandler: (void (^)(YPAssessment* output, NSError* error))completionBlock;

/**

 deletes all assessments in the system, AccessLevel: al_admin
 Admin only! do not use if you don't know exactly what this does!
 */
-(NSNumber*) deleteAssessmentsWithCompletionBlock:(void (^)(NSError* error))completionBlock;

@end
