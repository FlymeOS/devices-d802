.class Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$1;
.super Landroid/content/BroadcastReceiver;
.source "WiFiOffloadingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$1;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$1;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    # invokes: Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->handleEvent(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->access$400(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;Landroid/content/Intent;)V

    .line 133
    return-void
.end method
