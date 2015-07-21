.class public Lcom/android/internal/telephony/soi/SmsUsimHandler;
.super Landroid/os/Handler;
.source "SmsUsimHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;
    }
.end annotation


# static fields
.field private static final EVENT_READ_RECORD_DONE:I = 0x1

.field private static final EVENT_UPDATE_RECORD_DONE:I = 0x2

.field private static final SIZE_OF_SMSP_NONE_ALPHA_ID:I = 0x1c

.field private static final SMSP_ADDRESS_SIZE:I = 0xc

.field private static final TAG:Ljava/lang/String; = "SmsUsimHandler"

.field private static mInstance:Lcom/android/internal/telephony/soi/SmsUsimHandler;

.field private static mSMSPType:Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;

.field private static mUiccCardApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private static mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 75
    new-instance v1, Lcom/android/internal/telephony/soi/SmsUsimHandler$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/soi/SmsUsimHandler$1;-><init>(Lcom/android/internal/telephony/soi/SmsUsimHandler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 70
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    const-string v1, "SmsUsimHandler"

    const-string v2, "SmsUsimHandler"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method private static SMSPtoString(Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;)Ljava/lang/String;
    .locals 2
    .param p0, "smspData"    # Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;

    .prologue
    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alphaID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->alphaID:[B

    if-nez v0, :cond_0

    const-string v0, "NULL"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,ParamIndi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->ParamIndicator:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,Dest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->DestAddr:[B

    invoke-static {v1}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,Center:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->SVCCenterAddr:[B

    invoke-static {v1}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,ProtoclID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->ProtoclID:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,Code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->CodeScheme:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,Period:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->ValidPeriod:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->alphaID:[B

    invoke-static {v0}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/soi/SmsUsimHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/soi/SmsUsimHandler;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/internal/telephony/soi/SmsUsimHandler;->readUsimRecord()V

    return-void
.end method

.method private static analyzeSMSP([B)Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;
    .locals 8
    .param p0, "SimData"    # [B

    .prologue
    const/16 v7, 0xc

    const/4 v6, 0x0

    .line 231
    if-nez p0, :cond_0

    .line 232
    const/4 v1, 0x0

    .line 271
    :goto_0
    return-object v1

    .line 235
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;

    invoke-direct {v1}, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;-><init>()V

    .line 236
    .local v1, "TempSMSP":Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;
    array-length v4, p0

    add-int/lit8 v0, v4, -0x1c

    .line 237
    .local v0, "NoneAlphaStartPoint":I
    const/4 v2, 0x0

    .line 239
    .local v2, "arrayPoint":I
    if-lez v0, :cond_1

    .line 240
    add-int/lit8 v4, v0, -0x1

    invoke-static {p0, v2, v4}, Lcom/lge/uicc/EfUtils;->subarray([BII)[B

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->alphaID:[B

    .line 241
    move v2, v0

    .line 244
    :cond_1
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "arrayPoint":I
    .local v3, "arrayPoint":I
    aget-byte v4, p0, v2

    iput-byte v4, v1, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->ParamIndicator:B

    .line 246
    iget-object v4, v1, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->DestAddr:[B

    invoke-static {p0, v3, v4, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 247
    add-int/lit8 v2, v3, 0xc

    .line 249
    .end local v3    # "arrayPoint":I
    .restart local v2    # "arrayPoint":I
    iget-byte v4, v1, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->ParamIndicator:B

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 251
    iget-object v4, v1, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->SVCCenterAddr:[B

    invoke-static {p0, v2, v4, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 253
    :cond_2
    add-int/lit8 v2, v2, 0xc

    .line 255
    iget-byte v4, v1, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->ParamIndicator:B

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    .line 256
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "arrayPoint":I
    .restart local v3    # "arrayPoint":I
    aget-byte v4, p0, v2

    iput-byte v4, v1, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->ProtoclID:B

    move v2, v3

    .line 261
    .end local v3    # "arrayPoint":I
    .restart local v2    # "arrayPoint":I
    :goto_1
    iget-byte v4, v1, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->ParamIndicator:B

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-eq v4, v5, :cond_4

    .line 262
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "arrayPoint":I
    .restart local v3    # "arrayPoint":I
    aget-byte v4, p0, v2

    iput-byte v4, v1, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->CodeScheme:B

    move v2, v3

    .line 268
    .end local v3    # "arrayPoint":I
    .restart local v2    # "arrayPoint":I
    :goto_2
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "arrayPoint":I
    .restart local v3    # "arrayPoint":I
    aget-byte v4, p0, v2

    iput-byte v4, v1, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->ValidPeriod:B

    .line 270
    const-string v4, "SmsUsimHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMSP: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/android/internal/telephony/soi/SmsUsimHandler;->SMSPtoString(Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    .end local v3    # "arrayPoint":I
    .restart local v2    # "arrayPoint":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 265
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private static composeSMSP(Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;)[B
    .locals 7
    .param p0, "smspData"    # Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;

    .prologue
    const/4 v4, 0x0

    .line 361
    if-nez p0, :cond_0

    .line 362
    const/4 v0, 0x0

    .line 408
    :goto_0
    return-object v0

    .line 365
    :cond_0
    const-string v3, "SmsUsimHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMSP: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Lcom/android/internal/telephony/soi/SmsUsimHandler;->SMSPtoString(Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v3, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->alphaID:[B

    if-nez v3, :cond_3

    move v3, v4

    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->DestAddr:[B

    array-length v5, v5

    add-int/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->SVCCenterAddr:[B

    array-length v5, v5

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x4

    new-array v0, v3, [B

    .line 368
    .local v0, "SimData":[B
    const/4 v1, 0x0

    .line 370
    .local v1, "arrayPoint":I
    iget-object v3, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->alphaID:[B

    if-eqz v3, :cond_1

    .line 371
    iget-object v3, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->alphaID:[B

    iget-object v5, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->alphaID:[B

    array-length v5, v5

    invoke-static {v3, v4, v0, v1, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 372
    iget-object v3, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->alphaID:[B

    array-length v3, v3

    add-int/2addr v1, v3

    .line 377
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->SVCCenterAddr:[B

    aget-byte v3, v3, v4

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->SVCCenterAddr:[B

    aget-byte v3, v3, v4

    if-nez v3, :cond_4

    .line 378
    :cond_2
    iget-byte v3, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->ParamIndicator:B

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->ParamIndicator:B

    .line 386
    :goto_2
    const-string v3, "SmsUsimHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SVCCenterAddr[0] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->SVCCenterAddr:[B

    aget-byte v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ParamIndicator: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->ParamIndicator:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "arrayPoint":I
    .local v2, "arrayPoint":I
    iget-byte v3, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->ParamIndicator:B

    aput-byte v3, v0, v1

    .line 393
    iget-object v3, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->DestAddr:[B

    iget-object v5, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->DestAddr:[B

    array-length v5, v5

    invoke-static {v3, v4, v0, v2, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 394
    iget-object v3, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->DestAddr:[B

    array-length v3, v3

    add-int v1, v2, v3

    .line 396
    .end local v2    # "arrayPoint":I
    .restart local v1    # "arrayPoint":I
    iget-object v3, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->SVCCenterAddr:[B

    iget-object v5, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->SVCCenterAddr:[B

    array-length v5, v5

    invoke-static {v3, v4, v0, v1, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 398
    iget-object v3, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->SVCCenterAddr:[B

    array-length v3, v3

    add-int/2addr v1, v3

    .line 402
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "arrayPoint":I
    .restart local v2    # "arrayPoint":I
    iget-byte v3, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->ProtoclID:B

    aput-byte v3, v0, v1

    .line 403
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "arrayPoint":I
    .restart local v1    # "arrayPoint":I
    iget-byte v3, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->CodeScheme:B

    aput-byte v3, v0, v2

    .line 404
    iget-byte v3, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->ValidPeriod:B

    aput-byte v3, v0, v1

    .line 406
    const-string v3, "SmsUsimHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMSPData "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 366
    .end local v0    # "SimData":[B
    .end local v1    # "arrayPoint":I
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->alphaID:[B

    array-length v3, v3

    goto/16 :goto_1

    .line 382
    .restart local v0    # "SimData":[B
    .restart local v1    # "arrayPoint":I
    :cond_4
    iget-byte v3, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->ParamIndicator:B

    and-int/lit16 v3, v3, 0xfd

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->ParamIndicator:B

    goto/16 :goto_2
.end method

.method private static decodeSCAddr([B)Ljava/lang/String;
    .locals 5
    .param p0, "scData"    # [B

    .prologue
    const/4 v4, 0x1

    .line 275
    if-nez p0, :cond_1

    .line 276
    const/4 v1, 0x0

    .line 290
    :cond_0
    :goto_0
    return-object v1

    .line 279
    :cond_1
    const-string v1, ""

    .line 280
    .local v1, "scAddrString":Ljava/lang/String;
    const/4 v2, 0x0

    aget-byte v0, p0, v2

    .line 281
    .local v0, "length":I
    if-lez v0, :cond_0

    .line 284
    const/4 v2, 0x2

    add-int/lit8 v3, v0, -0x1

    invoke-static {p0, v2, v3}, Lcom/lge/uicc/EfUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 286
    aget-byte v2, p0, v4

    and-int/lit8 v2, v2, 0x70

    shr-int/lit8 v2, v2, 0x4

    if-ne v2, v4, :cond_0

    .line 288
    const-string v2, "+"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static encodeSCAddr(Ljava/lang/String;[B)[B
    .locals 12
    .param p0, "newSCAddr"    # Ljava/lang/String;
    .param p1, "oldSCAddr"    # [B

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 307
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 308
    :cond_0
    const/16 v7, 0xc

    new-array v4, v7, [B

    .line 309
    .local v4, "scData":[B
    invoke-static {v4, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 310
    const-string v7, "SmsUsimHandler"

    const-string v8, "SMSPData SCAddr is Null: "

    invoke-static {v7, v8}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .end local v4    # "scData":[B
    :goto_0
    return-object v4

    .line 315
    :cond_1
    const/16 v7, 0x2b

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_2

    .line 316
    const/4 v0, 0x1

    .line 321
    .local v0, "InternationalIndicator":B
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 324
    .local v6, "tempString":Ljava/lang/String;
    :try_start_0
    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 329
    .local v5, "tempData":[B
    array-length v7, p1

    new-array v4, v7, [B

    .line 331
    .restart local v4    # "scData":[B
    invoke-static {v4, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 334
    array-length v7, v5

    div-int/lit8 v7, v7, 0x2

    array-length v8, v5

    rem-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    aput-byte v7, v4, v11

    .line 336
    aget-byte v7, p1, v9

    const/16 v8, 0xff

    if-eq v7, v8, :cond_3

    .line 337
    shl-int/lit8 v7, v0, 0x4

    aget-byte v8, p1, v9

    and-int/lit16 v8, v8, 0x8f

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v9

    .line 346
    :goto_2
    const/4 v2, 0x0

    .line 347
    .local v2, "i":I
    const/4 v3, 0x0

    .line 348
    .local v3, "j":I
    :goto_3
    add-int/lit8 v7, v2, 0x1

    array-length v8, v5

    if-ge v7, v8, :cond_4

    .line 349
    add-int/lit8 v7, v3, 0x2

    aget-byte v8, v5, v2

    and-int/lit8 v8, v8, 0xf

    add-int/lit8 v9, v2, 0x1

    aget-byte v9, v5, v9

    and-int/lit8 v9, v9, 0xf

    shl-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 348
    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 318
    .end local v0    # "InternationalIndicator":B
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "scData":[B
    .end local v5    # "tempData":[B
    .end local v6    # "tempString":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "InternationalIndicator":B
    goto :goto_1

    .line 325
    .restart local v6    # "tempString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    move-object v4, p1

    .line 326
    goto :goto_0

    .line 343
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v4    # "scData":[B
    .restart local v5    # "tempData":[B
    :cond_3
    shl-int/lit8 v7, v0, 0x4

    or-int/lit16 v7, v7, 0x81

    int-to-byte v7, v7

    aput-byte v7, v4, v9

    goto :goto_2

    .line 352
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    :cond_4
    array-length v7, v5

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_5

    .line 353
    add-int/lit8 v7, v3, 0x2

    aget-byte v8, v5, v2

    and-int/lit8 v8, v8, 0xf

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 356
    :cond_5
    const-string v7, "SmsUsimHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "scData"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 137
    const-string v1, "SmsUsimHandler"

    const-string v2, "getIccFileHandler"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/soi/SmsUsimHandler;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 139
    sget-object v1, Lcom/android/internal/telephony/soi/SmsUsimHandler;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v1, :cond_0

    .line 140
    const-string v1, "SmsUsimHandler"

    const-string v2, "fails to get UsimFileHandler"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .local v0, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :goto_0
    return-object v0

    .line 144
    .end local v0    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/soi/SmsUsimHandler;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/soi/SmsUsimHandler;->mUiccCardApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 145
    sget-object v1, Lcom/android/internal/telephony/soi/SmsUsimHandler;->mUiccCardApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-nez v1, :cond_1

    .line 146
    const-string v1, "SmsUsimHandler"

    const-string v2, "fails to get UsimFileHandler"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/soi/SmsUsimHandler;->mUiccCardApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 151
    .restart local v0    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    goto :goto_0
.end method

.method private readUsimRecord()V
    .locals 6

    .prologue
    const/16 v5, 0x6f43

    const/16 v4, 0x6f42

    const/4 v3, 0x1

    .line 90
    invoke-static {}, Lcom/android/internal/telephony/soi/SmsUsimHandler;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 91
    .local v0, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v0, :cond_0

    .line 92
    const-string v1, "SmsUsimHandler"

    const-string v2, "fails to get UsimFileHandler"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 95
    :cond_0
    const-string v1, "SmsUsimHandler"

    const-string v2, "readUsimRecord"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object v1, Lcom/android/internal/telephony/soi/SmsUsimHandler;->mInstance:Lcom/android/internal/telephony/soi/SmsUsimHandler;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/soi/SmsUsimHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v4, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 98
    sget-object v1, Lcom/android/internal/telephony/soi/SmsUsimHandler;->mInstance:Lcom/android/internal/telephony/soi/SmsUsimHandler;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/soi/SmsUsimHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method protected static setup(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const-string v0, "SmsUsimHandler"

    const-string v1, "setup()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/android/internal/telephony/soi/SmsUsimHandler;->mInstance:Lcom/android/internal/telephony/soi/SmsUsimHandler;

    if-nez v0, :cond_0

    .line 63
    const-string v0, "SmsUsimHandler"

    const-string v1, "setup() mInstance null"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/soi/SmsUsimHandler;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/soi/SmsUsimHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/soi/SmsUsimHandler;->mInstance:Lcom/android/internal/telephony/soi/SmsUsimHandler;

    .line 66
    return-void
.end method

.method public static updateUsimRecord(ILjava/lang/String;)V
    .locals 7
    .param p0, "efid"    # I
    .param p1, "stringData"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    .line 104
    const/4 v3, 0x0

    .line 105
    .local v3, "data":[B
    invoke-static {}, Lcom/android/internal/telephony/soi/SmsUsimHandler;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 106
    .local v0, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v0, :cond_0

    .line 107
    const-string v1, "SmsUsimHandler"

    const-string v2, "fails to get UsimFileHandler"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_0
    return-void

    .line 111
    :cond_0
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 119
    :pswitch_0
    sget-object v1, Lcom/android/internal/telephony/soi/SmsUsimHandler;->mSMSPType:Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;

    if-nez v1, :cond_1

    .line 120
    const-string v1, "SmsUsimHandler"

    const-string v2, "mSMSPType is null"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :pswitch_1
    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 114
    sget-object v1, Lcom/android/internal/telephony/soi/SmsUsimHandler;->mInstance:Lcom/android/internal/telephony/soi/SmsUsimHandler;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/android/internal/telephony/soi/SmsUsimHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 116
    const-string v1, "smss"

    invoke-static {v1, p1}, Lcom/lge/uicc/framework/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 123
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/soi/SmsUsimHandler;->mSMSPType:Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;

    sget-object v2, Lcom/android/internal/telephony/soi/SmsUsimHandler;->mSMSPType:Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;

    iget-object v2, v2, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->SVCCenterAddr:[B

    invoke-static {p1, v2}, Lcom/android/internal/telephony/soi/SmsUsimHandler;->encodeSCAddr(Ljava/lang/String;[B)[B

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->SVCCenterAddr:[B

    .line 124
    sget-object v1, Lcom/android/internal/telephony/soi/SmsUsimHandler;->mSMSPType:Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;

    invoke-static {v1}, Lcom/android/internal/telephony/soi/SmsUsimHandler;->composeSMSP(Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;)[B

    move-result-object v3

    .line 125
    const/4 v2, 0x1

    const/4 v4, 0x0

    sget-object v1, Lcom/android/internal/telephony/soi/SmsUsimHandler;->mInstance:Lcom/android/internal/telephony/soi/SmsUsimHandler;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lcom/android/internal/telephony/soi/SmsUsimHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 127
    const-string v1, "scaddress"

    invoke-static {v1, p1}, Lcom/lge/uicc/framework/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x6f42
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 156
    const/4 v1, 0x0

    .line 159
    .local v1, "data":[B
    const/4 v2, 0x0

    .line 161
    .local v2, "dataString":Ljava/lang/String;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 163
    :pswitch_0
    const-string v4, "SmsUsimHandler"

    const-string v5, "EVENT_READ_RECORD_DONE"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 165
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 166
    const-string v4, "SmsUsimHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in read: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v1, v4

    check-cast v1, [B

    .line 170
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 172
    .local v3, "efid":I
    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 174
    :pswitch_1
    const-string v4, "SmsUsimHandler"

    const-string v5, "EVENT_READ_RECORD_DONE EF_SMSP"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-static {v1}, Lcom/android/internal/telephony/soi/SmsUsimHandler;->analyzeSMSP([B)Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/soi/SmsUsimHandler;->mSMSPType:Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;

    .line 176
    sget-object v4, Lcom/android/internal/telephony/soi/SmsUsimHandler;->mSMSPType:Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;

    if-eqz v4, :cond_2

    .line 177
    sget-object v4, Lcom/android/internal/telephony/soi/SmsUsimHandler;->mSMSPType:Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;

    iget-object v4, v4, Lcom/android/internal/telephony/soi/SmsUsimHandler$SMSPType;->SVCCenterAddr:[B

    invoke-static {v4}, Lcom/android/internal/telephony/soi/SmsUsimHandler;->decodeSCAddr([B)Ljava/lang/String;

    move-result-object v2

    .line 179
    :cond_2
    const-string v4, "scaddress"

    invoke-static {v4, v2}, Lcom/lge/uicc/framework/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 182
    :pswitch_2
    const-string v4, "SmsUsimHandler"

    const-string v5, "EVENT_READ_RECORD_DONE EF_SMSS"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 184
    const-string v4, "smss"

    invoke-static {v4, v2}, Lcom/lge/uicc/framework/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 192
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "efid":I
    :pswitch_3
    const-string v4, "SmsUsimHandler"

    const-string v5, "EVENT_UPDATE_RECORD_DONE"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 194
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 195
    const-string v4, "SmsUsimHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in update: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 172
    :pswitch_data_1
    .packed-switch 0x6f42
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
