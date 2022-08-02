/*
 * Copyright (c) 2008 Chan-gu Lee <maidaro@gmail.com>
 *
 * This is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with This; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
 */

#import "MyDocument.h"
#import "TextEditorPlugins.h"

@implementation MyDocument

- (BOOL)readFromURL:(id)fp8 ofType:(id)fp12 encoding:(unsigned int)fp16 ignoreRTF:(BOOL)fp20 ignoreHTML:(BOOL)fp24 error:(id*)fp28
{
	NSLog(@"readFromURL: ofType: encoding:%X ignoreRTF: ignoreHTTP: error:", fp16);
	BOOL bRet = [super readFromURL:fp8 ofType:fp12 encoding:fp16 ignoreRTF:fp20 ignoreHTML:fp24 error:fp28] ;
	if ( !bRet ) {
		TextEditorPlugins* plugins = [TextEditorPlugins sharedInstance] ;
		UniversalDetector *detector = [plugins universaldetector] ;
		if ( !detector ) {
			NSLog(@"Failed to get detector instance") ;
			return FALSE ;
		}
		NSData *data = [NSData dataWithContentsOfURL:fp8 ] ;
		if ( !data ) {
			NSLog(@"Failed to dataWithContentsOfURL") ;
			return FALSE ;
		}
		[detector analyzeData:data] ;
		NSStringEncoding encoding = [detector encoding] ;
		NSLog(@"@readFromURL: ofType: encoding:%X ignoreRTF: ignoreHTTP: error:", encoding);
		bRet = [super readFromURL:fp8 ofType:fp12 encoding:encoding ignoreRTF:fp20 ignoreHTML:fp24 error:fp28] ;
		[detector reset] ;
	}
	return bRet ;
}

@end
