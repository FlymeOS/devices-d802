.class Lcom/lge/wifi/impl/aggregation/WiFiAggregationService$1;
.super Landroid/content/BroadcastReceiver;
.source "WiFiAggregationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService$1;->this$0:Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService$1;->this$0:Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;

    # invokes: Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->handleEvent(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;->access$000(Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;Landroid/content/Intent;)V

    .line 122
    return-void
.end method
