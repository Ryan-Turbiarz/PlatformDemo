package com.dubitplatform.behaviours
{
	import uk.co.dubit.platform.scriptEngine.ScriptKeyword;
	import uk.co.dubit.platform.scriptEngine.behaviour.LibraryBehaviour;

	public class Contains extends LibraryBehaviour
	{
		/*
		Example. The behaviour looks for the value "bar" in the string "foobar". If found
		the <Then> branch is executed
		
		<Contains string="foobar" value="bar">
			<Then>
				<Trace message="Found bar"/>
			</Then>
			<Else>
				<Trace message="Could not find	 bar"/>
			</Else>
		</Contains>
		
		*/
		
		
		override protected function runBehaviour () : void
		{
			var str : String = getValue("string"); 
			var value : String = getValue("value");
			
			if (str.indexOf(value) >= 0)
			{
				notifyBranch("then");
			} 
			else
			{
				notifyBranch("else");
			}
		}		
	}
}