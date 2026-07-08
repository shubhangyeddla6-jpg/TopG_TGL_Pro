//+------------------------------------------------------------------+
//|                                             Engine.mqh           |
//|                  TopG TGL Pro - Core Engine                      |
//+------------------------------------------------------------------+
#ifndef __TOPG_ENGINE_MQH__
#define __TOPG_ENGINE_MQH__

#property strict

#include "../Utils/Logger.mqh"

class CEngine
{
private:

   bool      m_Initialized;
   bool      m_Debug;

   datetime  m_LastBarTime;

   CLogger   m_Logger;

public:

   CEngine()
   {
      m_Initialized = false;
      m_Debug       = false;
      m_LastBarTime = 0;
   }

   //---------------------------------------------------
   // Initialize Engine
   //---------------------------------------------------
   bool Initialize()
   {
      if(m_Initialized)
         return true;

      m_Logger.EnableDebug(m_Debug);

      m_Logger.Info("Initializing TopG Engine...");

      m_LastBarTime = iTime(_Symbol,_Period,0);

      m_Initialized = true;

      m_Logger.Info("Engine Initialized.");

      return true;
   }

   //---------------------------------------------------
   // Shutdown
   //---------------------------------------------------
   void Shutdown()
   {
      m_Logger.Info("Engine Shutdown.");

      m_Initialized = false;
   }

   //---------------------------------------------------
   // New Bar Detection
   //---------------------------------------------------
   bool IsNewBar()
   {
      datetime currentBar=iTime(_Symbol,_Period,0);

      if(currentBar!=m_LastBarTime)
      {
         m_LastBarTime=currentBar;
         return true;
      }

      return false;
   }

   //---------------------------------------------------
   // Main Update
   //---------------------------------------------------
   void Update()
   {
      if(!m_Initialized)
         return;

      // Only process once per completed candle
      if(!IsNewBar())
         return;

      m_Logger.Debug("New Candle Detected");

      //==================================================
      // Module execution order
      //==================================================

      // Timeframe Engine

      // Swing Engine

      // Structure Engine

      // TGL Engine

      // Signal Engine

      // Draw Engine

   }

   //---------------------------------------------------
   // Debug
   //---------------------------------------------------
   void EnableDebug(bool enable)
   {
      m_Debug = enable;
      m_Logger.EnableDebug(enable);
   }

   bool IsInitialized() const
   {
      return m_Initialized;
   }

};

#endif
