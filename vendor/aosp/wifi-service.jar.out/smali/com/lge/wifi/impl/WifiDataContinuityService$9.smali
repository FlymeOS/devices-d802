.class Lcom/lge/wifi/impl/WifiDataContinuityService$9;
.super Landroid/database/ContentObserver;
.source "WifiDataContinuityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wifi/impl/WifiDataContinuityService;->registerForDualConnectionSettingChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/WifiDataContinuityService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 673
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$9;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 676
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$9;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    # getter for: Lcom/lge/wifi/impl/WifiDataContinuityService;->mDataConinuityHandler:Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;
    invoke-static {v0}, Lcom/lge/wifi/impl/WifiDataContinuityService;->access$200(Lcom/lge/wifi/impl/WifiDataContinuityService;)Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$9;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    # getter for: Lcom/lge/wifi/impl/WifiDataContinuityService;->mDataConinuityHandler:Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiDataContinuityService;->access$200(Lcom/lge/wifi/impl/WifiDataContinuityService;)Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/wifi/impl/WifiDataContinuityService$DataContinuityHandler;->sendMessage(Landroid/os/Message;)Z

    .line 679
    const-string v0, "WifiDataContinuityService"

    const-string v1, "registerForDualConnectionSettingChange onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    return-void
.end method
