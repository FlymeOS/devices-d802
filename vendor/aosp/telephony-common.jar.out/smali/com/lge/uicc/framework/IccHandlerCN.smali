.class public Lcom/lge/uicc/framework/IccHandlerCN;
.super Lcom/lge/uicc/framework/IccHandler;
.source "IccHandlerCN.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/uicc/framework/IccHandlerCN$EfCsimEprlLoaded;
    }
.end annotation


# static fields
.field private static final EVENT_SIM_LOADED:I = 0x1

.field private static final EVENT_SIM_STATE_READY:I = 0x2

.field private static final FACTORY_PROPERTY:Ljava/lang/String; = "ro.factorytest"

.field private static mInstance:Lcom/lge/uicc/framework/IccHandlerCN;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPrlVersion:Ljava/lang/String;

.field private mRecordsToLoad:I


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/lge/uicc/framework/IccHandler;-><init>()V

    .line 43
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/uicc/framework/IccHandlerCN;->mRecordsToLoad:I

    .line 53
    const-string v1, "create instance"

    invoke-virtual {p0, v1}, Lcom/lge/uicc/framework/IccHandlerCN;->logd(Ljava/lang/String;)V

    .line 54
    const-string v1, "ro.factorytest"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "factoryTestStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    const-string v1, "proxy.sim_state.intent"

    const/4 v2, 0x1

    const-string v3, "LOADED"

    invoke-static {v1, p0, v2, v3}, Lcom/lge/uicc/framework/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    .line 58
    :cond_0
    const-string v1, "proxy.sim_state"

    const/4 v2, 0x2

    const-string v3, "READY"

    invoke-static {v1, p0, v2, v3}, Lcom/lge/uicc/framework/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/lge/uicc/framework/IccHandlerCN;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/uicc/framework/IccHandlerCN;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/uicc/framework/IccHandlerCN;->mPrlVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lge/uicc/framework/IccHandlerCN;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lge/uicc/framework/IccHandlerCN;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lge/uicc/framework/IccHandlerCN;->mPrlVersion:Ljava/lang/String;

    return-object p1
.end method

.method private fetchRecords(I)V
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x2

    .line 137
    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "CTC"

    aput-object v3, v0, v1

    const/4 v1, 0x1

    const-string v3, "CTO"

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const/16 v3, 0x6f5a

    const/4 v4, 0x4

    new-instance v0, Lcom/lge/uicc/framework/IccHandlerCN$EfCsimEprlLoaded;

    invoke-direct {v0, p0, p1}, Lcom/lge/uicc/framework/IccHandlerCN$EfCsimEprlLoaded;-><init>(Lcom/lge/uicc/framework/IccHandlerCN;I)V

    invoke-virtual {p0, v0}, Lcom/lge/uicc/framework/IccHandlerCN;->obtainMessage(Lcom/lge/uicc/framework/IccHandler$RecordLoaded;)Landroid/os/Message;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lge/uicc/framework/IccHandlerCN;->loadEFTransparent(IIIILandroid/os/Message;)V

    .line 139
    iget v0, p0, Lcom/lge/uicc/framework/IccHandlerCN;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/uicc/framework/IccHandlerCN;->mRecordsToLoad:I

    .line 141
    :cond_0
    return-void
.end method

.method private make_popup_CT()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 99
    const-string v8, "make_popup_CT"

    invoke-virtual {p0, v8}, Lcom/lge/uicc/framework/IccHandlerCN;->logd(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/lge/uicc/framework/IccTools;->getContext()Landroid/content/Context;

    move-result-object v8

    iput-object v8, p0, Lcom/lge/uicc/framework/IccHandlerCN;->mContext:Landroid/content/Context;

    .line 101
    const-string v8, "csim.state"

    invoke-static {v8, v11}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "csim_state":Ljava/lang/String;
    const-string v8, "iccid_changed"

    invoke-static {v8, v11}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, "iccid_changed":Ljava/lang/String;
    const-string v8, "actual"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "first"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    const-string v1, "change"

    .line 104
    .local v1, "check_iccid":Ljava/lang/String;
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "csim_state : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/lge/uicc/framework/IccHandlerCN;->logd(Ljava/lang/String;)V

    .line 105
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "iccid_changed : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", check_iccid : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/lge/uicc/framework/IccHandlerCN;->logd(Ljava/lang/String;)V

    .line 107
    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "change"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 109
    const-string v8, "make popup, insert simcard without csim app"

    invoke-virtual {p0, v8}, Lcom/lge/uicc/framework/IccHandlerCN;->logd(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 111
    .local v7, "r":Landroid/content/res/Resources;
    sget v8, Lcom/lge/internal/R$string;->insert_ctc_sim:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, "message":Ljava/lang/String;
    const v8, 0x104000a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "buttonOkTxt":Ljava/lang/String;
    sget v8, Lcom/lge/internal/R$string;->lockscreen_china_telecom:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 118
    .local v6, "operatorname":Ljava/lang/String;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/lge/uicc/framework/IccHandlerCN;->mContext:Landroid/content/Context;

    sget v10, Lcom/lge/internal/R$style;->Theme_LGE_White_Dialog_Alert:I

    invoke-direct {v8, v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v8, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/lge/uicc/framework/IccHandlerCN$1;

    invoke-direct {v9, p0}, Lcom/lge/uicc/framework/IccHandlerCN$1;-><init>(Lcom/lge/uicc/framework/IccHandlerCN;)V

    invoke-virtual {v8, v0, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 128
    .local v3, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v3, v11}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 129
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7da

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 130
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/high16 v9, 0x200000

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 131
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 132
    const-string v8, "proxy.sim_state.intent"

    invoke-static {v8, p0}, Lcom/lge/uicc/framework/LGUICC;->unregisterForConfig(Ljava/lang/String;Landroid/os/Handler;)V

    .line 134
    .end local v0    # "buttonOkTxt":Ljava/lang/String;
    .end local v3    # "dialog":Landroid/app/AlertDialog;
    .end local v5    # "message":Ljava/lang/String;
    .end local v6    # "operatorname":Ljava/lang/String;
    .end local v7    # "r":Landroid/content/res/Resources;
    :cond_1
    return-void

    .line 103
    .end local v1    # "check_iccid":Ljava/lang/String;
    :cond_2
    const-string v1, "not_change"

    goto/16 :goto_0
.end method

.method protected static setup()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CN"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->targetCountry([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    sget-object v0, Lcom/lge/uicc/framework/IccHandlerCN;->mInstance:Lcom/lge/uicc/framework/IccHandlerCN;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/lge/uicc/framework/IccHandlerCN;

    invoke-direct {v0}, Lcom/lge/uicc/framework/IccHandlerCN;-><init>()V

    sput-object v0, Lcom/lge/uicc/framework/IccHandlerCN;->mInstance:Lcom/lge/uicc/framework/IccHandlerCN;

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 63
    const/4 v1, -0x1

    .line 65
    .local v1, "slotId":I
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 93
    invoke-super {p0, p1}, Lcom/lge/uicc/framework/IccHandler;->handleMessage(Landroid/os/Message;)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 68
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slotid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lge/uicc/framework/IccHandlerCN;->logd(Ljava/lang/String;)V

    .line 74
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "CTC"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "CTO"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    if-nez v1, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/lge/uicc/framework/IccHandlerCN;->make_popup_CT()V

    goto :goto_0

    .line 82
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 83
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slotid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lge/uicc/framework/IccHandlerCN;->logd(Ljava/lang/String;)V

    .line 89
    invoke-direct {p0, v1}, Lcom/lge/uicc/framework/IccHandlerCN;->fetchRecords(I)V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onRecordLoaded()V
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/lge/uicc/framework/IccHandlerCN;->mRecordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lge/uicc/framework/IccHandlerCN;->mRecordsToLoad:I

    .line 145
    iget v0, p0, Lcom/lge/uicc/framework/IccHandlerCN;->mRecordsToLoad:I

    if-gez v0, :cond_0

    .line 146
    const-string v0, "mRecordsToLoad < 0, programmer error suspected"

    invoke-virtual {p0, v0}, Lcom/lge/uicc/framework/IccHandlerCN;->loge(Ljava/lang/String;)V

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/uicc/framework/IccHandlerCN;->mRecordsToLoad:I

    .line 149
    :cond_0
    return-void
.end method
