//
// MHVPlanStatusEnum.m
//
// Copyright (c) 2017 Microsoft Corporation. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#import "MHVPlanStatusEnum.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation MHVPlanStatusEnum

+ (NSDictionary *)enumMap
{
    return @{
             @"Unknown": @(0),
             @"Archived": @(1),
             @"Recommended": @(2),
             @"InProgress": @(3),
             @"Completed": @(4),
             @"Template": @(5),
             };
}

@end

#pragma clang diagnostic pop