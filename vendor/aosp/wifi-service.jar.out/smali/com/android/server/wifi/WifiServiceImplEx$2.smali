.class Lcom/android/server/wifi/WifiServiceImplEx$2;
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
    .line 174
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImplEx$2;->this$0:Lcom/android/server/wifi/WifiServiceImplEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 177
    const-string v0, "WifiServiceImplEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HotspotProvision.STATE_CHANGED : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v0, "result"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 180
    const-string v0, "WifiServiceImplEx"

    const-string v1, "MOBILE HOTSPOT PROVISION OK."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx$2;->this$0:Lcom/android/server/wifi/WifiServiceImplEx;

    # setter for: Lcom/android/server/wifi/WifiServiceImplEx;->mIsProvisioned:Z
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiServiceImplEx;->access$102(Lcom/android/server/wifi/WifiServiceImplEx;Z)Z

    .line 186
    :goto_0
    return-void

    .line 183
    :cond_0
    const-string v0, "WifiServiceImplEx"

    const-string v1, "MOBILE HOTSPOT PROVISION Faile."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx$2;->this$0:Lcom/android/server/wifi/WifiServiceImplEx;

    # setter for: Lcom/android/server/wifi/WifiServiceImplEx;->mIsProvisioned:Z
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiServiceImplEx;->access$102(Lcom/android/server/wifi/WifiServiceImplEx;Z)Z

    goto :goto_0
.end method
