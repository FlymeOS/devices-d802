.class Lcom/android/nfc/LNfcIndicatorIcon$LNfcServiceIconHandler;
.super Landroid/os/Handler;
.source "LNfcIndicatorIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LNfcIndicatorIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LNfcServiceIconHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/LNfcIndicatorIcon;


# direct methods
.method private constructor <init>(Lcom/android/nfc/LNfcIndicatorIcon;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/nfc/LNfcIndicatorIcon$LNfcServiceIconHandler;->this$0:Lcom/android/nfc/LNfcIndicatorIcon;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/LNfcIndicatorIcon;Lcom/android/nfc/LNfcIndicatorIcon$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/nfc/LNfcIndicatorIcon;
    .param p2, "x1"    # Lcom/android/nfc/LNfcIndicatorIcon$1;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/nfc/LNfcIndicatorIcon$LNfcServiceIconHandler;-><init>(Lcom/android/nfc/LNfcIndicatorIcon;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 110
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 111
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 113
    .local v1, "icon":I
    if-nez v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 117
    :cond_0
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 155
    # getter for: Lcom/android/nfc/LNfcIndicatorIcon;->DBG:Z
    invoke-static {}, Lcom/android/nfc/LNfcIndicatorIcon;->access$400()Z

    move-result v4

    # getter for: Lcom/android/nfc/LNfcIndicatorIcon;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/LNfcIndicatorIcon;->access$500()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LNfcServiceIconHandler::Unknown message received"

    invoke-static {v4, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 158
    :goto_1
    :pswitch_0
    const-string v4, "statusbar"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    .line 159
    .local v3, "sb":Landroid/app/StatusBarManager;
    if-eqz v1, :cond_6

    .line 160
    const-string v4, "nfc"

    const/4 v5, 0x0

    #invoke-virtual {v3, v4, v1, v8, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 120
    .end local v3    # "sb":Landroid/app/StatusBarManager;
    :pswitch_1
    # getter for: Lcom/android/nfc/LNfcIndicatorIcon;->NFC_ICON_MAP:Ljava/util/Map;
    invoke-static {}, Lcom/android/nfc/LNfcIndicatorIcon;->access$300()Ljava/util/Map;

    move-result-object v4

    # getter for: Lcom/android/nfc/LNfcIndicatorIcon;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;
    invoke-static {}, Lcom/android/nfc/LNfcIndicatorIcon;->access$200()Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v5

    iget-object v5, v5, Lcom/lge/nfcconfig/NfcConfigure;->mIndicatorType:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 121
    .local v2, "icon_map":[I
    if-eqz v2, :cond_1

    array-length v4, v2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    .line 122
    :cond_1
    # getter for: Lcom/android/nfc/LNfcIndicatorIcon;->DBG:Z
    invoke-static {}, Lcom/android/nfc/LNfcIndicatorIcon;->access$400()Z

    move-result v4

    # getter for: Lcom/android/nfc/LNfcIndicatorIcon;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/LNfcIndicatorIcon;->access$500()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Invalid icon map"

    invoke-static {v4, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 126
    :cond_2
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysEnable()Z

    move-result v4

    if-ne v4, v7, :cond_3

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pEnable()Z

    move-result v4

    if-ne v4, v7, :cond_3

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryEnable()Z

    move-result v4

    if-ne v4, v7, :cond_3

    .line 129
    # getter for: Lcom/android/nfc/LNfcIndicatorIcon;->DBG:Z
    invoke-static {}, Lcom/android/nfc/LNfcIndicatorIcon;->access$400()Z

    move-result v4

    # getter for: Lcom/android/nfc/LNfcIndicatorIcon;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/LNfcIndicatorIcon;->access$500()Ljava/lang/String;

    move-result-object v5

    const-string v6, "P2PMODE icon Enable"

    invoke-static {v4, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v4, 0x2

    aget v1, v2, v4

    .line 131
    goto :goto_1

    .line 132
    :cond_3
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysEnable()Z

    move-result v4

    if-ne v4, v7, :cond_4

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryEnable()Z

    move-result v4

    if-ne v4, v7, :cond_4

    .line 134
    # getter for: Lcom/android/nfc/LNfcIndicatorIcon;->DBG:Z
    invoke-static {}, Lcom/android/nfc/LNfcIndicatorIcon;->access$400()Z

    move-result v4

    # getter for: Lcom/android/nfc/LNfcIndicatorIcon;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/LNfcIndicatorIcon;->access$500()Ljava/lang/String;

    move-result-object v5

    const-string v6, "RWMODE icon Enable"

    invoke-static {v4, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 135
    aget v1, v2, v7

    .line 136
    goto :goto_1

    .line 137
    :cond_4
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysEnable()Z

    move-result v4

    if-ne v4, v7, :cond_5

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardEnable()Z

    move-result v4

    if-ne v4, v7, :cond_5

    .line 139
    # getter for: Lcom/android/nfc/LNfcIndicatorIcon;->DBG:Z
    invoke-static {}, Lcom/android/nfc/LNfcIndicatorIcon;->access$400()Z

    move-result v4

    # getter for: Lcom/android/nfc/LNfcIndicatorIcon;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/LNfcIndicatorIcon;->access$500()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Card Mode icon Enable"

    invoke-static {v4, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 140
    aget v1, v2, v8

    goto/16 :goto_1

    .line 142
    :cond_5
    # getter for: Lcom/android/nfc/LNfcIndicatorIcon;->DBG:Z
    invoke-static {}, Lcom/android/nfc/LNfcIndicatorIcon;->access$400()Z

    move-result v4

    # getter for: Lcom/android/nfc/LNfcIndicatorIcon;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/LNfcIndicatorIcon;->access$500()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Nfc State : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 147
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 162
    .end local v2    # "icon_map":[I
    .restart local v3    # "sb":Landroid/app/StatusBarManager;
    :cond_6
    const-string v4, "nfc"

    #invoke-virtual {v3, v4}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
