package §_-nI§
{
   import flash.display.BitmapData;
   import flash.display.IBitmapDrawable;
   import flash.geom.Rectangle;
   import flash.display.DisplayObject;
   import flash.geom.Matrix;
   import flash.display.Sprite;
   import flash.display.DisplayObjectContainer;
   import flash.utils.ByteArray;
   import §_-RO§.§_-7k§;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.utils.getQualifiedClassName;
   
   public class §_-MO§ extends §_-kM§
   {
      
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc2_;
         _loc2_;
      }
      
      public function §_-MO§(param1:§_-Iy§)
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.§_-T6§ = new §_-6s§(§_-Op§,null);
         _loc3_;
         _loc3_;
         this.§_-97§ = param1;
         _loc3_;
         this.§_-av§ = {};
         this.§_-vL§ = {};
         this.§_-xT§ = {};
      }
      
      public static const §_-jY§:uint = 90;
      
      public static const §_-xY§:uint = 90;
      
      public static const §_-Op§:BitmapData = new BitmapData(§_-jY§,§_-xY§,false,0);
      
      private static var §_-b1§:§_-MO§;
      
      public static function get §_-s0§() : §_-MO§
      {
         return §_-b1§;
      }
      
      private static const §_-jC§:uint = 0;
      
      private static const §_-jH§:uint = 1;
      
      private static const §for§:uint = 2;
      
      private static const §_-Wb§:uint = 3;
      
      static var §_-Q-§:String = "";
      
      static var §_-8j§:String = "";
      
      static function §_-ti§(param1:§_-Iy§, param2:Object) : §_-MO§
      {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:§_-au§ = null;
         var _loc7_:§_-b7§ = null;
         var _loc3_:§_-MO§ = new §_-MO§(param1);
         _loc11_;
         _loc3_._name = param2.filename;
         _loc3_.§_-IO§ = param2.description;
         _loc11_;
         _loc11_;
         _loc3_.§_-Ee§ = param2.save_id;
         _loc10_;
         _loc10_;
         _loc3_.§_-h8§ = param2.user_id;
         _loc3_.§_-fB§ = param2.user_name;
         _loc10_;
         _loc10_;
         _loc3_.§_-uT§ = param2.created;
         _loc11_;
         _loc11_;
         _loc3_.§_-IX§ = param2.last_update;
         _loc3_.§_-1V§ = param2.views;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc11_;
         if((param2.thumb) && !(param2.thumb == ""))
         {
            _loc11_;
            _loc3_.§_-T6§.url = §_-Q-§ + param2.thumb;
         }
         _loc3_.§_-Sd§ = §_-8j§ + param2.file;
         _loc3_.§_-O2§ = param2.file_size;
         _loc11_;
         _loc11_;
         _loc3_.§_-QT§ = !(param2.status == §for§);
         _loc11_;
         _loc11_;
         _loc3_.§_-BX§ = false;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc10_;
         _loc10_;
         _loc3_.§_-7A§ = !(param2.status == §_-jC§) && !(param2.status == §for§);
         while(true)
         {
            _loc10_;
            for each(_loc4_ in param2.keys)
            {
               _loc6_ = param1.§_-pF§(_loc4_.id);
               if(_loc6_)
               {
                  _loc11_;
                  _loc3_.§_-av§[_loc6_.name] = _loc6_.§_-M5§(_loc4_.value);
               }
            }
            break;
         }
         _loc11_;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc10_;
         for each(_loc5_ in param2.ratings)
         {
            _loc7_ = param1.§_-Bi§(_loc5_.id);
            if(_loc7_)
            {
               _loc10_;
               _loc10_;
               _loc3_.§_-vL§[_loc7_.name] = _loc7_.§_-M5§(_loc5_.score);
               _loc11_;
               _loc3_.§_-xT§[_loc7_.name] = int(_loc5_.votes);
            }
         }
         return _loc3_;
      }
      
      private var §_-97§:§_-Iy§;
      
      private var _name:String;
      
      private var §_-Ee§:uint;
      
      private var §_-IO§:String;
      
      private var §_-h8§:uint;
      
      private var §_-fB§:String;
      
      private var §_-uT§:String;
      
      private var §_-IX§:String;
      
      private var §_-1V§:uint;
      
      private var §_-BX§:Boolean;
      
      private var §_-7A§:Boolean;
      
      private var §_-QT§:Boolean;
      
      private var §_-VJ§:Boolean;
      
      private var §_-T6§:§_-6s§;
      
      private var §_-av§:Object;
      
      private var §_-vL§:Object;
      
      private var §_-xT§:Object;
      
      private var §_-Sd§:String;
      
      private var _data;
      
      private var §_-00§:Boolean;
      
      private var _encodedData;
      
      private var §_-jW§:Array;
      
      private var §_-No§:Boolean;
      
      private var §_-oJ§:Object;
      
      private var §_-UX§:String;
      
      private var §_-O2§:uint;
      
      public function get group() : §_-Iy§
      {
         return this.§_-97§;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.§_-IO§;
      }
      
      public function set description(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-IO§ = param1;
      }
      
      public function get id() : uint
      {
         return this.§_-Ee§;
      }
      
      public function get data() : Object
      {
         return this._data;
      }
      
      public function set data(param1:Object) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this._data = param1;
      }
      
      public function get bytesLoaded() : uint
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         if(this._data)
         {
            _loc2_;
            _loc2_;
            return this.bytesTotal;
         }
         if(!this.§_-gD§)
         {
            _loc2_;
            return 0;
         }
         return this.§_-gD§.bytesLoaded;
      }
      
      public function get bytesTotal() : uint
      {
         return this.§_-O2§;
      }
      
      public function get §_-Cc§() : Boolean
      {
         return this.§_-BX§;
      }
      
      public function get draft() : Boolean
      {
         return this.§_-VJ§;
      }
      
      public function set draft(param1:Boolean) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-VJ§ = param1;
      }
      
      public function get authorId() : uint
      {
         return this.§_-h8§;
      }
      
      public function get authorName() : String
      {
         return this.§_-fB§;
      }
      
      public function get keys() : Object
      {
         return this.§_-av§;
      }
      
      public function get ratings() : Object
      {
         return this.§_-vL§;
      }
      
      public function get §_-pi§() : Object
      {
         return this.§_-xT§;
      }
      
      public function get views() : uint
      {
         return this.§_-1V§;
      }
      
      public function get §_-dj§() : String
      {
         return this.§_-uT§;
      }
      
      public function get §_-Mv§() : String
      {
         return this.§_-IX§;
      }
      
      override public function toString() : String
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         return "Save File: " + this._name;
      }
      
      public function get §_-jK§() : BitmapData
      {
         return this.§_-T6§.bitmapData;
      }
      
      public function set §_-jK§(param1:BitmapData) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.§_-t8§(param1);
      }
      
      public function get iconLoaded() : Boolean
      {
         return this.§_-T6§.loaded;
      }
      
      public function §_-t8§(param1:IBitmapDrawable) : void
      {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Rectangle = null;
         var _loc2_:BitmapData = new BitmapData(§_-jY§,§_-xY§,false,0);
         var _loc5_:Number = 0;
         var _loc6_:Number = 0;
         _loc10_;
         _loc10_;
         _loc10_;
         if(param1 is BitmapData)
         {
            _loc10_;
            _loc10_;
            _loc11_;
            _loc11_;
            _loc3_ = BitmapData(param1).width;
            _loc10_;
            _loc4_ = BitmapData(param1).height;
            _loc10_;
         }
         else if(param1 is DisplayObject)
         {
            _loc9_ = DisplayObject(param1).getBounds(null);
            _loc11_;
            _loc11_;
            _loc5_ = _loc9_.left;
            _loc10_;
            _loc10_;
            _loc6_ = _loc9_.top;
            _loc11_;
            _loc10_;
            _loc3_ = _loc9_.width;
            _loc10_;
            _loc10_;
            _loc4_ = _loc9_.height;
         }
         
         var _loc7_:Matrix = new Matrix();
         _loc8_ = Math.min(§_-jY§ / _loc3_,§_-xY§ / _loc4_);
         _loc11_;
         _loc7_.translate(-_loc5_,-_loc6_);
         _loc11_;
         _loc11_;
         _loc7_.scale(_loc8_,_loc8_);
         _loc7_.translate((§_-jY§ - _loc3_ * _loc8_) / 2,(§_-xY§ - _loc4_ * _loc8_) / 2);
         _loc2_.draw(param1,_loc7_);
         this.§_-T6§.bitmapData = _loc2_;
      }
      
      public function §_-cs§(param1:DisplayObjectContainer) : Sprite
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(this.§_-T6§)
         {
            _loc3_;
            return this.§_-T6§.§_-OM§(param1);
         }
         §_-NZ§.logError("No icon available for this sumbission.");
         return null;
      }
      
      public function §_-dF§() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!this.§_-97§.connection.§var §)
         {
            _loc3_;
            §_-NZ§.logError("The user must be logged-in to delete a file.");
            dispatchEvent(new §_-6O§(§_-6O§.§_-2q§,null,§_-6O§.§_-bp§));
            return;
         }
         if(!this.§_-Ee§)
         {
            §_-NZ§.logError("The file does not exist.");
            _loc3_;
            dispatchEvent(new §_-6O§(§_-6O§.§_-2q§,null,§_-6O§.§_-bp§));
            _loc3_;
            _loc3_;
            return;
         }
         var _loc1_:§_-u1§ = new §_-u1§("deleteSaveFile");
         _loc3_;
         _loc1_.§_-ap§.save_id = this.§_-Ee§;
         _loc2_;
         _loc1_.addEventListener(§_-6O§.§_-dE§,this.§_-tr§);
         _loc3_;
         _loc3_;
         this.§_-97§.connection.§_-2x§(_loc1_);
      }
      
      public function save() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!this.§_-97§.connection.§var §)
         {
            §_-NZ§.logError("The user must be logged-in to save a file.");
            _loc3_;
            dispatchEvent(new §_-6O§(§_-6O§.§_-EF§,null,§_-6O§.§_-bp§));
            return;
         }
         _loc3_;
         §_-6s§.§_-Mz§++;
         _loc3_;
         _loc3_;
         §_-b1§ = this;
         _loc3_;
         this.§_-BH§(true);
      }
      
      private function §_-qE§() : void
      {
         var _loc11_:* = true;
         var _loc12_:* = false;
         var _loc3_:String = null;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:§_-au§ = null;
         var _loc7_:§_-b7§ = null;
         var _loc8_:ByteArray = null;
         var _loc1_:§_-u1§ = new §_-u1§("saveFile");
         _loc1_.§_-ap§.group = this.§_-97§.id;
         _loc1_.§_-ap§.user_name = this.§_-97§.connection.username;
         _loc11_;
         _loc11_;
         _loc1_.§_-ap§.filename = this._name;
         _loc11_;
         _loc11_;
         _loc1_.§_-ap§.description = this.§_-IO§;
         _loc11_;
         if(this.§_-VJ§)
         {
            _loc1_.§_-ap§.draft = true;
         }
         _loc11_;
         _loc11_;
         if((this.§_-Ee§) && !this.§_-BX§)
         {
            _loc1_.§_-ap§.overwrite = 1;
            _loc1_.§_-ap§.save_id = this.§_-Ee§;
         }
         var _loc2_:Array = [];
         for(_loc3_ in this.§_-av§)
         {
            _loc6_ = this.§_-97§.getKey(_loc3_);
            if(_loc6_)
            {
               _loc12_;
               _loc2_.push({
                  "id":_loc6_.id,
                  "value":_loc6_.§_-M5§(this.§_-av§[_loc3_])
               });
               _loc11_;
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
               _loc12_;
               _loc12_;
               §_-NZ§.logError("No key named \"" + _loc3_ + "\" in save group \"" + this.§_-97§.name + "\".");
            }
         }
         _loc12_;
         _loc1_.§_-ap§.keys = _loc2_;
         _loc4_ = [];
         _loc11_;
         _loc11_;
         _loc12_;
         _loc12_;
         _loc12_;
         _loc12_;
         for(_loc5_ in this.§_-vL§)
         {
            _loc7_ = this.§_-97§.§_-UB§(_loc5_);
            if(_loc7_)
            {
               _loc12_;
               _loc12_;
               _loc4_.push({
                  "id":_loc7_.id,
                  "value":_loc7_.§_-M5§(this.§_-vL§[_loc5_])
               });
               _loc12_;
               _loc12_;
            }
            else
            {
               _loc12_;
               _loc12_;
               _loc11_;
               _loc11_;
               _loc12_;
               _loc12_;
               _loc11_;
               _loc12_;
               _loc12_;
               _loc11_;
               _loc11_;
               §_-NZ§.logError("No rating named \"" + _loc5_ + "\" in save group \"" + this.§_-97§.name + "\".");
            }
         }
         _loc11_;
         _loc1_.§_-ap§.ratings = _loc4_;
         _loc8_ = new ByteArray();
         _loc8_.writeObject(this._encodedData);
         _loc8_.compress();
         _loc11_;
         _loc1_.§_-6h§("file",_loc8_,"file");
         _loc11_;
         if(this.iconLoaded)
         {
            _loc12_;
            _loc1_.§_-6h§("thumbnail",§_-7k§.§_-R-§(this.§_-jK§),"thumbnail");
         }
         _loc1_.addEventListener(§_-6O§.§_-dE§,this.§_-TG§);
         this.§_-97§.connection.§_-2x§(_loc1_);
      }
      
      private function §_-BH§(param1:Boolean) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.§_-jW§ = [];
         this.§_-No§ = param1;
         _loc2_;
         _loc2_;
         if(param1)
         {
            _loc3_;
            this._encodedData = this._data;
            _loc3_;
            this.§_-kn§(this,"_encodedData");
         }
         else
         {
            this.§_-kn§(this,"_data");
            _loc2_;
            _loc2_;
         }
         this.§_-Gs§();
      }
      
      private function §_-kn§(param1:Object, param2:String) : void
      {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc4_:* = false;
         var _loc6_:* = false;
         var _loc7_:String = null;
         var _loc3_:Object = param1[param2];
         try
         {
            _loc10_;
            _loc10_;
            if(this.§_-No§)
            {
               _loc11_;
               _loc10_;
               _loc10_;
               _loc4_ = _loc3_ is BitmapData;
               _loc10_;
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
         _loc11_;
         _loc11_;
         _loc6_ = _loc3_ is ByteArray;
         if(_loc4_)
         {
            this.§_-jW§.push({
               "parent":param1,
               "property":param2
            });
         }
         else
         {
            _loc10_;
            _loc10_;
            if(typeof _loc3_ == "object" && !_loc6_)
            {
               _loc10_;
               _loc10_;
               if(this.§_-No§)
               {
                  if(_loc3_ is Array)
                  {
                     _loc10_;
                     _loc10_;
                     _loc5_ = [];
                     _loc10_;
                     _loc10_;
                  }
                  else
                  {
                     _loc5_ = {};
                  }
                  _loc11_;
                  _loc10_;
                  for(_loc7_ in _loc3_)
                  {
                     _loc10_;
                     _loc5_[_loc7_] = _loc3_[_loc7_];
                  }
                  _loc11_;
                  param1[param2] = _loc5_;
               }
               _loc10_;
               _loc11_;
               for(_loc7_ in _loc5_)
               {
                  _loc10_;
                  _loc10_;
                  this.§_-kn§(_loc5_,_loc7_);
               }
            }
         }
      }
      
      private function §_-Gs§() : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc5_:Object = null;
         _loc6_;
         if(!this.§_-jW§.length)
         {
            if(this.§_-No§)
            {
               _loc7_;
               _loc7_;
               this.§_-qE§();
               _loc7_;
            }
            else
            {
               this.§_-00§ = true;
               this.§_-vH§();
            }
            return;
         }
         var _loc1_:Object = this.§_-jW§.pop();
         var _loc2_:Object = _loc1_.parent;
         var _loc3_:String = _loc1_.property;
         var _loc4_:Object = _loc2_[_loc3_];
         _loc7_;
         if(this.§_-No§)
         {
            _loc5_ = {
               "type":"__bitmap",
               "width":_loc4_.width,
               "height":_loc4_.height,
               "transparent":_loc4_.transparent
            };
            _loc6_;
            _loc2_[_loc3_] = _loc5_;
            _loc6_;
            _loc6_;
            _loc5_.data = new ByteArray();
            _loc7_;
            _loc5_.data.writeBytes(_loc4_.getPixels(_loc4_.rect));
            _loc6_;
            _loc5_.data.position = 0;
            _loc7_;
            _loc7_;
         }
         else
         {
            _loc5_ = new BitmapData(_loc4_.width,_loc4_.height,_loc4_.transparent);
            _loc5_.setPixels(_loc5_.rect,_loc4_.data);
            _loc7_;
            _loc2_[_loc3_] = _loc5_;
         }
         if(this.§_-No§)
         {
            this.§_-Gs§();
            return;
         }
         this.§_-Gs§();
      }
      
      private function §_-tD§(param1:§_-6O§) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc3_;
         if(!param1.success && (this.§_-T6§.url))
         {
            _loc3_;
            §_-NZ§.§_-Q7§("Unable to load the icon for this save file.");
            _loc2_;
         }
         this.§_-T6§.removeEventListener(§_-6O§.§_-DV§,this.§_-tD§);
         _loc3_;
         this.§_-vH§();
      }
      
      private function §_-vH§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc2_;
         _loc2_;
         if((this.§_-00§) && (this.iconLoaded))
         {
            _loc2_;
            _loc2_;
            §_-NZ§.§_-Bv§("Data loaded.");
            _loc2_;
            dispatchEvent(new §_-6O§(§_-6O§.§_-dB§,this));
         }
      }
      
      private function §_-zY§(param1:*) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         _loc5_;
         var byteArray:ByteArray = null;
         _loc5_;
         var data:* = param1;
         try
         {
            _loc4_;
            if(data)
            {
               _loc5_;
               _loc4_;
               _loc4_;
               byteArray = data;
               _loc4_;
               byteArray.uncompress();
               _loc5_;
               this._data = byteArray.readObject();
               _loc4_;
               _loc4_;
               this.§_-BH§(false);
            }
         }
         catch(error:Error)
         {
            §_-NZ§.logError("Error while loading data:",error);
            if(_loc4_)
            {
               dispatchEvent(new §_-6O§(§_-6O§.§_-dB§,this,§_-6O§.§_-Ag§));
            }
         }
      }
      
      private function §_-t3§(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         §_-NZ§.logError("Unable to load data:",param1);
         _loc2_;
         _loc2_;
         dispatchEvent(new §_-6O§(§_-6O§.§_-dB§,this,§_-6O§.§_-Ag§));
      }
      
      private function §_-TG§(param1:§_-6O§) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.success)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            §_-NZ§.§_-Bv§("File \"" + this._name + "\" saved!");
            if(param1.data)
            {
               _loc3_;
               this.§_-Ee§ = param1.data.save_id;
               _loc3_;
               this.§_-Sd§ = unescape(param1.data.file_url);
               _loc3_;
               _loc3_;
            }
            dispatchEvent(new §_-6O§(§_-6O§.§_-EF§,this));
         }
         else
         {
            _loc2_;
            _loc2_;
            _loc2_;
            §_-NZ§.logError("Error saving file \"" + this._name + "\":",param1.error);
            _loc2_;
            dispatchEvent(new §_-6O§(§_-6O§.§_-EF§,this,param1.error));
         }
      }
      
      public function §_-0-M§(param1:String, param2:Number) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:§_-b7§ = this.§_-97§.§_-UB§(param1);
         if(!_loc3_)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            §_-NZ§.logError("No save rating named \"" + param1 + "\" exists for this save group.");
            dispatchEvent(new §_-6O§(§_-6O§.§_-yy§,{},§_-6O§.§_-gE§));
            return;
         }
         _loc4_;
         _loc4_;
         var param2:Number = _loc3_.§_-M5§(param2);
         _loc5_;
         _loc5_;
         if(isNaN(param2))
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            _loc5_;
            _loc4_;
            _loc4_;
            _loc5_;
            _loc4_;
            _loc5_;
            _loc5_;
            _loc5_;
            §_-NZ§.logError("Invalid vote (" + param2 + "). " + param1 + " allows a range of " + _loc3_.§_-Ym§ + "-" + _loc3_.§_-ZK§ + ".");
            dispatchEvent(new §_-6O§(§_-6O§.§_-yy§,{},§_-6O§.§_-gE§));
            return;
         }
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         §_-NZ§.§_-Bv§("Voting " + param2 + " for " + param1 + " on " + this._name + "...");
         this.§_-97§.connection.§_-PX§("rateSaveFile",this.§_-QG§,null,{
            "group":this.§_-97§.id,
            "save_id":this.§_-Ee§,
            "rating_id":_loc3_.id,
            "vote":param2
         });
      }
      
      private function §_-QG§(param1:§_-6O§) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:§_-b7§ = null;
         _loc5_;
         _loc5_;
         var _loc2_:String = param1.error;
         _loc4_;
         if(param1.data.already_voted)
         {
            _loc4_;
            §_-NZ§.logError("Vote failed. You\'ve already voted on this rating today.");
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            _loc5_;
            _loc2_ = §_-6O§.§_-Yx§;
            _loc4_;
         }
         if(_loc2_ == §_-6O§.§_-M3§)
         {
            _loc5_;
            _loc5_;
            _loc3_ = this.§_-97§.§_-Bi§(param1.data.rating_id);
            _loc4_;
            _loc4_;
            if(_loc3_)
            {
               _loc5_;
               _loc5_;
               this.§_-vL§[_loc3_.name] = _loc3_.§_-M5§(param1.data.score);
               _loc4_;
               _loc4_;
            }
            §_-NZ§.§_-Bv§("Vote complete!");
         }
         dispatchEvent(new §_-6O§(§_-6O§.§_-yy§,this,_loc2_));
      }
      
      private function §_-tr§(param1:§_-6O§) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         if(param1.success)
         {
            _loc3_;
            this.§_-Ee§ = 0;
            _loc2_;
            _loc2_;
         }
         dispatchEvent(new §_-6O§(§_-6O§.§_-2q§,this,param1.error));
      }
      
      public function clone() : §_-MO§
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:String = null;
         var _loc1_:§_-MO§ = new §_-MO§(this.§_-97§);
         _loc5_;
         _loc5_;
         _loc1_._data = this._data;
         _loc5_;
         _loc1_.§_-IO§ = this.§_-IO§;
         _loc5_;
         _loc1_.§_-VJ§ = this.§_-VJ§;
         _loc5_;
         _loc5_;
         _loc1_.§_-O2§ = this.§_-O2§;
         _loc6_;
         _loc6_;
         _loc1_.§_-T6§.bitmapData = this.§_-T6§.bitmapData;
         while(true)
         {
            _loc6_;
            for(_loc2_ in this.§_-av§)
            {
               _loc5_;
               _loc5_;
               _loc1_.§_-av§[_loc2_] = this.§_-av§[_loc2_];
            }
            break;
         }
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc6_;
         while(true)
         {
            _loc5_;
            _loc5_;
            for(_loc2_ in this.§_-vL§)
            {
               _loc5_;
               _loc1_.§_-vL§[_loc2_] = this.§_-vL§[_loc2_];
            }
            break;
         }
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc6_;
         _loc6_;
         _loc5_;
         for(_loc2_ in this.§_-xT§)
         {
            _loc5_;
            _loc1_.§_-xT§[_loc2_] = this.§_-xT§[_loc2_];
         }
         _loc6_;
         _loc1_._name = this._name;
         return _loc1_;
      }
      
      private var §_-gD§:URLLoader;
      
      public function load() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         §_-b1§ = this;
         _loc2_;
         this.§_-00§ = false;
         this._data = null;
         _loc2_;
         _loc2_;
         if(!this.iconLoaded)
         {
            _loc2_;
            _loc2_;
            _loc1_;
            this.§_-T6§.addEventListener(§_-6O§.§_-DV§,this.§_-tD§);
            _loc2_;
            _loc2_;
            this.§_-T6§.load();
            _loc2_;
            _loc2_;
         }
         this.§_-gD§ = new URLLoader();
         this.§_-gD§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§_-gD§.addEventListener(Event.COMPLETE,this.as3DataLoaded);
         this.§_-gD§.addEventListener(IOErrorEvent.IO_ERROR,this.as3DataError);
         this.§_-gD§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.as3DataError);
         this.§_-gD§.load(new URLRequest(this.§_-Sd§ + "&random=" + Math.random()));
      }
      
      private function as3DataLoaded(param1:Event) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.§_-zY§(this.§_-gD§.data);
      }
      
      private function as3DataError(param1:Event) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-t3§(param1.toString());
      }
      
      private function §_-7x§(param1:Object) : Object
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:BitmapData = null;
         var _loc3_:String = null;
         _loc6_;
         _loc6_;
         if(getQualifiedClassName(param1) == "Object")
         {
            _loc7_;
            if(param1.type == "__bitmap")
            {
               _loc2_ = new BitmapData(param1.width,param1.height,param1.transparent);
               _loc7_;
               _loc2_.setPixels(_loc2_.rect,param1.data);
               var param1:Object = _loc2_;
            }
            else
            {
               for(_loc3_ in param1)
               {
                  _loc6_;
                  _loc6_;
                  param1[_loc3_] = this.§_-7x§(param1[_loc3_]);
               }
            }
         }
         return param1;
      }
   }
}
