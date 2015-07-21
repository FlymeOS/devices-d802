.class public Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;
.super Ljava/lang/Object;
.source "SimCardAuthenticationManagerImpl.java"

# interfaces
.implements Lcom/orange/authentication/simcard/SimCardAuthenticationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "SimCardAuthenticationManagerImpl"

.field private static cLGUiccManager:Ljava/lang/Class;

.field private static mGenericIO:Ljava/lang/reflect/Method;

.field private static mGetProperty:Ljava/lang/reflect/Method;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    sput-object v1, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->mGenericIO:Ljava/lang/reflect/Method;

    .line 48
    sput-object v1, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->mGetProperty:Ljava/lang/reflect/Method;

    .line 52
    :try_start_0
    const-string v1, "com.lge.uicc.LGUiccManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->cLGUiccManager:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 53
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 54
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->context:Landroid/content/Context;

    .line 99
    iput-object p1, p0, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->context:Landroid/content/Context;

    .line 100
    return-void
.end method

.method private getGenericIO(Ljava/lang/String;[B)[B
    .locals 7
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "in"    # [B

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 82
    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, [B

    aput-object v3, v2, v5

    .line 83
    .local v2, "parms":[Ljava/lang/Class;
    new-array v0, v6, [Ljava/lang/Object;

    .line 84
    .local v0, "args":[Ljava/lang/Object;
    aput-object p1, v0, v4

    .line 85
    aput-object p2, v0, v5

    .line 88
    :try_start_0
    sget-object v3, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->cLGUiccManager:Ljava/lang/Class;

    const-string v4, "genericIO"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->mGenericIO:Ljava/lang/reflect/Method;

    .line 89
    sget-object v3, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->mGenericIO:Ljava/lang/reflect/Method;

    sget-object v4, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->cLGUiccManager:Ljava/lang/Class;

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    check-cast v3, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-object v3

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 514
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private getSimtype(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 65
    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    .line 66
    .local v2, "parms":[Ljava/lang/Class;
    new-array v0, v6, [Ljava/lang/Object;

    .line 67
    .local v0, "args":[Ljava/lang/Object;
    aput-object p1, v0, v4

    .line 68
    aput-object p2, v0, v5

    .line 71
    :try_start_0
    sget-object v3, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->cLGUiccManager:Ljava/lang/Class;

    const-string v4, "getProperty"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->mGetProperty:Ljava/lang/reflect/Method;

    .line 73
    sget-object v3, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->mGetProperty:Ljava/lang/reflect/Method;

    sget-object v4, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->cLGUiccManager:Ljava/lang/Class;

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-object v3

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    const-string v3, ""

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 519
    const-string v0, "SimCardAuthenticationManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ORANGE_AUTH] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    return-void
.end method


# virtual methods
.method public akaAuthentication([B[B)Lcom/orange/authentication/simcard/AkaAuthenticationResult;
    .locals 26
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/orange/authentication/simcard/ServiceFailureException;,
            Lcom/orange/authentication/simcard/SimNotReadyException;,
            Lcom/orange/authentication/simcard/UserAuthenticationRejectException;,
            Lcom/orange/authentication/simcard/NoSuchAuthenticationException;,
            Lcom/orange/authentication/simcard/SynchronisationFailureException;
        }
    .end annotation

    .prologue
    .line 338
    const/16 v5, -0x25

    .line 339
    .local v5, "WORK_CODE":B
    const/16 v4, -0x24

    .line 341
    .local v4, "SYNC_CODE":B
    invoke-direct/range {p0 .. p0}, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v14

    .line 346
    .local v14, "it":Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "com.orange.permission.SIMCARD_AUTHENTICATION"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 356
    :cond_0
    new-instance v23, Ljava/lang/NullPointerException;

    invoke-direct/range {v23 .. v23}, Ljava/lang/NullPointerException;-><init>()V

    throw v23

    .line 348
    :catch_0
    move-exception v10

    .line 350
    .local v10, "e":Ljava/lang/SecurityException;
    throw v10

    .line 361
    .end local v10    # "e":Ljava/lang/SecurityException;
    :cond_1
    sget-object v23, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl$1;->$SwitchMap$com$orange$authentication$simcard$SimCardAuthenticationManager$SimCardType:[I

    invoke-virtual/range {p0 .. p0}, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->getSimCardType()Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ordinal()I

    move-result v24

    aget v23, v23, v24

    packed-switch v23, :pswitch_data_0

    .line 379
    const/16 v18, 0x0

    .line 380
    .local v18, "rc":I
    const/4 v11, 0x0

    .line 381
    .local v11, "idx":I
    const/16 v16, 0x0

    .line 382
    .local v16, "len":I
    const/16 v21, 0x0

    .line 383
    .local v21, "res_buf":[B
    const/16 v19, 0x0

    .line 384
    .local v19, "req_buf":[B
    const/16 v17, 0x0

    .line 386
    .local v17, "p":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v17

    .line 387
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 388
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 389
    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    invoke-virtual/range {v17 .. v17}, Landroid/os/Parcel;->marshall()[B

    move-result-object v19

    .line 391
    invoke-virtual/range {v17 .. v17}, Landroid/os/Parcel;->recycle()V

    .line 392
    const/16 v17, 0x0

    .line 394
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "EAPAKA_AUTH IN: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->log(Ljava/lang/String;)V

    .line 395
    const-string v23, "EAPAKA_AUTH"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->getGenericIO(Ljava/lang/String;[B)[B

    move-result-object v21

    .line 397
    if-nez v21, :cond_2

    .line 398
    new-instance v23, Lcom/orange/authentication/simcard/ServiceFailureException;

    invoke-direct/range {v23 .. v23}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>()V

    throw v23

    .line 364
    .end local v11    # "idx":I
    .end local v16    # "len":I
    .end local v17    # "p":Landroid/os/Parcel;
    .end local v18    # "rc":I
    .end local v19    # "req_buf":[B
    .end local v21    # "res_buf":[B
    :pswitch_0
    new-instance v23, Lcom/orange/authentication/simcard/ServiceFailureException;

    invoke-direct/range {v23 .. v23}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>()V

    throw v23

    .line 367
    :pswitch_1
    new-instance v23, Lcom/orange/authentication/simcard/SimNotReadyException;

    invoke-direct/range {v23 .. v23}, Lcom/orange/authentication/simcard/SimNotReadyException;-><init>()V

    throw v23

    .line 372
    :pswitch_2
    new-instance v23, Lcom/orange/authentication/simcard/NoSuchAuthenticationException;

    invoke-direct/range {v23 .. v23}, Lcom/orange/authentication/simcard/NoSuchAuthenticationException;-><init>()V

    throw v23

    .line 400
    .restart local v11    # "idx":I
    .restart local v16    # "len":I
    .restart local v17    # "p":Landroid/os/Parcel;
    .restart local v18    # "rc":I
    .restart local v19    # "req_buf":[B
    .restart local v21    # "res_buf":[B
    :cond_2
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "EAPAKA_AUTH OUT: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->log(Ljava/lang/String;)V

    .line 403
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "res_buf : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->log(Ljava/lang/String;)V

    .line 406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v17

    .line 407
    const/16 v23, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 408
    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 411
    invoke-virtual/range {v17 .. v17}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 413
    if-eqz v18, :cond_3

    .line 415
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Fail result : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->log(Ljava/lang/String;)V

    .line 416
    new-instance v23, Lcom/orange/authentication/simcard/ServiceFailureException;

    invoke-direct/range {v23 .. v23}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>()V

    throw v23

    .line 419
    :cond_3
    invoke-virtual/range {v17 .. v17}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v22

    .line 421
    .local v22, "response":[B
    const/16 v23, 0x0

    aget-byte v9, v22, v23

    .line 423
    .local v9, "code":B
    const/16 v23, -0x24

    move/from16 v0, v23

    if-ne v9, v0, :cond_5

    .line 426
    const/16 v23, 0x1

    aget-byte v7, v22, v23

    .line 428
    .local v7, "auts_size":I
    if-gtz v7, :cond_4

    .line 429
    new-instance v23, Lcom/orange/authentication/simcard/ServiceFailureException;

    invoke-direct/range {v23 .. v23}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>()V

    throw v23

    .line 431
    :cond_4
    new-array v6, v7, [B

    .line 433
    .local v6, "auts":[B
    const/16 v23, 0x2

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v6, v2, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 435
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "auts_size : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->log(Ljava/lang/String;)V

    .line 438
    new-instance v23, Lcom/orange/authentication/simcard/SynchronisationFailureException;

    move-object/from16 v0, v23

    invoke-direct {v0, v6}, Lcom/orange/authentication/simcard/SynchronisationFailureException;-><init>([B)V

    throw v23

    .line 440
    .end local v6    # "auts":[B
    .end local v7    # "auts_size":I
    :cond_5
    const/16 v23, -0x25

    move/from16 v0, v23

    if-ne v9, v0, :cond_6

    .line 442
    const/16 v20, 0x0

    .line 443
    .local v20, "res":[B
    const/4 v8, 0x0

    .line 444
    .local v8, "ck":[B
    const/4 v13, 0x0

    .line 445
    .local v13, "ik":[B
    const/4 v15, 0x0

    .line 447
    .local v15, "kc":[B
    const/4 v11, 0x1

    .line 448
    const/16 v16, 0x0

    .line 451
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "idx":I
    .local v12, "idx":I
    aget-byte v16, v22, v11

    .line 453
    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 455
    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v16

    invoke-static {v0, v12, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 457
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "RES len : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->log(Ljava/lang/String;)V

    .line 460
    add-int/lit8 v11, v16, 0x2

    .line 463
    .end local v12    # "idx":I
    .restart local v11    # "idx":I
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "idx":I
    .restart local v12    # "idx":I
    aget-byte v16, v22, v11

    .line 465
    move/from16 v0, v16

    new-array v8, v0, [B

    .line 467
    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v16

    invoke-static {v0, v12, v8, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 469
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "CK len : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->log(Ljava/lang/String;)V

    .line 472
    add-int v11, v12, v16

    .line 475
    .end local v12    # "idx":I
    .restart local v11    # "idx":I
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "idx":I
    .restart local v12    # "idx":I
    aget-byte v16, v22, v11

    .line 477
    move/from16 v0, v16

    new-array v13, v0, [B

    .line 479
    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v16

    invoke-static {v0, v12, v13, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 481
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "CK len : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->log(Ljava/lang/String;)V

    .line 484
    add-int v11, v12, v16

    .line 487
    .end local v12    # "idx":I
    .restart local v11    # "idx":I
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "idx":I
    .restart local v12    # "idx":I
    aget-byte v16, v22, v11

    .line 489
    move/from16 v0, v16

    new-array v15, v0, [B

    .line 491
    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v16

    invoke-static {v0, v12, v15, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 493
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "KC len : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->log(Ljava/lang/String;)V

    .line 496
    add-int v11, v12, v16

    .line 498
    .end local v12    # "idx":I
    .restart local v11    # "idx":I
    new-instance v23, Lcom/orange/internal/authentication/simcard/AkaAuthenticationResultImpl;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v8, v13, v15}, Lcom/orange/internal/authentication/simcard/AkaAuthenticationResultImpl;-><init>([B[B[B[B)V

    return-object v23

    .line 502
    .end local v8    # "ck":[B
    .end local v13    # "ik":[B
    .end local v15    # "kc":[B
    .end local v20    # "res":[B
    :cond_6
    new-instance v23, Lcom/orange/authentication/simcard/ServiceFailureException;

    invoke-direct/range {v23 .. v23}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>()V

    throw v23

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getSimCardType()Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;
    .locals 6

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 115
    .local v1, "it":Lcom/android/internal/telephony/ITelephony;
    const-string v3, "proxy.app_type"

    const-string v4, ""

    invoke-direct {p0, v3, v4}, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->getSimtype(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "sim_type":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM_TYPE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->log(Ljava/lang/String;)V

    .line 119
    if-nez v1, :cond_0

    .line 120
    const-string v3, "getSimCardType, it is null"

    invoke-direct {p0, v3}, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->log(Ljava/lang/String;)V

    .line 121
    sget-object v3, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ERROR:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    .line 157
    :goto_0
    return-object v3

    .line 128
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->context:Landroid/content/Context;

    const-string v4, "com.orange.permission.SIMCARD_AUTHENTICATION"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :try_start_1
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->hasIccCard()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 139
    const-string v3, "SIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    sget-object v3, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->SIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/SecurityException;
    throw v0

    .line 141
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_1
    :try_start_2
    const-string v3, "USIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 142
    sget-object v3, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->USIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    goto :goto_0

    .line 143
    :cond_2
    const-string v3, "RUIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 144
    sget-object v3, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->RUIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    goto :goto_0

    .line 145
    :cond_3
    const-string v3, "CSIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 146
    sget-object v3, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->CSIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    goto :goto_0

    .line 148
    :cond_4
    sget-object v3, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->UNKNOWN:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    goto :goto_0

    .line 152
    :cond_5
    sget-object v3, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ABSENT:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 155
    :catch_1
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ERROR:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    goto :goto_0
.end method

.method public gsmAuthentication([B)Lcom/orange/authentication/simcard/GsmAuthenticationResult;
    .locals 17
    .param p1, "rand"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/orange/authentication/simcard/ServiceFailureException;,
            Lcom/orange/authentication/simcard/SimNotReadyException;,
            Lcom/orange/authentication/simcard/UserAuthenticationRejectException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-direct/range {p0 .. p0}, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 194
    .local v5, "it":Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->context:Landroid/content/Context;

    const-string v15, "com.orange.permission.SIMCARD_AUTHENTICATION"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    if-nez p1, :cond_0

    .line 203
    new-instance v14, Ljava/lang/NullPointerException;

    invoke-direct {v14}, Ljava/lang/NullPointerException;-><init>()V

    throw v14

    .line 196
    :catch_0
    move-exception v2

    .line 198
    .local v2, "e":Ljava/lang/SecurityException;
    throw v2

    .line 206
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_0
    move-object/from16 v0, p1

    array-length v14, v0

    const/16 v15, 0x100

    if-le v14, v15, :cond_1

    .line 207
    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v14

    .line 210
    :cond_1
    sget-object v14, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl$1;->$SwitchMap$com$orange$authentication$simcard$SimCardAuthenticationManager$SimCardType:[I

    invoke-virtual/range {p0 .. p0}, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->getSimCardType()Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    move-result-object v15

    invoke-virtual {v15}, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 223
    const/4 v9, 0x0

    .line 224
    .local v9, "rc":I
    const/4 v3, 0x0

    .line 225
    .local v3, "idx":I
    const/4 v7, 0x0

    .line 226
    .local v7, "len":I
    const/4 v11, 0x0

    .line 227
    .local v11, "res_buf":[B
    const/4 v10, 0x0

    .line 228
    .local v10, "req_buf":[B
    const/4 v14, 0x0

    new-array v1, v14, [B

    .line 229
    .local v1, "autn":[B
    const/4 v8, 0x0

    .line 231
    .local v8, "p":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    .line 232
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 233
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 234
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    invoke-virtual {v8}, Landroid/os/Parcel;->marshall()[B

    move-result-object v10

    .line 236
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 237
    const/4 v8, 0x0

    .line 239
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "GSM_AUTH IN: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->log(Ljava/lang/String;)V

    .line 240
    const-string v14, "EAPAKA_AUTH"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v10}, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->getGenericIO(Ljava/lang/String;[B)[B

    move-result-object v11

    .line 241
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "GSM_AUTH OUT: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->log(Ljava/lang/String;)V

    .line 243
    if-gtz v9, :cond_2

    .line 244
    new-instance v14, Lcom/orange/authentication/simcard/ServiceFailureException;

    invoke-direct {v14}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>()V

    throw v14

    .line 213
    .end local v1    # "autn":[B
    .end local v3    # "idx":I
    .end local v7    # "len":I
    .end local v8    # "p":Landroid/os/Parcel;
    .end local v9    # "rc":I
    .end local v10    # "req_buf":[B
    .end local v11    # "res_buf":[B
    :pswitch_0
    new-instance v14, Lcom/orange/authentication/simcard/ServiceFailureException;

    invoke-direct {v14}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>()V

    throw v14

    .line 216
    :pswitch_1
    new-instance v14, Lcom/orange/authentication/simcard/SimNotReadyException;

    invoke-direct {v14}, Lcom/orange/authentication/simcard/SimNotReadyException;-><init>()V

    throw v14

    .line 247
    .restart local v1    # "autn":[B
    .restart local v3    # "idx":I
    .restart local v7    # "len":I
    .restart local v8    # "p":Landroid/os/Parcel;
    .restart local v9    # "rc":I
    .restart local v10    # "req_buf":[B
    .restart local v11    # "res_buf":[B
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "rc : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->log(Ljava/lang/String;)V

    .line 249
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    .line 250
    const/4 v14, 0x0

    array-length v15, v11

    invoke-virtual {v8, v11, v14, v15}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 251
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 254
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 256
    if-eqz v9, :cond_3

    .line 258
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Fail result : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->log(Ljava/lang/String;)V

    .line 259
    new-instance v14, Lcom/orange/authentication/simcard/ServiceFailureException;

    invoke-direct {v14}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>()V

    throw v14

    .line 262
    :cond_3
    invoke-virtual {v8}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    .line 264
    .local v12, "response":[B
    const/4 v13, 0x0

    .line 265
    .local v13, "sres":[B
    const/4 v6, 0x0

    .line 268
    .local v6, "kc":[B
    const/4 v3, 0x0

    .line 270
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .local v4, "idx":I
    aget-byte v7, v12, v3

    .line 271
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SRES len : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->log(Ljava/lang/String;)V

    .line 273
    if-gtz v7, :cond_4

    .line 274
    new-instance v14, Lcom/orange/authentication/simcard/ServiceFailureException;

    invoke-direct {v14}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>()V

    throw v14

    .line 276
    :cond_4
    new-array v13, v7, [B

    .line 278
    const/4 v14, 0x0

    invoke-static {v12, v4, v13, v14, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 282
    add-int/lit8 v3, v7, 0x1

    .line 286
    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aget-byte v7, v12, v3

    .line 287
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "KC len : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/orange/internal/authentication/simcard/SimCardAuthenticationManagerImpl;->log(Ljava/lang/String;)V

    .line 289
    if-gtz v7, :cond_5

    .line 290
    new-instance v14, Lcom/orange/authentication/simcard/ServiceFailureException;

    invoke-direct {v14}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>()V

    throw v14

    .line 292
    :cond_5
    new-array v6, v7, [B

    .line 294
    const/4 v14, 0x0

    invoke-static {v12, v4, v6, v14, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 297
    add-int v3, v4, v7

    .line 299
    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    new-instance v14, Lcom/orange/internal/authentication/simcard/GsmAuthenticationResultImpl;

    invoke-direct {v14, v13, v6}, Lcom/orange/internal/authentication/simcard/GsmAuthenticationResultImpl;-><init>([B[B)V

    return-object v14

    .line 210
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
