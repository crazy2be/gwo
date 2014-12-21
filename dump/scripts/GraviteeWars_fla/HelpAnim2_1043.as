package GraviteeWars_fla
{
   import flash.geom.*;
   import adobe.utils.*;
   import flash.accessibility.*;
   import flash.desktop.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.filters.*;
   import flash.globalization.*;
   import flash.media.*;
   import flash.net.*;
   import flash.net.drm.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.sampler.*;
   import flash.sensors.*;
   import flash.system.*;
   import flash.text.*;
   import flash.text.ime.*;
   import flash.text.engine.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   
   public dynamic class HelpAnim2_1043 extends MovieClip
   {
      
      public function HelpAnim2_1043()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         super();
         _loc2_;
         addFrameScript(0,this.frame1,51,this.frame52,77,this.frame78,92,this.frame93,209,this.frame210,259,this.frame260);
      }
      
      public var unit1aim:§_-R8§;
      
      public var unit1:§_-w5§;
      
      public var unit2fly:§_-pI§;
      
      public var unit2:§_-w5§;
      
      public var ct:ColorTransform;
      
      public var unit2Head;
      
      public var unit2Body;
      
      public var unit2Hand1;
      
      public var unit2Hand2;
      
      public var unit2Foot1;
      
      public var unit2Foot2;
      
      function frame1() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.unit1.head.addChild(new HeadClip0());
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         this.unit1.body.addChild(new BodyClip1());
         _loc1_;
         _loc1_;
         this.unit1.lefthand.addChild(new HandClip1());
         _loc2_;
         this.unit1.righthand.addChild(new HandClip1());
         _loc1_;
         _loc1_;
         _loc1_;
         this.unit1.leftfoot.addChild(new FootClip1());
         this.unit1.rightfoot.addChild(new FootClip1());
         _loc1_;
         this.ct = new ColorTransform();
         this.ct.color = 39423;
         _loc2_;
         this.unit2Head = new HeadClip0();
         this.unit2Head.inside.transform.colorTransform = this.ct;
         this.unit2Body = new BodyClip1();
         _loc2_;
         this.unit2Body.inside.transform.colorTransform = this.ct;
         this.unit2Hand1 = new HandClip1();
         this.unit2Hand1.inside.transform.colorTransform = this.ct;
         _loc1_;
         this.unit2Hand2 = new HandClip1();
         _loc1_;
         _loc1_;
         this.unit2Hand2.inside.transform.colorTransform = this.ct;
         this.unit2Foot1 = new FootClip1();
         _loc2_;
         this.unit2Foot1.inside.transform.colorTransform = this.ct;
         this.unit2Foot2 = new FootClip1();
         this.unit2Foot2.inside.transform.colorTransform = this.ct;
         _loc1_;
         _loc1_;
         this.unit2.head.addChild(this.unit2Head);
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         this.unit2.body.addChild(this.unit2Body);
         _loc2_;
         _loc2_;
         _loc2_;
         this.unit2.lefthand.addChild(this.unit2Hand1);
         _loc2_;
         _loc2_;
         this.unit2.righthand.addChild(this.unit2Hand2);
         _loc1_;
         _loc2_;
         _loc2_;
         this.unit2.leftfoot.addChild(this.unit2Foot1);
         _loc2_;
         this.unit2.rightfoot.addChild(this.unit2Foot2);
      }
      
      function frame52() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         this.unit1aim.body.addChild(new BodyClip1());
         _loc1_;
         _loc1_;
         _loc1_;
         this.unit1aim.leftfoot.addChild(new FootClip1());
         _loc2_;
         _loc1_;
         _loc1_;
         this.unit1aim.rightfoot.addChild(new FootClip1());
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         this.unit1aim.gotoAndStop(14);
         _loc1_;
         _loc1_;
         this.unit1aim.head.addChild(new HeadClip0());
      }
      
      function frame78() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc2_;
         this.unit1.head.addChild(new HeadClip0());
         _loc1_;
         _loc1_;
         this.unit1.body.addChild(new BodyClip1());
         _loc1_;
         _loc1_;
         this.unit1.lefthand.addChild(new HandClip1());
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         this.unit1.righthand.addChild(new HandClip1());
         _loc1_;
         _loc1_;
         this.unit1.leftfoot.addChild(new FootClip1());
         this.unit1.rightfoot.addChild(new FootClip1());
      }
      
      function frame93() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.unit2fly.head.addChild(this.unit2Head);
         _loc1_;
         _loc1_;
         _loc2_;
         this.unit2fly.body.addChild(this.unit2Body);
         _loc1_;
         _loc2_;
         _loc2_;
         this.unit2fly.lefthand.addChild(this.unit2Hand1);
         _loc1_;
         this.unit2fly.righthand.addChild(this.unit2Hand2);
         _loc1_;
         _loc1_;
         this.unit2fly.leftfoot.addChild(this.unit2Foot1);
         _loc2_;
         _loc2_;
         this.unit2fly.rightfoot.addChild(this.unit2Foot2);
      }
      
      function frame210() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.unit1aim.body.addChild(new BodyClip1());
         _loc1_;
         _loc1_;
         _loc2_;
         this.unit1aim.leftfoot.addChild(new FootClip1());
         _loc2_;
         _loc2_;
         this.unit1aim.rightfoot.addChild(new FootClip1());
         _loc1_;
         _loc1_;
         this.unit1aim.gotoAndStop(14);
         _loc2_;
         _loc2_;
         this.unit1aim.head.addChild(new HeadClip0());
      }
      
      function frame260() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         _loc1_;
         this.unit1.head.addChild(new HeadClip0());
         _loc1_;
         _loc1_;
         _loc2_;
         this.unit1.body.addChild(new BodyClip1());
         _loc1_;
         _loc1_;
         this.unit1.lefthand.addChild(new HandClip1());
         _loc1_;
         _loc1_;
         this.unit1.righthand.addChild(new HandClip1());
         _loc2_;
         _loc2_;
         this.unit1.leftfoot.addChild(new FootClip1());
         this.unit1.rightfoot.addChild(new FootClip1());
      }
   }
}
