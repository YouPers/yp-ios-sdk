#import <Foundation/Foundation.h>
#import "YPDiaryEntry.h"


@interface YPDiaryentriesApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(YPDiaryentriesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 find diaryentry by id, AccessLevel: al_individual
 returns a diaryentry based on id
 @param _id ID of the diaryentry to be fetched
 @param populate populates specified reference properties of the retrieved ressource with the full object, e.g. comments.author is of type ObjectId ref User, if you want the full user object instead of the ObjectIdadd this queryParam: &quot;populate=&quot;author&quot;. Supports multiple space separated values, also allows to populateembedded subobject properties by using .-notation. Limitation: Only allows to populate over one DB-Collection, meaningyou can populate the comments.author, but you cannot populate ActivityEvent.Comment.Author, use &quot;populatedeep&quot; if you need this. 
Use with caution, it may impact performance! 
 */
-(NSNumber*) getDiaryEntryByIdWithCompletionBlock:(NSString*) _id 
        populate:(NSString*) populate 
        completionHandler: (void (^)(YPDiaryEntry* output, NSError* error))completionBlock;

/**

 get all diaryentries, AccessLevel: al_individual
 returns all diaryentries, but limits to 100 entries by default, is not owner-constrained, e.g. it returns diaryentriesfrom several users. Use query params sort:'created:-1' and limit to retrieve the newest diaryentries
 @param sort sorts the results by the specified properties, add &quot;:-1&quot; to reverse sort: e.g. sort=&quot;created:-1&quot;
 @param limit limit the amount of returned objects, default is 100, max is 1000
 @param filter filters the results by adding a where clause, to see  the supported language and format see 
 @param populate populates specified reference properties of the retrieved ressource with the full object, e.g. comments.author is of type ObjectId ref User, if you want the full user object instead of the ObjectIdadd this queryParam: &quot;populate=&quot;author&quot;. Supports multiple space separated values, also allows to populateembedded subobject properties by using .-notation. Limitation: Only allows to populate over one DB-Collection, meaningyou can populate the comments.author, but you cannot populate ActivityEvent.Comment.Author, use &quot;populatedeep&quot; if you need this. 
Use with caution, it may impact performance! 
 @param populatedeep populates specified reference deep properties of the retrieved ressource with the full object,use this if you need to go over more than 1 collection, see documentation of &quot;populate&quot; 
Use with caution, it may impact performance! 
 */
-(NSNumber*) getDiaryentriesWithCompletionBlock:(NSString*) sort 
        limit:(NSNumber*) limit 
        filter:(NSString*) filter 
        populate:(NSString*) populate 
        populatedeep:(NSString*) populatedeep 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 POSTs a new diaryentry, AccessLevel: al_individual
 POSTs a new diaryentry
 @param body new DiaryEntry object
 */
-(NSNumber*) postDiaryentriesWithCompletionBlock:(YPDiaryEntry*) body 
        completionHandler: (void (^)(YPDiaryEntry* output, NSError* error))completionBlock;

/**

 Deletes a diaryentry by id, AccessLevel: al_user
 delete diaryentry
 @param _id ID of the diaryentry to be fetched
 */
-(NSNumber*) deleteDiaryEntryWithCompletionBlock:(NSString*) _id 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 Deletes diaryentries, AccessLevel: al_admin
 delete all diaryentries
 */
-(NSNumber*) deleteDiaryentriesWithCompletionBlock:(void (^)(NSError* error))completionBlock;

@end
