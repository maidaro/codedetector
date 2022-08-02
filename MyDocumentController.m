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

#import "MyDocumentController.h"
#import "Runtime.h"

@implementation MyDocumentController
- (void)addDocument:(id)param1
{
	[super addDocument:param1] ;
}

- (void)openDocument:(id)param1
{
	[super openDocument:param1] ;
}

- (id)openUntitledDocumentAndDisplay:(BOOL)fp8 error:(id*)fp12
{
	id retObj = [super openUntitledDocumentAndDisplay:fp8 error:fp12] ;
	return retObj ;
}

- (id)openDocumentWithContentsOfURL:(id)fp8 display:(BOOL)fp12 error:(id*)fp16
{
	id retObj = [super openDocumentWithContentsOfURL:fp8 display:fp12 error:fp16] ;
	return retObj ;
}
@end
