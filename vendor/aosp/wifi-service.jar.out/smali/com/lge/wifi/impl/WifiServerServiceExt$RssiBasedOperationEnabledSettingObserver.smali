.class Lcom/lge/wifi/impl/WifiServerServiceExt$RssiBasedOperationEnabledSettingObserver;
.super Landroid/database/ContentObserver;
.source "WifiServerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/WifiServerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RssiBasedOperationEnabledSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;


# direct methods
.method public constructor <init>(Lcom/lge/wifi/impl/WifiServerServiceExt;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 7877
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$RssiBasedOperationEnabledSettingObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    .line 7878
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 7879
    return-void
.end method

.method private getValue()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7897
    const-string v2, "WifiServerServiceExt"

    const-string v3, "RssiBasedOperationEnabledSettingObserver getValue"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7898
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$RssiBasedOperationEnabledSettingObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_rssi_based_op"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 7889
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 7890
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$RssiBasedOperationEnabledSettingObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt$RssiBasedOperationEnabledSettingObserver;->getValue()Z

    move-result v1

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mRssiBasedOperationEnabled:Z
    invoke-static {v0, v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$9702(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z

    .line 7891
    const-string v0, "WifiServerServiceExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange getValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$RssiBasedOperationEnabledSettingObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mRssiBasedOperationEnabled:Z
    invoke-static {v2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$9700(Lcom/lge/wifi/impl/WifiServerServiceExt;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7894
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    .line 7882
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$RssiBasedOperationEnabledSettingObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7883
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "wifi_rssi_based_op"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 7884
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$RssiBasedOperationEnabledSettingObserver;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    invoke-direct {p0}, Lcom/lge/wifi/impl/WifiServerServiceExt$RssiBasedOperationEnabledSettingObserver;->getValue()Z

    move-result v2

    # setter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mRssiBasedOperationEnabled:Z
    invoke-static {v1, v2}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$9702(Lcom/lge/wifi/impl/WifiServerServiceExt;Z)Z

    .line 7885
    return-void
.end method
