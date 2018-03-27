//------------------------------------------------------------------------------
//
// Copyright (c) Microsoft Corporation.
// All rights reserved.
//
// This code is licensed under the MIT License.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files(the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and / or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions :
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//
//------------------------------------------------------------------------------

#import "MSALUser+Automation.h"
#import "MSIDClientInfo.h"

@implementation MSALUser (Automation)

- (NSDictionary *)itemAsDictionary
{
    NSMutableDictionary *resultDict = [NSMutableDictionary dictionary];
    [resultDict setValue:self.displayableId forKey:@"displayable_id"];
    [resultDict setValue:self.name forKey:@"name"];
    [resultDict setValue:self.identityProvider forKey:@"identity_provider"];
    if (self.clientInfo.uid)
    {
        [resultDict setValue:self.clientInfo.uid forKey:@"uid"];
    }
    if (self.clientInfo.utid)
    {
        [resultDict setValue:self.clientInfo.utid forKey:@"utid"];
    }
    [resultDict setValue:self.environment forKey:@"environment"];
    [resultDict setValue:self.userIdentifier forKey:@"user_identifier"];
    
    return resultDict;
}

@end
