<<!---
Copyright 2007 Objective Internet Ltd - http://www.objectiveinternet.com

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
--->>
<<!--- Set the name of the object (table) --->>
<<cfset objectName = uFirst(oMetaData.getSelectedTableAlias())>>
<<!--- Set the path to the generated model --->>
<<cfset generatedModelPath = "$$oMetaData.getDottedPath(arguments.DestinationFilePath,"","generated." & objectName)$$Bean">>
<<cfoutput>>
<cfcomponent displayname="$$objectName$$Bean.cfc" extends="$$generatedModelPath$$">
	<!--- This cfc will not be overwritten when the scaffolder is re-run. You can safely 	--->
	<!--- edit the contents to override the methods in the $$generatedModelPath$$Bean		--->
</cfcomponent>
<</cfoutput>>