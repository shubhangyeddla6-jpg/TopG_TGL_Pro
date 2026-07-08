//+------------------------------------------------------------------+
//|                                             TopG_TGL_Pro.mq5     |
//|                       TopG TGL Professional Indicator             |
//|                       Version : 0.1.0 Alpha                       |
//|                       Platform: MetaTrader 5                     |
//+------------------------------------------------------------------+
#property copyright "TopG_TGL_Pro"
#property version   "0.1.0"
#property strict
#property indicator_chart_window
#property indicator_plots 0

//===========================//
//        Include Files      //
//===========================//

#include "../Data/Settings.mqh"
#include "../Data/Structures.mqh"
#include "../Data/Enums.mqh"

#include "../Core/TimeframeEngine.mqh"
#include "../Core/SwingEngine.mqh"
#include "../Core/TGLEngine.mqh"

#include "../Draw/DrawEngine.mqh"

#include "../Utils/Helpers.mqh"
#include "../Utils/ObjectManager.mqh"

//===========================//
//     Global Objects        //
//===========================//

CTimeframeEngine   TimeframeEngine;
CSwingEngine       SwingEngine;
CTGLEngine         TGLEngine;
CDrawEngine        DrawEngine;

//===========================//
//      Initialization       //
//===========================//

int OnInit()
{
   Print("====================================");
   Print(" TopG TGL Pro");
   Print(" Version : 0.1.0 Alpha");
   Print(" Engine Initializing...");
   Print("====================================");

   TimeframeEngine.Initialize();
   SwingEngine.Initialize();
   TGLEngine.Initialize();
   DrawEngine.Initialize();

   return(INIT_SUCCEEDED);
}

//===========================//
//        Deinitialize       //
//===========================//

void OnDeinit(const int reason)
{
   DrawEngine.RemoveAllObjects();

   Print("TopG TGL Pro Unloaded");
}

//===========================//
//       Main Function       //
//===========================//

int OnCalculate(
   const int rates_total,
   const int prev_calculated,
   const datetime &time[],
   const double &open[],
   const double &high[],
   const double &low[],
   const double &close[],
   const long &tick_volume[],
   const long &volume[],
   const int &spread[])
{

   // Update Timeframe Mapping
   TimeframeEngine.Update();

   // Detect Swings
   SwingEngine.Update();

   // Detect TGL Levels
   TGLEngine.Update();

   // Draw Everything
   DrawEngine.Update();

   return(rates_total);
}
