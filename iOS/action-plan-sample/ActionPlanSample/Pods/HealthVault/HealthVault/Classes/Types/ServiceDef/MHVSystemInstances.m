//
// MHVSystemInstances.m
// MHVLib
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
//
//

#import "MHVValidator.h"
#import "MHVSystemInstances.h"

static const xmlChar *x_attribute_currentinstance = XMLSTRINGCONST("current-instance-id");
static NSString *const c_element_instance = @"instance";

@implementation MHVSystemInstances

- (void)deserializeAttributes:(XReader *)reader
{
    self.currentInstanceID = [reader readAttributeWithXmlName:x_attribute_currentinstance];
}

- (void)deserialize:(XReader *)reader
{
    self.instances = [reader readElementArray:c_element_instance
                                      asClass:[MHVServiceInstance class]
                                andArrayClass:[NSMutableArray class]];
}

- (void)serializeAttributes:(XWriter *)writer
{
    [writer writeAttributeXmlName:x_attribute_currentinstance value:self.currentInstanceID];
}

- (void)serialize:(XWriter *)writer
{
    [writer writeElementArray:c_element_instance elements:self.instances];
}

@end
