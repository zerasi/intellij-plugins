package com.intellij.flex.uiDesigner {
import flash.display.DisplayObject;
import flash.display.Sprite;
import flash.system.ApplicationDomain;
import flash.system.LoaderContext;

public final class LoaderContentParentAdobePleaseDoNextStep extends Sprite {
  private static const instance:LoaderContentParentAdobePleaseDoNextStep = new LoaderContentParentAdobePleaseDoNextStep();

  public static function createEntirelySeparated():LoaderContext {
    var context:LoaderContext = new LoaderContext(false, new ApplicationDomain());
    configureContext(context);
    context.allowCodeImport = true;
    return context;
  }

  public static function create(applicationDomain:ApplicationDomain = null):LoaderContext {
    var context:LoaderContext = new LoaderContext(false, applicationDomain);
    configureContext(context);
    context.allowCodeImport = true;
    return context;
  }

  public static function configureContext(context:LoaderContext):void {
    context.requestedContentParent = instance;
  }

  override public function addChild(child:DisplayObject):DisplayObject {
    return child;
  }

  override public function addChildAt(child:DisplayObject, index:int):DisplayObject {
    return child;
  }

  override public function removeChildAt(index:int):DisplayObject {
    return null;
  }

  override public function removeChild(child:DisplayObject):DisplayObject {
    return child;
  }
}
}