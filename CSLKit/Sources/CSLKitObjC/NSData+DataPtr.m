//
//  NSData+DataPtr.m
//
//  Created by Ostap Danylovych on 24.10.2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "NSData+DataPtr.h"

@implementation NSData (DataPtr)

+ (NSData *)fromDataPtr:(DataPtr *)ptr {
    NSData* data = [NSData dataWithBytes:ptr->ptr length:ptr->len];
    dataptr_free(ptr);
    return data;
}

+ (NSData *)fromBase64:(NSString *)base64Encoded {
    return [[NSData alloc] initWithBase64EncodedString:base64Encoded options:0];
}

+ (NSArray<NSData *> *)fromDataPtrArray:(DataPtrArray *)array {
    NSMutableArray<NSData *> *result = [NSMutableArray arrayWithCapacity:array->len];
    
    for (uintptr_t i = 0; i < array->len; i++) {
        DataPtr *dataPtr = &array->ptr[i];
        NSData *data = [NSData dataWithBytes:dataPtr->ptr length:dataPtr->len];
        [result addObject:data];
    }
    
    free_data_ptr_array(array);
    return [result copy];
}

- (NSString *)base64 {
    return [self base64EncodedStringWithOptions:0];
}

@end