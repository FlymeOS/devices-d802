.class Lcom/lge/wifi/impl/mobilehotspot/MHPService$DhcpRestartThread;
.super Ljava/lang/Thread;
.source "MHPService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/mobilehotspot/MHPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpRestartThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)V
    .locals 0

    .prologue
    .line 828
    iput-object p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DhcpRestartThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 834
    :try_start_0
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DhcpRestartThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->dhcpDisable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 836
    const-wide/16 v2, 0x64

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 840
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DhcpRestartThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->dhcpEnable(Z)Z

    .line 844
    :goto_1
    return-void

    .line 837
    :catch_0
    move-exception v0

    .line 838
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 841
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 842
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
