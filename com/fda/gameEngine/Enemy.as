﻿package com.fda.gameEngine{	import flash.display.MovieClip;	import flash.events.Event;		public class Enemy extends MovieClip	{		public var enemySpeed:Number = 0;				public function Enemy()		{			init();		}				public function init():void		{			this.x = stage.stageWidth + 1000;			this.y = Math.round(Math.random()*stage.stageHeight);			enemySpeed = Math.round(Math.random()*10)+5;		}				public function update():void		{			this.x -= enemySpeed;						if(this.x < 0 - this.width)			{				resetEnemy();				return;			}		}				public function resetEnemy():void		{			init();		}	}}