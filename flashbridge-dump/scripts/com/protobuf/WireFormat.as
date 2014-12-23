package com.protobuf
{
   public final class WireFormat extends Object
   {
      
      public function WireFormat()
      {
         super();
      }
      
      public static const WIRETYPE_VARINT:int = 0;
      
      public static const WIRETYPE_FIXED64:int = 1;
      
      public static const WIRETYPE_LENGTH_DELIMITED:int = 2;
      
      public static const WIRETYPE_START_GROUP:int = 3;
      
      public static const WIRETYPE_END_GROUP:int = 4;
      
      public static const WIRETYPE_FIXED32:int = 5;
      
      public static const TAG_TYPE_BITS:int = 3;
      
      public static const TAG_TYPE_MASK:int = (1 << TAG_TYPE_BITS) - 1;
      
      public static function getTagWireType(param1:int) : int
      {
         return param1 & TAG_TYPE_MASK;
      }
      
      public static function getTagFieldNumber(param1:int) : int
      {
         return param1 >>> TAG_TYPE_BITS;
      }
      
      public static function makeTag(param1:int, param2:int) : int
      {
         return param1 << TAG_TYPE_BITS | param2;
      }
      
      public static const MESSAGE_SET_ITEM:int = 1;
      
      public static const MESSAGE_SET_TYPE_ID:int = 2;
      
      public static const MESSAGE_SET_MESSAGE:int = 3;
      
      public static const MESSAGE_SET_ITEM_TAG:int = makeTag(MESSAGE_SET_ITEM,WIRETYPE_START_GROUP);
      
      public static const MESSAGE_SET_ITEM_END_TAG:int = makeTag(MESSAGE_SET_ITEM,WIRETYPE_END_GROUP);
      
      public static const MESSAGE_SET_TYPE_ID_TAG:int = makeTag(MESSAGE_SET_TYPE_ID,WIRETYPE_VARINT);
      
      public static const MESSAGE_SET_MESSAGE_TAG:int = makeTag(MESSAGE_SET_MESSAGE,WIRETYPE_LENGTH_DELIMITED);
   }
}
