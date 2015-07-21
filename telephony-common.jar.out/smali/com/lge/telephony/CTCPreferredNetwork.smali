.class public Lcom/lge/telephony/CTCPreferredNetwork;
.super Lcom/lge/telephony/LgePreferredNetwork;
.source "CTCPreferredNetwork.java"


# static fields
.field private static final MESSAGE_SET_TDD_STATUS:I = 0x2


# instance fields
.field protected mPreferredNetworkBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/lge/telephony/LgePreferredNetwork;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 105
    new-instance v0, Lcom/lge/telephony/CTCPreferredNetwork$1;

    invoke-direct {v0, p0}, Lcom/lge/telephony/CTCPreferredNetwork$1;-><init>(Lcom/lge/telephony/CTCPreferredNetwork;)V

    iput-object v0, p0, Lcom/lge/telephony/CTCPreferredNetwork;->mPreferredNetworkBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/lge/telephony/CTCPreferredNetwork;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/telephony/CTCPreferredNetwork;
    .param p1, "x1"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/lge/telephony/CTCPreferredNetwork;->setTddLteOnly(I)Z

    move-result v0

    return v0
.end method

.method private getTddStatus()I
    .locals 4

    .prologue
    .line 32
    iget-object v1, p0, Lcom/lge/telephony/CTCPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "use_4g_single_data_network_onoff"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 34
    .local v0, "tddStatus":I
    return v0
.end method

.method private setTddLteOnly(I)Z
    .locals 5
    .param p1, "setLteMode"    # I

    .prologue
    const/4 v1, 0x1

    .line 94
    invoke-direct {p0}, Lcom/lge/telephony/CTCPreferredNetwork;->getTddStatus()I

    move-result v0

    .line 95
    .local v0, "tddStatus":I
    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CTC : now tdd on setting, request lte on => lte only and band 41 but mode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/telephony/CTCPreferredNetwork;->mSetNetworkType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lge/telephony/CTCPreferredNetwork;->log(Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Lcom/lge/telephony/CTCPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v3, 0xb

    invoke-virtual {p0, v1}, Lcom/lge/telephony/CTCPreferredNetwork;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 98
    iput-boolean v1, p0, Lcom/lge/telephony/CTCPreferredNetwork;->isIntentDuplicate:Z

    .line 101
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected changeTddDB(I)V
    .locals 3
    .param p1, "networktype"    # I

    .prologue
    .line 68
    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/lge/telephony/CTCPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "use_4g_network_onoff"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/lge/telephony/CTCPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "use_4g_network_onoff"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method protected controlTddstatus(II)Z
    .locals 6
    .param p1, "type"    # I
    .param p2, "networktype"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 44
    iget v2, p0, Lcom/lge/telephony/CTCPreferredNetwork;->mTypeGet:I

    if-ne p1, v2, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/lge/telephony/CTCPreferredNetwork;->getTddStatus()I

    move-result v0

    .line 47
    .local v0, "tddStatus":I
    if-ne v0, v1, :cond_2

    const/16 v2, 0xb

    if-ne p2, v2, :cond_2

    .line 48
    const-string v2, "if tddStatus is on, ignore modemNetworkMode, because tdd on is always lte only"

    invoke-virtual {p0, v2}, Lcom/lge/telephony/CTCPreferredNetwork;->log(Ljava/lang/String;)V

    .line 64
    .end local v0    # "tddStatus":I
    :goto_0
    return v1

    .line 51
    :cond_0
    iget v2, p0, Lcom/lge/telephony/CTCPreferredNetwork;->mTypeSet:I

    if-ne p1, v2, :cond_2

    .line 52
    invoke-direct {p0}, Lcom/lge/telephony/CTCPreferredNetwork;->getTddStatus()I

    move-result v0

    .line 53
    .restart local v0    # "tddStatus":I
    if-ne v0, v1, :cond_2

    .line 54
    const/16 v2, 0x8

    if-ge p2, v2, :cond_1

    .line 55
    const-string v2, "CTC : LTE on & TDD on > LTE off => LTE off & TDD off"

    invoke-virtual {p0, v2}, Lcom/lge/telephony/CTCPreferredNetwork;->log(Ljava/lang/String;)V

    .line 56
    iget-object v2, p0, Lcom/lge/telephony/CTCPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    const-wide/16 v4, 0x5

    invoke-virtual {p0, v3}, Lcom/lge/telephony/CTCPreferredNetwork;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v4, v5, v3}, Lcom/android/internal/telephony/Phone;->setLteBandMode(JLandroid/os/Message;)V

    goto :goto_0

    .line 58
    :cond_1
    const-string v2, "CTC : LTE off & TDD on > LTE on => LTE on & TDD on"

    invoke-virtual {p0, v2}, Lcom/lge/telephony/CTCPreferredNetwork;->log(Ljava/lang/String;)V

    .line 59
    iget-object v2, p0, Lcom/lge/telephony/CTCPreferredNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    const-wide v4, 0x10000000000L

    invoke-virtual {p0, v3}, Lcom/lge/telephony/CTCPreferredNetwork;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v4, v5, v3}, Lcom/android/internal/telephony/Phone;->setLteBandMode(JLandroid/os/Message;)V

    goto :goto_0

    .line 64
    .end local v0    # "tddStatus":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 79
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 88
    invoke-super {p0, p1}, Lcom/lge/telephony/LgePreferredNetwork;->handleMessage(Landroid/os/Message;)V

    .line 91
    :goto_0
    return-void

    .line 81
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 82
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 83
    const-string v1, "CTC : TDD OFF fail"

    invoke-virtual {p0, v1}, Lcom/lge/telephony/CTCPreferredNetwork;->log(Ljava/lang/String;)V

    .line 85
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/telephony/CTCPreferredNetwork;->isIntentDuplicate:Z

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected setIntentActionName()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "SetNetworkMode_CT_LTE"

    iput-object v0, p0, Lcom/lge/telephony/CTCPreferredNetwork;->ACTION_PREFERRED_NETWORK_SET:Ljava/lang/String;

    .line 28
    const-string v0, "GetNetworkMode_CT_LTE"

    iput-object v0, p0, Lcom/lge/telephony/CTCPreferredNetwork;->ACTION_PREFERRED_NETWORK_GET:Ljava/lang/String;

    .line 29
    return-void
.end method

.method protected setPreferredNetworkMode(I)V
    .locals 0
    .param p1, "networkType"    # I

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/lge/telephony/LgePreferredNetwork;->setPreferredNetworkMode(I)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/lge/telephony/CTCPreferredNetwork;->changeTddDB(I)V

    .line 41
    return-void
.end method
