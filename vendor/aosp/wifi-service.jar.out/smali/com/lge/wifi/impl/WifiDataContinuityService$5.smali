.class Lcom/lge/wifi/impl/WifiDataContinuityService$5;
.super Ljava/lang/Object;
.source "WifiDataContinuityService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wifi/impl/WifiDataContinuityService;->showMultipleNetworkConnectionPopup()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/WifiDataContinuityService;)V
    .locals 0

    .prologue
    .line 536
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$5;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x1

    .line 539
    if-ne p2, v3, :cond_0

    .line 540
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 541
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$5;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    # getter for: Lcom/lge/wifi/impl/WifiDataContinuityService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiDataContinuityService;->access$300(Lcom/lge/wifi/impl/WifiDataContinuityService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_multiple_connection_popup"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 542
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$5;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    # getter for: Lcom/lge/wifi/impl/WifiDataContinuityService;->mDataConinuityHandler:Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiDataContinuityService;->access$200(Lcom/lge/wifi/impl/WifiDataContinuityService;)Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$5;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    # getter for: Lcom/lge/wifi/impl/WifiDataContinuityService;->mDataConinuityHandler:Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;
    invoke-static {v2}, Lcom/lge/wifi/impl/WifiDataContinuityService;->access$200(Lcom/lge/wifi/impl/WifiDataContinuityService;)Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;->sendMessage(Landroid/os/Message;)Z

    .line 546
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
