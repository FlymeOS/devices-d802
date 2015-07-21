.class public Lcom/lge/uicc/framework/GenericIO;
.super Ljava/lang/Object;
.source "GenericIO.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/uicc/framework/GenericIO$1;,
        Lcom/lge/uicc/framework/GenericIO$UnlockSim;,
        Lcom/lge/uicc/framework/GenericIO$GIO;
    }
.end annotation


# static fields
.field private static mEapAkaHandler:Lcom/lge/uicc/framework/EapAkaHandler;

.field private static mInstance:Lcom/lge/uicc/framework/GenericIO;

.field private static mMultiSimHandler:Lcom/lge/uicc/framework/MultiSimHandler;

.field private static mSmartCardHandler:Lcom/lge/uicc/framework/SmartCardHandler;

.field private static mUnlockSim:Lcom/lge/uicc/framework/GenericIO$UnlockSim;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/lge/uicc/framework/EapAkaHandler;

    invoke-direct {v0}, Lcom/lge/uicc/framework/EapAkaHandler;-><init>()V

    sput-object v0, Lcom/lge/uicc/framework/GenericIO;->mEapAkaHandler:Lcom/lge/uicc/framework/EapAkaHandler;

    .line 53
    new-instance v0, Lcom/lge/uicc/framework/SmartCardHandler;

    invoke-direct {v0}, Lcom/lge/uicc/framework/SmartCardHandler;-><init>()V

    sput-object v0, Lcom/lge/uicc/framework/GenericIO;->mSmartCardHandler:Lcom/lge/uicc/framework/SmartCardHandler;

    .line 54
    new-instance v0, Lcom/lge/uicc/framework/GenericIO$UnlockSim;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/uicc/framework/GenericIO$UnlockSim;-><init>(Lcom/lge/uicc/framework/GenericIO;Lcom/lge/uicc/framework/GenericIO$1;)V

    sput-object v0, Lcom/lge/uicc/framework/GenericIO;->mUnlockSim:Lcom/lge/uicc/framework/GenericIO$UnlockSim;

    .line 55
    new-instance v0, Lcom/lge/uicc/framework/MultiSimHandler;

    invoke-direct {v0}, Lcom/lge/uicc/framework/MultiSimHandler;-><init>()V

    sput-object v0, Lcom/lge/uicc/framework/GenericIO;->mMultiSimHandler:Lcom/lge/uicc/framework/MultiSimHandler;

    .line 56
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p0}, Lcom/lge/uicc/framework/GenericIO;->loge(Ljava/lang/String;)V

    return-void
.end method

.method protected static exchange(Ljava/lang/String;[B)[B
    .locals 6
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "in"    # [B

    .prologue
    const/4 v3, 0x0

    .line 59
    sget-object v4, Lcom/lge/uicc/framework/GenericIO;->mInstance:Lcom/lge/uicc/framework/GenericIO;

    if-nez v4, :cond_1

    move-object v2, v3

    .line 112
    :cond_0
    :goto_0
    return-object v2

    .line 62
    :cond_1
    const/4 v2, 0x0

    .line 63
    .local v2, "out":[B
    const/4 v0, 0x0

    .line 65
    .local v0, "gio":Lcom/lge/uicc/framework/GenericIO$GIO;
    :try_start_0
    invoke-static {p0}, Lcom/lge/uicc/framework/GenericIO$GIO;->valueOf(Ljava/lang/String;)Lcom/lge/uicc/framework/GenericIO$GIO;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 71
    sget-object v3, Lcom/lge/uicc/framework/GenericIO$1;->$SwitchMap$com$lge$uicc$framework$GenericIO$GIO:[I

    invoke-virtual {v0}, Lcom/lge/uicc/framework/GenericIO$GIO;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 73
    :pswitch_0
    const/16 v3, 0x8

    new-array v2, v3, [B

    .end local v2    # "out":[B
    fill-array-data v2, :array_0

    .line 74
    .restart local v2    # "out":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(command) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (input) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (output) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/framework/GenericIO;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/uicc/framework/GenericIO;->loge(Ljava/lang/String;)V

    move-object v2, v3

    .line 68
    goto :goto_0

    .line 78
    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :pswitch_1
    sget-object v3, Lcom/lge/uicc/framework/GenericIO;->mUnlockSim:Lcom/lge/uicc/framework/GenericIO$UnlockSim;

    if-eqz v3, :cond_0

    .line 79
    sget-object v3, Lcom/lge/uicc/framework/GenericIO;->mUnlockSim:Lcom/lge/uicc/framework/GenericIO$UnlockSim;

    invoke-virtual {v3, p1}, Lcom/lge/uicc/framework/GenericIO$UnlockSim;->supplyPinPukRemote([B)[B

    move-result-object v2

    goto :goto_0

    .line 83
    :pswitch_2
    sget-object v3, Lcom/lge/uicc/framework/GenericIO;->mEapAkaHandler:Lcom/lge/uicc/framework/EapAkaHandler;

    if-eqz v3, :cond_0

    .line 84
    sget-object v3, Lcom/lge/uicc/framework/GenericIO;->mEapAkaHandler:Lcom/lge/uicc/framework/EapAkaHandler;

    invoke-virtual {v3, p1}, Lcom/lge/uicc/framework/EapAkaHandler;->authenticate([B)[B

    move-result-object v2

    goto :goto_0

    .line 88
    :pswitch_3
    sget-object v3, Lcom/lge/uicc/framework/GenericIO;->mSmartCardHandler:Lcom/lge/uicc/framework/SmartCardHandler;

    if-eqz v3, :cond_0

    .line 89
    sget-object v3, Lcom/lge/uicc/framework/GenericIO;->mSmartCardHandler:Lcom/lge/uicc/framework/SmartCardHandler;

    invoke-virtual {v3, p1}, Lcom/lge/uicc/framework/SmartCardHandler;->transmit([B)[B

    move-result-object v2

    goto/16 :goto_0

    .line 93
    :pswitch_4
    sget-object v3, Lcom/lge/uicc/framework/GenericIO;->mSmartCardHandler:Lcom/lge/uicc/framework/SmartCardHandler;

    if-eqz v3, :cond_0

    .line 94
    sget-object v3, Lcom/lge/uicc/framework/GenericIO;->mSmartCardHandler:Lcom/lge/uicc/framework/SmartCardHandler;

    invoke-virtual {v3}, Lcom/lge/uicc/framework/SmartCardHandler;->getATR()[B

    move-result-object v2

    goto/16 :goto_0

    .line 98
    :pswitch_5
    sget-object v3, Lcom/lge/uicc/framework/GenericIO;->mSmartCardHandler:Lcom/lge/uicc/framework/SmartCardHandler;

    if-eqz v3, :cond_0

    .line 100
    sget-object v3, Lcom/lge/uicc/framework/GenericIO;->mSmartCardHandler:Lcom/lge/uicc/framework/SmartCardHandler;

    invoke-virtual {v3, p1}, Lcom/lge/uicc/framework/SmartCardHandler;->getAppTypes([B)[B

    move-result-object v2

    goto/16 :goto_0

    .line 104
    :pswitch_6
    sget-object v3, Lcom/lge/uicc/framework/GenericIO;->mMultiSimHandler:Lcom/lge/uicc/framework/MultiSimHandler;

    if-eqz v3, :cond_0

    .line 106
    sget-object v3, Lcom/lge/uicc/framework/GenericIO;->mMultiSimHandler:Lcom/lge/uicc/framework/MultiSimHandler;

    invoke-virtual {v3, p1}, Lcom/lge/uicc/framework/MultiSimHandler;->sendCommand([B)[B

    move-result-object v2

    goto/16 :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 73
    :array_0
    .array-data 1
        0x53t
        0x75t
        0x63t
        0x63t
        0x65t
        0x73t
        0x73t
        0x0t
    .end array-data
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GenericIO] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->logd(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GenericIO] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->loge(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method protected static setup()V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/lge/uicc/framework/GenericIO;->mInstance:Lcom/lge/uicc/framework/GenericIO;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/lge/uicc/framework/GenericIO;

    invoke-direct {v0}, Lcom/lge/uicc/framework/GenericIO;-><init>()V

    sput-object v0, Lcom/lge/uicc/framework/GenericIO;->mInstance:Lcom/lge/uicc/framework/GenericIO;

    .line 49
    :cond_0
    return-void
.end method
