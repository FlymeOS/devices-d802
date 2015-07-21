.class public Lcom/lge/uicc/framework/IccHandlerCommon;
.super Lcom/lge/uicc/framework/IccHandler;
.source "IccHandlerCommon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/uicc/framework/IccHandlerCommon$1;,
        Lcom/lge/uicc/framework/IccHandlerCommon$EfCsimUimIdLoaded;,
        Lcom/lge/uicc/framework/IccHandlerCommon$FdnRecordSizeLoaded;
    }
.end annotation


# static fields
.field private static final EVENT_SIM_STATE_READY:I = 0x1

.field private static mInstance:Lcom/lge/uicc/framework/IccHandlerCommon;


# instance fields
.field private mRecordsToLoad:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/lge/uicc/framework/IccHandler;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/uicc/framework/IccHandlerCommon;->mRecordsToLoad:I

    .line 49
    const-string v0, "proxy.sim_state"

    const/4 v1, 0x1

    const-string v2, "READY"

    invoke-static {v0, p0, v1, v2}, Lcom/lge/uicc/framework/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    .line 50
    return-void
.end method

.method private fetchRecords(I)V
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 72
    const-string v0, "fetch EF_FDN size"

    invoke-virtual {p0, v0}, Lcom/lge/uicc/framework/IccHandlerCommon;->logd(Ljava/lang/String;)V

    .line 73
    const/16 v0, 0x6f3b

    new-instance v1, Lcom/lge/uicc/framework/IccHandlerCommon$FdnRecordSizeLoaded;

    invoke-direct {v1, p0, p1}, Lcom/lge/uicc/framework/IccHandlerCommon$FdnRecordSizeLoaded;-><init>(Lcom/lge/uicc/framework/IccHandlerCommon;I)V

    invoke-virtual {p0, v1}, Lcom/lge/uicc/framework/IccHandlerCommon;->obtainMessage(Lcom/lge/uicc/framework/IccHandler$RecordLoaded;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/lge/uicc/framework/IccHandlerCommon;->getEFLinearRecordSize(IIILandroid/os/Message;)V

    .line 74
    iget v0, p0, Lcom/lge/uicc/framework/IccHandlerCommon;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/uicc/framework/IccHandlerCommon;->mRecordsToLoad:I

    .line 76
    if-nez p1, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CTC"

    aput-object v2, v0, v1

    const-string v1, "LGU"

    aput-object v1, v0, v3

    const-string v1, "CTO"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const/16 v0, 0x6f31

    new-instance v1, Lcom/lge/uicc/framework/IccHandlerCommon$EfCsimUimIdLoaded;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lge/uicc/framework/IccHandlerCommon$EfCsimUimIdLoaded;-><init>(Lcom/lge/uicc/framework/IccHandlerCommon;Lcom/lge/uicc/framework/IccHandlerCommon$1;)V

    invoke-virtual {p0, v1}, Lcom/lge/uicc/framework/IccHandlerCommon;->obtainMessage(Lcom/lge/uicc/framework/IccHandler$RecordLoaded;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, p1, v4, v0, v1}, Lcom/lge/uicc/framework/IccHandlerCommon;->loadEFTransparent(IIILandroid/os/Message;)V

    .line 78
    iget v0, p0, Lcom/lge/uicc/framework/IccHandlerCommon;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/uicc/framework/IccHandlerCommon;->mRecordsToLoad:I

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRecordsToLoad "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/uicc/framework/IccHandlerCommon;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/uicc/framework/IccHandlerCommon;->logd(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method protected static setup()V
    .locals 3

    .prologue
    .line 32
    const-string v0, "usim_perso_control_key"

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const-string v0, "First Boot! set UICC UI Setting Property"

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->logd(Ljava/lang/String;)V

    .line 34
    const-string v0, "usim_perso_locked"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/lge/uicc/framework/LGUICC;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "usim_perso_imsi"

    const-string v1, "000000000000000"

    invoke-static {v0, v1}, Lcom/lge/uicc/framework/LGUICC;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "enable_menu_without_usim"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/lge/uicc/framework/LGUICC;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "sim_err_popup_msg"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/lge/uicc/framework/LGUICC;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SKT"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    const-string v0, "usim_perso_control_key"

    const-string v1, "0000"

    invoke-static {v0, v1}, Lcom/lge/uicc/framework/LGUICC;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_0
    :goto_0
    sget-object v0, Lcom/lge/uicc/framework/IccHandlerCommon;->mInstance:Lcom/lge/uicc/framework/IccHandlerCommon;

    if-nez v0, :cond_1

    .line 46
    new-instance v0, Lcom/lge/uicc/framework/IccHandlerCommon;

    invoke-direct {v0}, Lcom/lge/uicc/framework/IccHandlerCommon;-><init>()V

    sput-object v0, Lcom/lge/uicc/framework/IccHandlerCommon;->mInstance:Lcom/lge/uicc/framework/IccHandlerCommon;

    .line 47
    :cond_1
    return-void

    .line 41
    :cond_2
    const-string v0, "usim_perso_control_key"

    const-string v1, "00000000"

    invoke-static {v0, v1}, Lcom/lge/uicc/framework/LGUICC;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 53
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 66
    invoke-super {p0, p1}, Lcom/lge/uicc/framework/IccHandler;->handleMessage(Landroid/os/Message;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 55
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 56
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 59
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 60
    .local v1, "slotId":I
    const-string v2, "proxy.sim_state"

    invoke-static {v2, v1}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "READY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    invoke-direct {p0, v1}, Lcom/lge/uicc/framework/IccHandlerCommon;->fetchRecords(I)V

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onRecordLoaded()V
    .locals 2

    .prologue
    .line 85
    iget v0, p0, Lcom/lge/uicc/framework/IccHandlerCommon;->mRecordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lge/uicc/framework/IccHandlerCommon;->mRecordsToLoad:I

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRecordsToLoad "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/uicc/framework/IccHandlerCommon;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/uicc/framework/IccHandlerCommon;->logd(Ljava/lang/String;)V

    .line 87
    return-void
.end method
