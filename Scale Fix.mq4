#property copyright "Copyright 2015, www.fxindi.net"
#property link      "http://www.fxindi.net"
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
{
   //---
   long chartID = ChartID(), scaleFix;
   
   //--- receive the property value and do the toggle
   if(ChartGetInteger(chartID, CHART_SCALEFIX, 0, scaleFix))
   {
      //Print("Turned On/Off ScaleFix");
      ChartSetInteger(chartID, CHART_SCALEFIX, 0, !(bool) scaleFix);
      ChartRedraw(chartID);
   }      

}
//+------------------------------------------------------------------+