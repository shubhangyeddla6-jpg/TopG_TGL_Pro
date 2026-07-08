#pragma once

#include "Enums.mqh"

//==================================================
// Swing Structure
//==================================================

struct SwingPoint
{
   int Index;

   double Price;

   datetime Time;

   bool IsHigh;

   bool IsLow;
};

//==================================================
// TGL Structure
//==================================================

struct TGL
{
   int ID;

   ENUM_TGL_DIRECTION Direction;

   ENUM_TGL_STATE State;

   ENUM_TIMEFRAMES Timeframe;

   double Point1;

   double Point2;

   double Point3;

   double ZoneHigh;

   double ZoneLow;

   bool Active;

   bool Invalid;

   bool Touched;

   bool CHOCH;

   bool BOS;

   bool FiveWave;

   bool EntryReady;

   datetime CreatedTime;
};
