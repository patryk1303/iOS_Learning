//
//  CoreDataManager.h
//  StarterProject
//
//  Created by Marcin Nowacki on 05.05.2015.
//  Copyright (c) 2015 Marcin Nowacki. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CoreDataManager : NSObject

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

+ (CoreDataManager *)instance;
- (void)saveContext;

@end
