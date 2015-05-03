
import flash.events.Event;
import flash.filters.GlowFilter;

private function filterChange(e:Event):void
{
	if(e.target.selected) setFilter(true);
	else setFilter(false);
	
}

private function setFilter(value:Boolean):void
{
	filterColor.enabled = value;
	filterAlpha.enabled = value;
	filterblurX.enabled = value;
	filterblurY.enabled = value;
	filterStrength.enabled = value;
}

private function getFilters():Array
{
	return [new GlowFilter(uint(filterColor.text),Number(filterAlpha.text),Number(filterblurX.text),Number(filterblurY.text),Number(filterStrength.text))];
}

private function previewFont():void
{
	textBg.setStyle("backgroundColor",Number(bgColor.text));
	
	fontExp.setStyle("fontSize",Number(size.text));
	fontExp.setStyle("color",Number(color.text));
	fontExp.setStyle("leading",Number(leading.text));
	fontExp.setStyle("letterSpacing",Number(letterSpacing.text));
	if(bold.selected) fontExp.setStyle("fontWeight","bold");
	else fontExp.setStyle("fontWeight","normal");
	if(italic.selected) fontExp.setStyle("fontStyle","italic");
	else fontExp.setStyle("fontStyle","normal");
	if(underline.selected) fontExp.setStyle("textDecoration","underline");
	else fontExp.setStyle("textDecoration","none");
		
	if(filter.selected) fontExp.filters = getFilters();
	else fontExp.filters = null;
}