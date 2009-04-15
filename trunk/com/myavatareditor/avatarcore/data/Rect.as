﻿/*
Copyright (c) 2009 Trevor McCauley

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies 
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE. 
*/
package com.myavatareditor.avatarcore.data {
	
	import com.myavatareditor.avatarcore.xml.IXMLWritable;
	import flash.geom.Rectangle;
	
	/**
	 * An extended version of flash.geom.Rectangle
	 * that includes a name property for referencing
	 * through collections.
	 * @author Trevor McCauley; www.senocular.com
	 */
	public class Rect extends Rectangle implements IXMLWritable {
		
		public function Rect(x:Number = 0, y:Number = 0, width:Number = 0, height:Number = 0) {
			super(x, y, width, height);
		}
		
		public function getPropertiesIgnoredByXML():Object {
			return {bottom:1, bottomRight:1, top:1, topLeft:1, right:1, left:1, size:1};
		}
		
		public function getPropertiesAsAttributesInXML():Object {
			return {x:1, y:1, height:1, width:1};
		}
		
		public function getObjectAsXML():XML {
			return null;
		}
	}
}