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

#include "Runtime.h"

BOOL DTRenameSelector(Class _class, SEL _oldSelector, SEL _newSelector) 
{ 
	Method method = nil; 
	// First, look for the methods 
	method = class_getInstanceMethod(_class, _oldSelector); 
	if (method == nil)
		return NO; 
	method->method_name = _newSelector; 
	return YES; 
}

