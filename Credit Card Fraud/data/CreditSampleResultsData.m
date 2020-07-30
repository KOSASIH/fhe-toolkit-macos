//
//  CreditSampleResultsData.m
//  Credit Card Fraud
//
//  Created by boland on 7/28/20.
//  Copyright © 2020 IBM. All rights reserved.
//

#import "CreditSampleResultsData.h"

@implementation CreditSampleResultsData

- (id)initWithData:(CreditSampleResults *) sdata {
  self = [super init];
  if(self) {
      _sampleData = sdata;
  }
  return self;
}

- (void)dealloc {
  free(_sampleData);
  //[super dealloc];
}

- (double)getValueByName:(NSString *)keyName {
    if ([keyName isEqual:@"Precision"]) {
        return _sampleData->precision;
    } else if ([keyName isEqual:@"Recall"]) {
        return _sampleData->recall;
    } else if ([keyName isEqual:@"F1 Score"]) {
        return _sampleData->f1Score;
    } else {
        return 1.0;
    }
}

+ (NSString *)getNameByRow:(NSInteger)row {
    switch (row) {
        case 0:
            return @"0";
            break;
        case 1:
            return @"1";
            break;
        case 2:
            return @"2";
        case 3:
            return @"3";
        default:
            return @"";
            break;
    }
}


@end
