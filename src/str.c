/*
 * strlib.c is part of cligraph.
 * 
 * cligraph is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * cligraph is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with cligraph.  If not, see <http://www.gnu.org/licenses/>.
 */

/*
 * strlib.c 
 *
 * AUTHOR: Noah Harvey
 *
 * VERSION: v0.0.1
 *
 * DESCRIPTION: definition of strlib functions 
 */

#include <string.h>
#include "str.h"

char* strins(char* haystack, char* needle, size_t index, char* buff)
{
	if(!haystack || !needle || !buff) return NULL;

	if(index < 0 || index > strlen(haystack)) return NULL;

	strncpy(buff, haystack, index);
	strcpy(buff+index, needle);
	strcpy(buff+index+strlen(needle), haystack+index);

	return buff;
}

char* strrpl(char* haystack, char* needle, size_t strt, size_t end, char* buff)
{
	if(!haystack || !needle || !buff) return NULL;

	size_t haystacklen = strlen(haystack);	
	if(strt < 0 || strt > haystacklen || strt > end) return NULL;
	if(end  < 0 || end > haystacklen || end < strt) return NULL;

	strncpy(buff,haystack,strt);
	strcpy(buff+strt,needle);
	strcpy(buff+strt+strlen(needle),haystack+end+1);

	return buff;
}

char* strsub(char* expr, size_t strt, size_t end, char* buff)
{
	if(!expr || !buff) return NULL;

	strncpy(buff,expr+strt,end-strt+1);
	*(buff+(end-strt+1)) = '\0';
	return buff;
}
