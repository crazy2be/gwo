package §_-8B§
{
   import flash.display.BitmapData;
   import flash.display.IBitmapDrawable;
   import flash.geom.Rectangle;
   import flash.display.DisplayObject;
   import flash.geom.Matrix;
   import flash.display.Sprite;
   import flash.display.DisplayObjectContainer;
   import flash.utils.ByteArray;
   import §_-Ug§.§_-h4§;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.utils.getQualifiedClassName;
   
   public class §_-IH§ extends §_-Et§
   {
      
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
      }
      
      public function §_-IH§(param1:§_-lX§)
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         super();
         _loc2_;
         _loc2_;
         this.§_-EF§ = new §_-16§(§_-l0§,null);
         this.§_-5g§ = param1;
         _loc2_;
         _loc2_;
         this.§_-qy§ = {};
         _loc3_;
         this.§_-9X§ = {};
         this.§_-9H§ = {};
      }
      
      public static const §_-ox§:uint = 90;
      
      public static const §_-rG§:uint = 90;
      
      public static const §_-l0§:BitmapData = new BitmapData(§_-ox§,§_-rG§,false,0);
      
      private static var §_-JU§:§_-IH§;
      
      public static function get §_-EX§() : §_-IH§
      {
         return §_-JU§;
      }
      
      private static const §_-Ov§:uint = 0;
      
      private static const §_-H1§:uint = 1;
      
      private static const §_-Om§:uint = 2;
      
      private static const §_-Ke§:uint = 3;
      
      static var §_-7I§:String = "";
      
      static var §_-D1§:String = "";
      
      static function §_-rR§(param1:§_-lX§, param2:Object) : §_-IH§
      {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:§_-lW§ = null;
         var _loc7_:§_-yV§ = null;
         var _loc3_:§_-IH§ = new §_-IH§(param1);
         _loc3_._name = param2.filename;
         _loc11_;
         _loc11_;
         _loc3_.§_-Oa§ = param2.description;
         _loc3_.§_-C7§ = param2.save_id;
         _loc11_;
         _loc11_;
         _loc3_.§_-C6§ = param2.user_id;
         _loc11_;
         _loc3_.§_-U-§ = param2.user_name;
         _loc10_;
         _loc10_;
         _loc3_.§_-dj§ = param2.created;
         _loc10_;
         _loc3_.§_-wx§ = param2.last_update;
         _loc3_.§_-ls§ = param2.views;
         _loc10_;
         _loc10_;
         _loc11_;
         if((param2.thumb) && !(param2.thumb == ""))
         {
            _loc11_;
            _loc11_;
            _loc3_.§_-EF§.url = §_-7I§ + param2.thumb;
            _loc10_;
            _loc10_;
         }
         _loc3_.§_-un§ = §_-D1§ + param2.file;
         _loc10_;
         _loc10_;
         _loc3_.§_-N1§ = param2.file_size;
         _loc10_;
         _loc3_.§_-BA§ = !(param2.status == §_-Om§);
         _loc3_.§_-oa§ = false;
         _loc11_;
         _loc10_;
         _loc11_;
         _loc10_;
         _loc10_;
         _loc3_.§_-CD§ = !(param2.status == §_-Ov§) && !(param2.status == §_-Om§);
         while(true)
         {
            _loc11_;
            _loc11_;
            for each(_loc4_ in param2.keys)
            {
               _loc6_ = param1.§_-k-§(_loc4_.id);
               if(_loc6_)
               {
                  _loc11_;
                  _loc3_.§_-qy§[_loc6_.name] = _loc6_.§_-d7§(_loc4_.value);
               }
            }
            break;
         }
         _loc11_;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc11_;
         for each(_loc5_ in param2.ratings)
         {
            _loc7_ = param1.§_-Zc§(_loc5_.id);
            if(_loc7_)
            {
               _loc10_;
               _loc3_.§_-9X§[_loc7_.name] = _loc7_.§_-d7§(_loc5_.score);
               _loc10_;
               _loc3_.§_-9H§[_loc7_.name] = int(_loc5_.votes);
            }
         }
         return _loc3_;
      }
      
      private var §_-5g§:§_-lX§;
      
      private var _name:String;
      
      private var §_-C7§:uint;
      
      private var §_-Oa§:String;
      
      private var §_-C6§:uint;
      
      private var §_-U-§:String;
      
      private var §_-dj§:String;
      
      private var §_-wx§:String;
      
      private var §_-ls§:uint;
      
      private var §_-oa§:Boolean;
      
      private var §_-CD§:Boolean;
      
      private var §_-BA§:Boolean;
      
      private var §_-Dw§:Boolean;
      
      private var §_-EF§:§_-16§;
      
      private var §_-qy§:Object;
      
      private var §_-9X§:Object;
      
      private var §_-9H§:Object;
      
      private var §_-un§:String;
      
      private var _data;
      
      private var §_-bd§:Boolean;
      
      private var _encodedData;
      
      private var §_-66§:Array;
      
      private var §_-wM§:Boolean;
      
      private var §_-TZ§:Object;
      
      private var §_-zj§:String;
      
      private var §_-N1§:uint;
      
      public function get group() : §_-lX§
      {
         return this.§_-5g§;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.§_-Oa§;
      }
      
      public function set description(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.§_-Oa§ = param1;
      }
      
      public function get id() : uint
      {
         return this.§_-C7§;
      }
      
      public function get data() : Object
      {
         return this._data;
      }
      
      public function set data(param1:Object) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this._data = param1;
      }
      
      public function get bytesLoaded() : uint
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(this._data)
         {
            _loc2_;
            return this.bytesTotal;
         }
         if(!this.§_-qq§)
         {
            _loc2_;
            return 0;
         }
         return this.§_-qq§.bytesLoaded;
      }
      
      public function get bytesTotal() : uint
      {
         return this.§_-N1§;
      }
      
      public function get §_-GZ§() : Boolean
      {
         return this.§_-oa§;
      }
      
      public function get draft() : Boolean
      {
         return this.§_-Dw§;
      }
      
      public function set draft(param1:Boolean) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.§_-Dw§ = param1;
      }
      
      public function get authorId() : uint
      {
         return this.§_-C6§;
      }
      
      public function get authorName() : String
      {
         return this.§_-U-§;
      }
      
      public function get keys() : Object
      {
         return this.§_-qy§;
      }
      
      public function get ratings() : Object
      {
         return this.§_-9X§;
      }
      
      public function get §_-m-§() : Object
      {
         return this.§_-9H§;
      }
      
      public function get views() : uint
      {
         return this.§_-ls§;
      }
      
      public function get §_-BL§() : String
      {
         return this.§_-dj§;
      }
      
      public function get §_-2H§() : String
      {
         return this.§_-wx§;
      }
      
      override public function toString() : String
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         return "Save File: " + this._name;
      }
      
      public function get §_-mE§() : BitmapData
      {
         return this.§_-EF§.bitmapData;
      }
      
      public function set §_-mE§(param1:BitmapData) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.§_-Ic§(param1);
      }
      
      public function get iconLoaded() : Boolean
      {
         return this.§_-EF§.loaded;
      }
      
      public function §_-Ic§(param1:IBitmapDrawable) : void
      {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Rectangle = null;
         var _loc2_:BitmapData = new BitmapData(§_-ox§,§_-rG§,false,0);
         var _loc5_:Number = 0;
         var _loc6_:Number = 0;
         _loc10_;
         _loc11_;
         _loc11_;
         if(param1 is BitmapData)
         {
            _loc10_;
            _loc10_;
            _loc11_;
            _loc3_ = BitmapData(param1).width;
            _loc10_;
            _loc4_ = BitmapData(param1).height;
            _loc11_;
            _loc11_;
         }
         else if(param1 is DisplayObject)
         {
            _loc9_ = DisplayObject(param1).getBounds(null);
            _loc11_;
            _loc5_ = _loc9_.left;
            _loc11_;
            _loc11_;
            _loc6_ = _loc9_.top;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc3_ = _loc9_.width;
            _loc10_;
            _loc10_;
            _loc4_ = _loc9_.height;
         }
         
         var _loc7_:Matrix = new Matrix();
         _loc8_ = Math.min(§_-ox§ / _loc3_,§_-rG§ / _loc4_);
         _loc10_;
         _loc7_.translate(-_loc5_,-_loc6_);
         _loc7_.scale(_loc8_,_loc8_);
         _loc7_.translate((§_-ox§ - _loc3_ * _loc8_) / 2,(§_-rG§ - _loc4_ * _loc8_) / 2);
         _loc11_;
         _loc2_.draw(param1,_loc7_);
         this.§_-EF§.bitmapData = _loc2_;
      }
      
      public function §_-Jh§(param1:DisplayObjectContainer) : Sprite
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc3_;
         _loc3_;
         if(this.§_-EF§)
         {
            _loc3_;
            _loc3_;
            return this.§_-EF§.§_-f9§(param1);
         }
         §_-tz§.logError("No icon available for this sumbission.");
         return null;
      }
      
      public function §_-mq§() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         if(!this.§_-5g§.connection.§_-Pn§)
         {
            §_-tz§.logError("The user must be logged-in to delete a file.");
            dispatchEvent(new §_-E6§(§_-E6§.§_-Ha§,null,§_-E6§.§_-Ea§));
            _loc3_;
            _loc3_;
            return;
         }
         if(!this.§_-C7§)
         {
            §_-tz§.logError("The file does not exist.");
            dispatchEvent(new §_-E6§(§_-E6§.§_-Ha§,null,§_-E6§.§_-Ea§));
            _loc2_;
            return;
         }
         var _loc1_:§_-K4§ = new §_-K4§("deleteSaveFile");
         _loc3_;
         _loc3_;
         _loc1_.§_-Va§.save_id = this.§_-C7§;
         _loc3_;
         _loc3_;
         _loc1_.addEventListener(§_-E6§.§_-tI§,this.§_-MB§);
         _loc3_;
         this.§_-5g§.connection.§_-P3§(_loc1_);
      }
      
      public function save() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!this.§_-5g§.connection.§_-Pn§)
         {
            §_-tz§.logError("The user must be logged-in to save a file.");
            _loc3_;
            _loc3_;
            dispatchEvent(new §_-E6§(§_-E6§.§_-Mh§,null,§_-E6§.§_-Ea§));
            _loc3_;
            return;
         }
         _loc4_;
         _loc4_;
         §_-16§.§_-C2§++;
         §_-JU§ = this;
         this.§_-mx§(true);
      }
      
      private function §_-dx§() : void
      {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var _loc3_:String = null;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:§_-lW§ = null;
         var _loc7_:§_-yV§ = null;
         var _loc8_:ByteArray = null;
         var _loc1_:§_-K4§ = new §_-K4§("saveFile");
         _loc1_.§_-Va§.group = this.§_-5g§.id;
         _loc1_.§_-Va§.user_name = this.§_-5g§.connection.username;
         _loc1_.§_-Va§.filename = this._name;
         _loc12_;
         _loc1_.§_-Va§.description = this.§_-Oa§;
         _loc12_;
         _loc12_;
         _loc12_;
         _loc12_;
         if(this.§_-Dw§)
         {
            _loc12_;
            _loc1_.§_-Va§.draft = true;
         }
         _loc11_;
         _loc11_;
         if((this.§_-C7§) && !this.§_-oa§)
         {
            _loc1_.§_-Va§.overwrite = 1;
            _loc1_.§_-Va§.save_id = this.§_-C7§;
         }
         var _loc2_:Array = [];
         for(_loc3_ in this.§_-qy§)
         {
            _loc6_ = this.§_-5g§.getKey(_loc3_);
            if(_loc6_)
            {
               _loc12_;
               _loc2_.push({
                  "id":_loc6_.id,
                  "value":_loc6_.§_-d7§(this.§_-qy§[_loc3_])
               });
               _loc11_;
            }
            else
            {
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc11_;
               _loc11_;
               _loc12_;
               _loc11_;
               _loc11_;
               §_-tz§.logError("No key named \"" + _loc3_ + "\" in save group \"" + this.§_-5g§.name + "\".");
            }
         }
         _loc12_;
         _loc12_;
         _loc1_.§_-Va§.keys = _loc2_;
         _loc4_ = [];
         _loc12_;
         _loc12_;
         _loc12_;
         _loc12_;
         _loc12_;
         for(_loc5_ in this.§_-9X§)
         {
            _loc7_ = this.§_-5g§.§_-TX§(_loc5_);
            if(_loc7_)
            {
               _loc12_;
               _loc4_.push({
                  "id":_loc7_.id,
                  "value":_loc7_.§_-d7§(this.§_-9X§[_loc5_])
               });
               _loc11_;
               _loc11_;
            }
            else
            {
               _loc12_;
               _loc12_;
               _loc12_;
               _loc11_;
               _loc11_;
               _loc12_;
               _loc12_;
               _loc12_;
               §_-tz§.logError("No rating named \"" + _loc5_ + "\" in save group \"" + this.§_-5g§.name + "\".");
            }
         }
         _loc12_;
         _loc12_;
         _loc1_.§_-Va§.ratings = _loc4_;
         _loc8_ = new ByteArray();
         _loc8_.writeObject(this._encodedData);
         _loc8_.compress();
         _loc11_;
         _loc11_;
         _loc1_.§_-kn§("file",_loc8_,"file");
         _loc11_;
         _loc11_;
         if(this.iconLoaded)
         {
            _loc11_;
            _loc1_.§_-kn§("thumbnail",§_-h4§.§_-hz§(this.§_-mE§),"thumbnail");
         }
         _loc1_.addEventListener(§_-E6§.§_-tI§,this.§_-j0§);
         _loc11_;
         _loc11_;
         this.§_-5g§.connection.§_-P3§(_loc1_);
      }
      
      private function §_-mx§(param1:Boolean) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.§_-66§ = [];
         this.§_-wM§ = param1;
         _loc3_;
         _loc3_;
         if(param1)
         {
            this._encodedData = this._data;
            this.§_-Ee§(this,"_encodedData");
         }
         else
         {
            this.§_-Ee§(this,"_data");
         }
         this.§_-1o§();
      }
      
      private function §_-Ee§(param1:Object, param2:String) : void
      {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc4_:* = false;
         var _loc6_:* = false;
         var _loc7_:String = null;
         var _loc3_:Object = param1[param2];
         try
         {
            _loc11_;
            _loc11_;
            if(this.§_-wM§)
            {
               _loc11_;
               _loc11_;
               _loc4_ = _loc3_ is BitmapData;
               _loc11_;
               _loc11_;
            }
            else
            {
               _loc4_ = _loc3_.type == "__bitmap";
            }
         }
         catch(error:*)
         {
         }
         var _loc5_:Object = _loc3_;
         _loc10_;
         _loc10_;
         _loc6_ = _loc3_ is ByteArray;
         if(_loc4_)
         {
            this.§_-66§.push({
               "parent":param1,
               "property":param2
            });
            _loc10_;
         }
         else
         {
            _loc11_;
            _loc11_;
            if(typeof _loc3_ == "object" && !_loc6_)
            {
               _loc10_;
               _loc10_;
               if(this.§_-wM§)
               {
                  if(_loc3_ is Array)
                  {
                     _loc5_ = [];
                     _loc11_;
                  }
                  else
                  {
                     _loc5_ = {};
                  }
                  _loc11_;
                  _loc11_;
                  _loc10_;
                  for(_loc7_ in _loc3_)
                  {
                     _loc10_;
                     _loc10_;
                     _loc5_[_loc7_] = _loc3_[_loc7_];
                  }
                  _loc11_;
                  param1[param2] = _loc5_;
               }
               _loc10_;
               _loc10_;
               _loc10_;
               for(_loc7_ in _loc5_)
               {
                  _loc10_;
                  _loc10_;
                  this.§_-Ee§(_loc5_,_loc7_);
               }
            }
         }
      }
      
      private function §_-1o§() : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:Object = null;
         _loc6_;
         _loc6_;
         if(!this.§_-66§.length)
         {
            if(this.§_-wM§)
            {
               _loc7_;
               this.§_-dx§();
               _loc7_;
            }
            else
            {
               this.§_-bd§ = true;
               this.§_-to§();
            }
            return;
         }
         var _loc1_:Object = this.§_-66§.pop();
         var _loc2_:Object = _loc1_.parent;
         var _loc3_:String = _loc1_.property;
         var _loc4_:Object = _loc2_[_loc3_];
         _loc6_;
         _loc6_;
         if(this.§_-wM§)
         {
            _loc5_ = {
               "type":"__bitmap",
               "width":_loc4_.width,
               "height":_loc4_.height,
               "transparent":_loc4_.transparent
            };
            _loc7_;
            _loc7_;
            _loc2_[_loc3_] = _loc5_;
            _loc6_;
            _loc6_;
            _loc5_.data = new ByteArray();
            _loc6_;
            _loc6_;
            _loc5_.data.writeBytes(_loc4_.getPixels(_loc4_.rect));
            _loc6_;
            _loc5_.data.position = 0;
            _loc6_;
            _loc6_;
         }
         else
         {
            _loc5_ = new BitmapData(_loc4_.width,_loc4_.height,_loc4_.transparent);
            _loc5_.setPixels(_loc5_.rect,_loc4_.data);
            _loc6_;
            _loc6_;
            _loc2_[_loc3_] = _loc5_;
         }
         if(this.§_-wM§)
         {
            this.§_-1o§();
            return;
         }
         this.§_-1o§();
      }
      
      private function §_-lm§(param1:§_-E6§) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc2_;
         _loc3_;
         _loc3_;
         if(!param1.success && (this.§_-EF§.url))
         {
            _loc3_;
            §_-tz§.§_-pg§("Unable to load the icon for this save file.");
            _loc3_;
         }
         this.§_-EF§.removeEventListener(§_-E6§.§_-K6§,this.§_-lm§);
         _loc2_;
         this.§_-to§();
      }
      
      private function §_-to§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc1_;
         if((this.§_-bd§) && (this.iconLoaded))
         {
            _loc2_;
            §_-tz§.§_-Lq§("Data loaded.");
            _loc2_;
            dispatchEvent(new §_-E6§(§_-E6§.§var§,this));
         }
      }
      
      private function §_-uP§(param1:*) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         _loc5_;
         var byteArray:ByteArray = null;
         _loc5_;
         var data:* = param1;
         try
         {
            _loc4_;
            _loc4_;
            if(data)
            {
               _loc4_;
               _loc4_;
               byteArray = data;
               _loc5_;
               _loc5_;
               byteArray.uncompress();
               _loc5_;
               this._data = byteArray.readObject();
               _loc5_;
               this.§_-mx§(false);
            }
         }
         catch(error:Error)
         {
            §_-tz§.logError("Error while loading data:",error);
            if(_loc5_)
            {
               dispatchEvent(new §_-E6§(§_-E6§.§var§,this,§_-E6§.§_-zx§));
            }
         }
      }
      
      private function §_-I2§(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         §_-tz§.logError("Unable to load data:",param1);
         _loc2_;
         dispatchEvent(new §_-E6§(§_-E6§.§var§,this,§_-E6§.§_-zx§));
      }
      
      private function §_-j0§(param1:§_-E6§) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.success)
         {
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            §_-tz§.§_-Lq§("File \"" + this._name + "\" saved!");
            _loc3_;
            if(param1.data)
            {
               _loc3_;
               this.§_-C7§ = param1.data.save_id;
               this.§_-un§ = unescape(param1.data.file_url);
            }
            dispatchEvent(new §_-E6§(§_-E6§.§_-Mh§,this));
            _loc3_;
         }
         else
         {
            _loc3_;
            _loc2_;
            _loc2_;
            _loc3_;
            §_-tz§.logError("Error saving file \"" + this._name + "\":",param1.error);
            dispatchEvent(new §_-E6§(§_-E6§.§_-Mh§,this,param1.error));
         }
      }
      
      public function §_-z2§(param1:String, param2:Number) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:§_-yV§ = this.§_-5g§.§_-TX§(param1);
         if(!_loc3_)
         {
            _loc4_;
            _loc4_;
            _loc5_;
            _loc4_;
            §_-tz§.logError("No save rating named \"" + param1 + "\" exists for this save group.");
            _loc5_;
            _loc5_;
            dispatchEvent(new §_-E6§(§_-E6§.§_-pi§,{},§_-E6§.§_-2z§));
            return;
         }
         _loc5_;
         var param2:Number = _loc3_.§_-d7§(param2);
         _loc5_;
         if(isNaN(param2))
         {
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            _loc4_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            §_-tz§.logError("Invalid vote (" + param2 + "). " + param1 + " allows a range of " + _loc3_.§_-SD§ + "-" + _loc3_.§_-Vo§ + ".");
            dispatchEvent(new §_-E6§(§_-E6§.§_-pi§,{},§_-E6§.§_-2z§));
            return;
         }
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         §_-tz§.§_-Lq§("Voting " + param2 + " for " + param1 + " on " + this._name + "...");
         this.§_-5g§.connection.§_-lu§("rateSaveFile",this.§_-Es§,null,{
            "group":this.§_-5g§.id,
            "save_id":this.§_-C7§,
            "rating_id":_loc3_.id,
            "vote":param2
         });
      }
      
      private function §_-Es§(param1:§_-E6§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:§_-yV§ = null;
         _loc4_;
         var _loc2_:String = param1.error;
         _loc4_;
         if(param1.data.already_voted)
         {
            _loc4_;
            _loc4_;
            §_-tz§.logError("Vote failed. You\'ve already voted on this rating today.");
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc2_ = §_-E6§.§_-9b§;
            _loc4_;
         }
         if(_loc2_ == §_-E6§.§_-fJ§)
         {
            _loc4_;
            _loc3_ = this.§_-5g§.§_-Zc§(param1.data.rating_id);
            _loc4_;
            if(_loc3_)
            {
               _loc5_;
               this.§_-9X§[_loc3_.name] = _loc3_.§_-d7§(param1.data.score);
               _loc5_;
               _loc5_;
            }
            §_-tz§.§_-Lq§("Vote complete!");
         }
         dispatchEvent(new §_-E6§(§_-E6§.§_-pi§,this,_loc2_));
      }
      
      private function §_-MB§(param1:§_-E6§) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         if(param1.success)
         {
            _loc3_;
            this.§_-C7§ = 0;
            _loc3_;
            _loc3_;
         }
         dispatchEvent(new §_-E6§(§_-E6§.§_-Ha§,this,param1.error));
      }
      
      public function clone() : §_-IH§
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:String = null;
         var _loc1_:§_-IH§ = new §_-IH§(this.§_-5g§);
         _loc6_;
         _loc1_._data = this._data;
         _loc6_;
         _loc6_;
         _loc1_.§_-Oa§ = this.§_-Oa§;
         _loc5_;
         _loc5_;
         _loc1_.§_-Dw§ = this.§_-Dw§;
         _loc6_;
         _loc6_;
         _loc1_.§_-N1§ = this.§_-N1§;
         _loc6_;
         _loc1_.§_-EF§.bitmapData = this.§_-EF§.bitmapData;
         while(true)
         {
            _loc6_;
            for(_loc2_ in this.§_-qy§)
            {
               _loc6_;
               _loc6_;
               _loc1_.§_-qy§[_loc2_] = this.§_-qy§[_loc2_];
            }
            break;
         }
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc5_;
         _loc5_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         while(true)
         {
            _loc6_;
            for(_loc2_ in this.§_-9X§)
            {
               _loc5_;
               _loc1_.§_-9X§[_loc2_] = this.§_-9X§[_loc2_];
            }
            break;
         }
         _loc5_;
         _loc6_;
         _loc6_;
         _loc5_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         for(_loc2_ in this.§_-9H§)
         {
            _loc5_;
            _loc1_.§_-9H§[_loc2_] = this.§_-9H§[_loc2_];
         }
         _loc6_;
         _loc6_;
         _loc1_._name = this._name;
         return _loc1_;
      }
      
      private var §_-qq§:URLLoader;
      
      public function load() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         §_-JU§ = this;
         this.§_-bd§ = false;
         this._data = null;
         if(!this.iconLoaded)
         {
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            this.§_-EF§.addEventListener(§_-E6§.§_-K6§,this.§_-lm§);
            _loc2_;
            _loc2_;
            this.§_-EF§.load();
            _loc1_;
            _loc1_;
         }
         this.§_-qq§ = new URLLoader();
         _loc1_;
         _loc1_;
         this.§_-qq§.dataFormat = URLLoaderDataFormat.BINARY;
         _loc2_;
         _loc2_;
         this.§_-qq§.addEventListener(Event.COMPLETE,this.as3DataLoaded);
         _loc2_;
         _loc2_;
         this.§_-qq§.addEventListener(IOErrorEvent.IO_ERROR,this.as3DataError);
         _loc2_;
         this.§_-qq§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.as3DataError);
         this.§_-qq§.load(new URLRequest(this.§_-un§ + "&random=" + Math.random()));
      }
      
      private function as3DataLoaded(param1:Event) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.§_-uP§(this.§_-qq§.data);
      }
      
      private function as3DataError(param1:Event) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.§_-I2§(param1.toString());
      }
      
      private function § true§(param1:Object) : Object
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:BitmapData = null;
         var _loc3_:String = null;
         _loc7_;
         _loc7_;
         if(getQualifiedClassName(param1) == "Object")
         {
            _loc6_;
            if(param1.type == "__bitmap")
            {
               _loc2_ = new BitmapData(param1.width,param1.height,param1.transparent);
               _loc7_;
               _loc7_;
               _loc2_.setPixels(_loc2_.rect,param1.data);
               var param1:Object = _loc2_;
            }
            else
            {
               for(_loc3_ in param1)
               {
                  _loc7_;
                  _loc7_;
                  param1[_loc3_] = this.§ true§(param1[_loc3_]);
               }
            }
         }
         return param1;
      }
   }
}
