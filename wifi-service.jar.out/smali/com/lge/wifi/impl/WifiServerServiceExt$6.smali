.class Lcom/lge/wifi/impl/WifiServerServiceExt$6;
.super Landroid/database/ContentObserver;
.source "WifiServerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wifi/impl/WifiServerServiceExt;->registerForRSSIThreshold()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 5437
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$6;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v2, 0x0

    .line 5440
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$6;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # invokes: Lcom/lge/wifi/impl/WifiServerServiceExt;->sendDisconnectRssiLvl()V
    invoke-static {v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1200(Lcom/lge/wifi/impl/WifiServerServiceExt;)V

    .line 5442
    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->sIsMultiSim:Z
    invoke-static {}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5443
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$6;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data0"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mMobileDataEnable:I
    invoke-static {v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1402(I)I

    .line 5445
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$6;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data1"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    # |= operator for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mMobileDataEnable:I
    invoke-static {v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1476(I)I

    .line 5447
    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->sPhoneCount:I
    invoke-static {}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1500()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 5448
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$6;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data2"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    # |= operator for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mMobileDataEnable:I
    invoke-static {v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1476(I)I

    .line 5456
    :cond_0
    :goto_0
    const-string v0, "WifiServerServiceExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerForRSSIThreshold onChange threshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mSignalLevelThreshold:I
    invoke-static {}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1600()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mMobileDataEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mMobileDataEnable:I
    invoke-static {}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1400()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5458
    return-void

    .line 5452
    :cond_1
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$6;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mMobileDataEnable:I
    invoke-static {v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$1402(I)I

    goto :goto_0
.end method
