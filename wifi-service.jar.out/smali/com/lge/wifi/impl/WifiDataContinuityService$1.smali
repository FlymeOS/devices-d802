.class Lcom/lge/wifi/impl/WifiDataContinuityService$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiDataContinuityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/WifiDataContinuityService;
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
    .line 222
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$1;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiDataContinuityService$1;->this$0:Lcom/lge/wifi/impl/WifiDataContinuityService;

    # invokes: Lcom/lge/wifi/impl/WifiDataContinuityService;->handleIntentAction(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/lge/wifi/impl/WifiDataContinuityService;->access$000(Lcom/lge/wifi/impl/WifiDataContinuityService;Landroid/content/Intent;)V

    .line 226
    return-void
.end method
