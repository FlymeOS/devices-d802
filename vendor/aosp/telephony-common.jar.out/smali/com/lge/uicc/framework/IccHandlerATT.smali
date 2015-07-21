.class public Lcom/lge/uicc/framework/IccHandlerATT;
.super Lcom/lge/uicc/framework/IccHandler;
.source "IccHandlerATT.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/uicc/framework/IccHandlerATT$1;,
        Lcom/lge/uicc/framework/IccHandlerATT$OcsglLoaded;
    }
.end annotation


# static fields
.field private static final EVENT_SIM_STATE_READY:I = 0x1

.field private static mInstance:Lcom/lge/uicc/framework/IccHandlerATT;


# instance fields
.field private mRecordsToLoad:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/lge/uicc/framework/IccHandler;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/uicc/framework/IccHandlerATT;->mRecordsToLoad:I

    .line 41
    const-string v0, "proxy.sim_state"

    const/4 v1, 0x1

    const-string v2, "READY"

    invoke-static {v0, p0, v1, v2}, Lcom/lge/uicc/framework/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    .line 42
    return-void
.end method

.method private fetchRecords()V
    .locals 5

    .prologue
    .line 62
    const-string v0, "fetch EF_OCSGL"

    invoke-virtual {p0, v0}, Lcom/lge/uicc/framework/IccHandlerATT;->logd(Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x4f84

    new-instance v3, Lcom/lge/uicc/framework/IccHandlerATT$OcsglLoaded;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/lge/uicc/framework/IccHandlerATT$OcsglLoaded;-><init>(Lcom/lge/uicc/framework/IccHandlerATT;Lcom/lge/uicc/framework/IccHandlerATT$1;)V

    invoke-virtual {p0, v3}, Lcom/lge/uicc/framework/IccHandlerATT;->obtainMessage(Lcom/lge/uicc/framework/IccHandler$RecordLoaded;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/uicc/framework/IccHandlerATT;->loadEFLinearFixedAll(IIILandroid/os/Message;)V

    .line 64
    iget v0, p0, Lcom/lge/uicc/framework/IccHandlerATT;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/uicc/framework/IccHandlerATT;->mRecordsToLoad:I

    .line 67
    return-void
.end method

.method protected static setup()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ATT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TMO@US"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "TRF_ATT"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CRK"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    sget-object v0, Lcom/lge/uicc/framework/IccHandlerATT;->mInstance:Lcom/lge/uicc/framework/IccHandlerATT;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/lge/uicc/framework/IccHandlerATT;

    invoke-direct {v0}, Lcom/lge/uicc/framework/IccHandlerATT;-><init>()V

    sput-object v0, Lcom/lge/uicc/framework/IccHandlerATT;->mInstance:Lcom/lge/uicc/framework/IccHandlerATT;

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 45
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 54
    invoke-super {p0, p1}, Lcom/lge/uicc/framework/IccHandler;->handleMessage(Landroid/os/Message;)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 47
    :pswitch_0
    const-string v0, "proxy.sim_state"

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "READY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "start loading records..."

    invoke-virtual {p0, v0}, Lcom/lge/uicc/framework/IccHandlerATT;->logd(Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lcom/lge/uicc/framework/IccHandlerATT;->fetchRecords()V

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onRecordLoaded()V
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/lge/uicc/framework/IccHandlerATT;->mRecordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lge/uicc/framework/IccHandlerATT;->mRecordsToLoad:I

    .line 71
    iget v0, p0, Lcom/lge/uicc/framework/IccHandlerATT;->mRecordsToLoad:I

    if-gez v0, :cond_0

    .line 72
    const-string v0, "mRecordsToLoad < 0, programmer error suspected"

    invoke-virtual {p0, v0}, Lcom/lge/uicc/framework/IccHandlerATT;->loge(Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/uicc/framework/IccHandlerATT;->mRecordsToLoad:I

    .line 75
    :cond_0
    return-void
.end method
