};

//=====================================================
// Swing Type
//=====================================================
enum ENUM_SWING_TYPE
{
   SWING_NONE = 0,
   SWING_HIGH,
   SWING_LOW
};

//=====================================================
// Structure Type
//=====================================================
enum ENUM_STRUCTURE
{
   STRUCTURE_NONE = 0,
   STRUCTURE_HH,
   STRUCTURE_HL,
   STRUCTURE_LH,
   STRUCTURE_LL,
   STRUCTURE_BOS,
   STRUCTURE_CHOCH
};

//=====================================================
// TGL State
//=====================================================
enum ENUM_TGL_STATE
{
   TGL_NEW = 0,
   TGL_WAIT_TOUCH,
   TGL_ACTIVE,
   TGL_WAIT_CHOCH,
   TGL_WAIT_BOS,
   TGL_WAIT_WAVE,
   TGL_ENTRY_READY,
   TGL_IN_TRADE,
   TGL_FINISHED,
   TGL_INVALID
};

//=====================================================
// Swing Point
//=====================================================
struct SwingPoint
{
   int               ID;
   int               BarIndex;

   datetime          Time;

   double            Price;

   ENUM_SWING_TYPE   Type;

   bool              Confirmed;
   bool              Broken;
};

//=====================================================
// TGL Zone
//=====================================================
struct TGLZone
{
   int               ID;

   ENUM_DIRECTION    Direction;

   ENUM_TGL_STATE    State;

   ENUM_TIMEFRAMES   Timeframe;

   SwingPoint        Point1;
   SwingPoint        Point2;
   SwingPoint        Point3;

   double            ZoneHigh;
   double            ZoneLow;

   bool              Active;
   bool              Invalid;
   bool              Touched;

   bool              BOS;
   bool              CHOCH;
   bool              Wave5;

   bool              EntryReady;

   datetime          CreatedTime;
};

//=====================================================
// Trade Signal
//=====================================================
struct TradeSignal
{
   ENUM_DIRECTION Direction;

   double Entry;

   double StopLoss;

   double TakeProfit1;

   double TakeProfit2;

   double RiskReward;

   bool Active;
};

#endif