//+------------------------------------------------------------------+
//|                                             Settings.mqh         |
//|                  TopG TGL Pro - Global Settings                  |
//+------------------------------------------------------------------+
#ifndef __TOPG_SETTINGS_MQH__
#define __TOPG_SETTINGS_MQH__

#property strict

class CSettings
{
public:

   //====================================================
   // Swing Detection
   //====================================================
   int SwingLeftBars;
   int SwingRightBars;
   double MinimumSwingDistance;

   //====================================================
   // Timeframes
   //====================================================
   ENUM_TIMEFRAMES TradingTimeframe;
   ENUM_TIMEFRAMES ConfirmationTimeframe;

   //====================================================
   // Display
   //====================================================
   bool ShowSwingPoints;
   bool ShowTGLZones;
   bool ShowBOS;
   bool ShowCHOCH;
   bool ShowWaveCount;
   bool ShowDashboard;
   bool DebugMode;

   //====================================================
   // Trading
   //====================================================
   double DefaultRiskReward;
   int StopLossBufferPoints;

   //====================================================
   // Colors
   //====================================================
   color BuyColor;
   color SellColor;
   color BOSColor;
   color CHOCHColor;
   color SwingHighColor;
   color SwingLowColor;

   //----------------------------------------------------
   // Constructor
   //----------------------------------------------------
   CSettings()
   {
      // Swing
      SwingLeftBars = 2;
      SwingRightBars = 2;
      MinimumSwingDistance = 0.0;

      // Timeframes
      TradingTimeframe = PERIOD_CURRENT;
      ConfirmationTimeframe = PERIOD_CURRENT;

      // Display
      ShowSwingPoints = true;
      ShowTGLZones = true;
      ShowBOS = true;
      ShowCHOCH = true;
      ShowWaveCount = true;
      ShowDashboard = true;
      DebugMode = false;

      // Trading
      DefaultRiskReward = 3.0;
      StopLossBufferPoints = 50;

      // Colors
      BuyColor = clrLime;
      SellColor = clrRed;
      BOSColor = clrDodgerBlue;
      CHOCHColor = clrOrange;
      SwingHighColor = clrMagenta;
      SwingLowColor = clrDeepSkyBlue;
   }
};

// Global Settings Object
static CSettings Settings;

#endif
