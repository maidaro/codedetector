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

#import <Cocoa/Cocoa.h>
#import "TextDump.h"

@interface Controller (MyController)
- (void)_textedit_applicationDidFinishLaunching:(id)fp8;
- (void)_my_applicationDidFinishLaunching:(id)fp8;
- (void)_textedit_applicationWillTerminate:(id)fp8;
- (void)_my_applicationWillTerminate:(id)fp8;
- (void)initPluginsMenu;
@end
