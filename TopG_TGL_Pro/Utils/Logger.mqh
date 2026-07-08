//+------------------------------------------------------------------+
//|                                             Logger.mqh           |
//|                  TopG TGL Pro - Logging Utility                  |
//+------------------------------------------------------------------+
#ifndef __TOPG_LOGGER_MQH__
#define __TOPG_LOGGER_MQH__

#property strict

enum ENUM_LOG_LEVEL
{
   LOG_INFO = 0,
   LOG_WARNING,
   LOG_ERROR,
   LOG_DEBUG
};

class CLogger
{
private:

   bool m_Debug;

public:

   CLogger()
   {
      m_Debug = false;
   }

   void EnableDebug(bool enable)
   {
      m_Debug = enable;
   }

   void Write(ENUM_LOG_LEVEL level,const string message)
   {
      string prefix="";

      switch(level)
      {
         case LOG_INFO:
            prefix="[INFO] ";
            break;

         case LOG_WARNING:
            prefix="[WARNING] ";
            break;

         case LOG_ERROR:
            prefix="[ERROR] ";
            break;

         case LOG_DEBUG:
         {
            if(!m_Debug)
               return;

            prefix="[DEBUG] ";
            break;
         }
      }

      Print(prefix + message);
   }

   void Info(const string message)
   {
      Write(LOG_INFO,message);
   }

   void Warning(const string message)
   {
      Write(LOG_WARNING,message);
   }

   void Error(const string message)
   {
      Write(LOG_ERROR,message);
   }

   void Debug(const string message)
   {
      Write(LOG_DEBUG,message);
   }
};

#endif
