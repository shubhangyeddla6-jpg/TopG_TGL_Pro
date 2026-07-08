#pragma once

//+------------------------------------------------------------------+
//| TopG TGL Pro                                                     |
//| Core Engine                                                      |
//| Version : 0.1.0-alpha                                            |
//+------------------------------------------------------------------+

class IModule
{
public:
   virtual bool Initialize() = 0;
   virtual void Update() = 0;
   virtual void Shutdown() = 0;
};

class CEngine
{
private:

   IModule *Modules[32];
   int ModuleCount;

public:

   CEngine()
   {
      ModuleCount = 0;
   }

   bool Register(IModule &module)
   {
      if(ModuleCount >= 32)
         return false;

      Modules[ModuleCount++] = &module;

      return true;
   }

   bool Initialize()
   {
      for(int i=0;i<ModuleCount;i++)
      {
         if(!Modules[i].Initialize())
            return false;
      }

      return true;
   }

   void Update()
   {
      for(int i=0;i<ModuleCount;i++)
      {
         Modules[i].Update();
      }
   }

   void Shutdown()
   {
      for(int i=0;i<ModuleCount;i++)
      {
         Modules[i].Shutdown();
      }
   }

   int Count() const
   {
      return ModuleCount;
   }
};
