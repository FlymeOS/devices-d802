.class Lcom/lge/wifi/impl/aggregation/WiFiAggregationService$WifiServiceHandler;
.super Landroid/os/Handler;
.source "WiFiAggregationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;


# direct methods
.method private constructor <init>(Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;)V
    .locals 0

    .prologue
    .line 700
    iput-object p1, p0, Lcom/lge/wifi/impl/aggregation/WiFiAggregationService$WifiServiceHandler;->this$0:Lcom/lge/wifi/impl/aggregation/WiFiAggregationService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 703
    iget v0, p1, Landroid/os/Message;->what:I

    .line 709
    return-void
.end method
