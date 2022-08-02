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

#import "MyController.h"
#import "TextEditorPlugins.h"

@implementation Controller (MyController)
- (void)_my_applicationDidFinishLaunching:(id)fp8
{
	[self _textedit_applicationDidFinishLaunching:fp8] ;
	NSLog(@"_my_applicationDidFinishLaunching") ;
}

- (void)_my_applicationWillTerminate:(id)fp8
{
	[self _textedit_applicationWillTerminate:fp8] ;
	NSLog(@"_my_applicationWillTerminate") ;
}

- (void)initPluginsMenu
{
	NSMenu* rootMenu = [[NSApplication sharedApplication] mainMenu] ;
	NSMenuItem* newMenu = [[NSMenuItem alloc] init] ;
	NSMenu* menuPlugins = [[NSMenu alloc] initWithTitle:@"Plugins"] ;
	[rootMenu insertItem:newMenu atIndex:5] ;
	[newMenu release] ;
	[rootMenu setSubmenu:menuPlugins forItem:newMenu] ;
	newMenu = [menuPlugins insertItemWithTitle:@"Preferences"
				 action:@selector(actionPluginsPreferences:)
				 keyEquivalent:@""
				 atIndex:0] ;
	[menuPlugins release] ;
}
@end
