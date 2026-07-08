#pragma once

//==================================================
// TopG TGL Pro Settings
//==================================================

class CSettings
{
public:

   // Trading Timeframes
   ENUM_TIMEFRAMES TradingTF;
   ENUM_TIMEFRAMES ConfirmationTF;

   // Display
   bool ShowTGLZones;
   bool ShowBOS;
   bool ShowCHOCH;
   bool ShowWaves;
   bool ShowDashboard;

   // Risk
   double RiskReward;
   int StopBuffer;

   CSettings()
   {
      TradingTF      = PERIOD_CURRENT;
      ConfirmationTF = PERIOD_CURRENT;

      ShowTGLZones = true;
      ShowBOS      = true;
      ShowCHOCH    = true;
      ShowWaves    = true;
      ShowDashboard= true;

      RiskReward = 3.0;
      StopBuffer = 5;
   }
};

extern CSettings Settings;
