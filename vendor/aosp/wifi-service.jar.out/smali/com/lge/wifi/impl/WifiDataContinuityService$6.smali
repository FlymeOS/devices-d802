.class Lcom/lge/wifi/impl/WifiDataContinuityService$6;
.super Ljava/lang/Object;
.source "WifiDataContinuityService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 529
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$6;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 531
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$6;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    # getter for: Lcom/lge/wifi/impl/WifiDataContinuityService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/wifi/impl/WifiDataContinuityService;->access$300(Lcom/lge/wifi/impl/WifiDataContinuityService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_multiple_connection_popup"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 532
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$6;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    # getter for: Lcom/lge/wifi/impl/WifiDataContinuityService;->mDataConinuityHandler:Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;
    invoke-static {v0}, Lcom/lge/wifi/impl/WifiDataContinuityService;->access$200(Lcom/lge/wifi/impl/WifiDataContinuityService;)Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$6;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    # getter for: Lcom/lge/wifi/impl/WifiDataContinuityService;->mDataConinuityHandler:Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiDataContinuityService;->access$200(Lcom/lge/wifi/impl/WifiDataContinuityService;)Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;->sendMessage(Landroid/os/Message;)Z

    .line 534
    return-void
.end method
