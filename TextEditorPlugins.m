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

#import "TextEditorPlugins.h"
#import "MyDocumentController.h"
#import "MyDocument.h"
#import "Runtime.h"
#import "PluginDefines.h"

@implementation TextEditorPlugins
+ (void)load
{
	[[MyDocumentController class] poseAsClass:[NSDocumentController class]] ;
	[[MyDocument class] poseAsClass:[Document class]] ;
	
	DTRenameSelector([Controller class],
					@selector(applicationDidFinishLaunching:),
					@selector(_textedit_applicationDidFinishLaunching:)) ;
	DTRenameSelector([Controller class],
					@selector(_my_applicationDidFinishLaunching:),
					@selector(applicationDidFinishLaunching:)) ;

	DTRenameSelector([Controller class],
					@selector(applicationWillTerminate:),
					@selector(_textedit_applicationWillTerminate:)) ;
	DTRenameSelector([Controller class],
					@selector(_my_applicationWillTerminate:),
					@selector(applicationWillTerminate:)) ;

	TextEditorPlugins* plugin = [TextEditorPlugins sharedInstance] ;
	[plugin registerDefaults] ;
	[plugin loadDefaults] ;
	NSLog(@"TextEditorPlugins is loaded") ;
}

+ (TextEditorPlugins*)sharedInstance
{
	static TextEditorPlugins* plugin = nil; 
	if (plugin == nil)
		plugin = [[TextEditorPlugins alloc] init]; 
	return plugin; 
}

- (id)init
{
	self = [super init] ;
	if ( self ) {
		detector = [[UniversalDetector detector] retain];
	}
	return self ;
}

- (void)dealloc
{
	[detector release] ;
	[super dealloc] ;
}

- (void)registerDefaults
{
}

- (void)loadDefaults
{
}

- (UniversalDetector*)universaldetector
{
	return [[detector retain] autorelease] ;
}

@end
