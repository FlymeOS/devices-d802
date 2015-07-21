.class Lcom/android/server/wifi/WifiServiceImplEx$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImplEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiServiceImplEx;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImplEx;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImplEx;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImplEx$1;->this$0:Lcom/android/server/wifi/WifiServiceImplEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx$1;->this$0:Lcom/android/server/wifi/WifiServiceImplEx;

    # getter for: Lcom/android/server/wifi/WifiServiceImplEx;->mWifiServerServiceExt:Lcom/lge/wifi/extension/IWifiServerServiceExt;
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImplEx;->access$000(Lcom/android/server/wifi/WifiServiceImplEx;)Lcom/lge/wifi/extension/IWifiServerServiceExt;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lge/wifi/extension/IWifiServerServiceExt;->handleCMCCEvent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 162
    return-void
.end method
