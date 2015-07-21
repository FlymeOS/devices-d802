.class Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$Scanner;
.super Ljava/lang/Thread;
.source "WiFiOffloadingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;


# direct methods
.method private constructor <init>(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)V
    .locals 0

    .prologue
    .line 765
    iput-object p1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$Scanner;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 769
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 770
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$Scanner;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    # setter for: Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mLooper:Landroid/os/Looper;
    invoke-static {v0, v1}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->access$602(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 771
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$Scanner;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    new-instance v1, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;

    iget-object v2, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$Scanner;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;-><init>(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$1;)V

    # setter for: Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->hScanner:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;
    invoke-static {v0, v1}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->access$702(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;)Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;

    .line 772
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 773
    return-void
.end method
