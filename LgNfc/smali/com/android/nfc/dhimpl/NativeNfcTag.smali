.class public Lcom/android/nfc/dhimpl/NativeNfcTag;
.super Ljava/lang/Object;
.source "NativeNfcTag.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost$TagEndpoint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field static final STATUS_CODE_TARGET_LOST:I = 0x92


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConnectedHandle:I

.field private mConnectedTechIndex:I

.field private mIsPresent:Z

.field private mTechActBytes:[[B

.field private mTechExtras:[Landroid/os/Bundle;

.field private mTechHandles:[I

.field private mTechLibNfcTypes:[I

.field private mTechList:[I

.field private mTechPollBytes:[[B

.field private mUid:[B

.field private mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-string v0, "NativeNfcTag"

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->TAG:Ljava/lang/String;

    .line 73
    return-void
.end method

.method static synthetic access$002(Lcom/android/nfc/dhimpl/NativeNfcTag;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/dhimpl/NativeNfcTag;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mIsPresent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/nfc/dhimpl/NativeNfcTag;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/dhimpl/NativeNfcTag;

    .prologue
    .line 41
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    return v0
.end method

.method private addTechnology(III)V
    .locals 6
    .param p1, "tech"    # I
    .param p2, "handle"    # I
    .param p3, "libnfctype"    # I

    .prologue
    const/4 v5, 0x0

    .line 457
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v1, v3, [I

    .line 458
    .local v1, "mNewTechList":[I
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 459
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v3, v3

    aput p1, v1, v3

    .line 460
    iput-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    .line 462
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [I

    .line 463
    .local v0, "mNewHandleList":[I
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v4, v4

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 464
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v3, v3

    aput p2, v0, v3

    .line 465
    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    .line 467
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [I

    .line 468
    .local v2, "mNewTypeList":[I
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 469
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v3, v3

    aput p3, v2, v3

    .line 470
    iput-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    .line 471
    return-void
.end method

.method private native doCheckNdef([I)I
.end method

.method private native doConnect(I)I
.end method

.method private native doRead()[B
.end method

.method private native doTransceive([BZ[I)[B
.end method

.method private native doWrite([B)Z
.end method

.method private getConnectedHandle()I
    .locals 1

    .prologue
    .line 432
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    return v0
.end method

.method private getConnectedLibNfcType()I
    .locals 2

    .prologue
    .line 436
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    iget v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    aget v0, v0, v1

    .line 439
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNdefType(II)I
    .locals 1
    .param p1, "libnfctype"    # I
    .param p2, "javatype"    # I

    .prologue
    .line 453
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doGetNdefType(II)I

    move-result v0

    return v0
.end method

.method private getTechIndex(I)I
    .locals 3
    .param p1, "tech"    # I

    .prologue
    .line 554
    const/4 v1, -0x1

    .line 555
    .local v1, "techIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 556
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_1

    .line 557
    move v1, v0

    .line 561
    :cond_0
    return v1

    .line 555
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private hasTech(I)Z
    .locals 3
    .param p1, "tech"    # I

    .prologue
    .line 565
    const/4 v0, 0x0

    .line 566
    .local v0, "hasTech":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 567
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_1

    .line 568
    const/4 v0, 0x1

    .line 572
    :cond_0
    return v0

    .line 566
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private hasTechOnHandle(II)Z
    .locals 3
    .param p1, "tech"    # I
    .param p2, "handle"    # I

    .prologue
    .line 576
    const/4 v0, 0x0

    .line 577
    .local v0, "hasTech":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 578
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    aget v2, v2, v1

    if-ne v2, p2, :cond_1

    .line 579
    const/4 v0, 0x1

    .line 583
    :cond_0
    return v0

    .line 577
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isUltralightC()Z
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x6

    const/4 v6, 0x2

    .line 599
    const/4 v0, 0x0

    .line 600
    .local v0, "isUltralightC":Z
    new-array v1, v6, [B

    fill-array-data v1, :array_0

    .line 601
    .local v1, "readCmd":[B
    new-array v3, v6, [I

    .line 602
    .local v3, "retCode":[I
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v3}, Lcom/android/nfc/dhimpl/NativeNfcTag;->transceive([BZ[I)[B

    move-result-object v2

    .line 603
    .local v2, "respData":[B
    if-eqz v2, :cond_0

    array-length v4, v2

    const/16 v5, 0x10

    if-ne v4, v5, :cond_0

    .line 606
    aget-byte v4, v2, v6

    if-nez v4, :cond_2

    const/4 v4, 0x3

    aget-byte v4, v2, v4

    if-nez v4, :cond_2

    aget-byte v4, v2, v8

    if-nez v4, :cond_2

    aget-byte v4, v2, v9

    if-nez v4, :cond_2

    aget-byte v4, v2, v7

    if-nez v4, :cond_2

    const/4 v4, 0x7

    aget-byte v4, v2, v4

    if-nez v4, :cond_2

    .line 610
    const/16 v4, 0x8

    aget-byte v4, v2, v4

    if-ne v4, v6, :cond_1

    const/16 v4, 0x9

    aget-byte v4, v2, v4

    if-nez v4, :cond_1

    .line 612
    const/4 v0, 0x1

    .line 637
    :cond_0
    :goto_0
    return v0

    .line 616
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 621
    :cond_2
    aget-byte v4, v2, v8

    const/16 v5, -0x1f

    if-ne v4, v5, :cond_3

    aget-byte v4, v2, v9

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x20

    if-ge v4, v5, :cond_3

    .line 628
    aget-byte v4, v2, v7

    and-int/lit16 v4, v4, 0xff

    if-le v4, v7, :cond_0

    .line 629
    const/4 v0, 0x1

    goto :goto_0

    .line 633
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 600
    :array_0
    .array-data 1
        0x30t
        0x2t
    .end array-data
.end method


# virtual methods
.method public addNdefFormatableTechnology(II)V
    .locals 1
    .param p1, "handle"    # I
    .param p2, "libnfcType"    # I

    .prologue
    .line 513
    monitor-enter p0

    .line 514
    const/4 v0, 0x7

    :try_start_0
    invoke-direct {p0, v0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addTechnology(III)V

    .line 515
    monitor-exit p0

    .line 516
    return-void

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addNdefTechnology(Landroid/nfc/NdefMessage;IIIII)V
    .locals 7
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .param p2, "handle"    # I
    .param p3, "libnfcType"    # I
    .param p4, "javaType"    # I
    .param p5, "maxLength"    # I
    .param p6, "cardState"    # I

    .prologue
    .line 525
    monitor-enter p0

    .line 526
    const/4 v4, 0x6

    :try_start_0
    invoke-direct {p0, v4, p2, p3}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addTechnology(III)V

    .line 528
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 529
    .local v1, "extras":Landroid/os/Bundle;
    const-string v4, "ndefmsg"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 530
    const-string v4, "ndefmaxlength"

    invoke-virtual {v1, v4, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 531
    const-string v4, "ndefcardstate"

    invoke-virtual {v1, v4, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 532
    const-string v4, "ndeftype"

    invoke-direct {p0, p3, p4}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getNdefType(II)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 534
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    if-nez v4, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getTechExtras()[Landroid/os/Bundle;

    move-result-object v0

    .line 538
    .local v0, "builtTechExtras":[Landroid/os/Bundle;
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aput-object v1, v0, v4

    .line 550
    .end local v0    # "builtTechExtras":[Landroid/os/Bundle;
    :goto_0
    monitor-exit p0

    .line 551
    return-void

    .line 542
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getTechExtras()[Landroid/os/Bundle;

    move-result-object v3

    .line 543
    .local v3, "oldTechExtras":[Landroid/os/Bundle;
    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    new-array v2, v4, [Landroid/os/Bundle;

    .line 544
    .local v2, "newTechExtras":[Landroid/os/Bundle;
    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, v3

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 545
    array-length v4, v3

    aput-object v1, v2, v4

    .line 546
    iput-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    goto :goto_0

    .line 550
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "newTechExtras":[Landroid/os/Bundle;
    .end local v3    # "oldTechExtras":[Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public declared-synchronized checkNdef([I)Z
    .locals 1
    .param p1, "ndefinfo"    # [I

    .prologue
    .line 326
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->checkNdefWithStatus([I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized checkNdefWithStatus([I)I
    .locals 2
    .param p1, "ndefinfo"    # [I

    .prologue
    .line 315
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 318
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doCheckNdef([I)I

    move-result v0

    .line 319
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 320
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    :cond_1
    monitor-exit p0

    return v0

    .line 315
    .end local v0    # "status":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized connect(I)Z
    .locals 1
    .param p1, "technology"    # I

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->connectWithStatus(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectWithStatus(I)I
    .locals 4
    .param p1, "technology"    # I

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v2}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 154
    :cond_0
    const/4 v1, -0x1

    .line 155
    .local v1, "status":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 156
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_7

    .line 158
    iget v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    aget v3, v3, v0

    if-eq v2, v3, :cond_4

    .line 165
    iget v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 168
    invoke-direct {p0, v0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doConnect(I)I

    move-result v1

    .line 175
    :goto_1
    if-nez v1, :cond_1

    .line 176
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    aget v2, v2, v0

    iput v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    .line 177
    iput v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    .line 219
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v2, :cond_2

    .line 220
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v2}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :cond_2
    monitor-exit p0

    return v1

    .line 171
    :cond_3
    :try_start_1
    const-string v2, "NativeNfcTag"

    const-string v3, "Connect to a tech with a different handle"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p0, v0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnectWithStatus(I)I

    move-result v1

    goto :goto_1

    .line 186
    :cond_4
    const/4 v2, 0x6

    if-eq p1, v2, :cond_5

    const/4 v2, 0x7

    if-ne p1, v2, :cond_6

    .line 189
    :cond_5
    const/4 v0, 0x0

    .line 192
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnectWithStatus(I)I

    move-result v1

    .line 211
    if-nez v1, :cond_1

    .line 212
    iput v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 151
    .end local v0    # "i":I
    .end local v1    # "status":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 155
    .restart local v0    # "i":I
    .restart local v1    # "status":I
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized disconnect()Z
    .locals 2

    .prologue
    .line 250
    monitor-enter p0

    const/4 v0, 0x0

    .line 252
    .local v0, "result":Z
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mIsPresent:Z

    .line 253
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->end()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    .line 262
    const/4 v0, 0x1

    .line 267
    :goto_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    .line 268
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    monitor-exit p0

    return v0

    .line 264
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doDisconnect()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    goto :goto_1

    .line 250
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 258
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method native doDisconnect()Z
.end method

.method native doGetNdefType(II)I
.end method

.method native doHandleReconnect(I)I
.end method

.method native doIsIsoDepNdefFormatable([B[B)Z
.end method

.method native doMakeReadonly([B)Z
.end method

.method native doNdefFormat([B)Z
.end method

.method native doPresenceCheck()Z
.end method

.method native doReconnect()I
.end method

.method public findAndReadNdef()Landroid/nfc/NdefMessage;
    .locals 30

    .prologue
    .line 736
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getTechList()[I

    move-result-object v29

    .line 737
    .local v29, "technologies":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    move-object/from16 v23, v0

    .line 738
    .local v23, "handles":[I
    const/16 v25, 0x0

    .line 739
    .local v25, "ndefMsg":Landroid/nfc/NdefMessage;
    const/16 v21, 0x0

    .line 740
    .local v21, "foundFormattable":Z
    const/16 v19, 0x0

    .line 741
    .local v19, "formattableHandle":I
    const/16 v20, 0x0

    .line 744
    .local v20, "formattableLibNfcType":I
    const/16 v28, 0x0

    .local v28, "techIndex":I
    :goto_0
    move-object/from16 v0, v29

    array-length v3, v0

    move/from16 v0, v28

    if-ge v0, v3, :cond_a

    .line 746
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_1
    move/from16 v0, v24

    move/from16 v1, v28

    if-ge v0, v1, :cond_1

    .line 747
    aget v3, v23, v24

    aget v5, v23, v28

    if-ne v3, v5, :cond_0

    .line 746
    :cond_0
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 752
    :cond_1
    aget v3, v29, v28

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/nfc/dhimpl/NativeNfcTag;->connectWithStatus(I)I

    move-result v27

    .line 753
    .local v27, "status":I
    if-eqz v27, :cond_4

    .line 754
    const-string v3, "NativeNfcTag"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connect Failed - status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const/16 v3, 0x92

    move/from16 v0, v27

    if-ne v0, v3, :cond_9

    move-object/from16 v4, v25

    .line 819
    .end local v24    # "i":I
    .end local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    .end local v27    # "status":I
    .local v4, "ndefMsg":Landroid/nfc/NdefMessage;
    :cond_2
    :goto_2
    if-nez v4, :cond_3

    if-eqz v21, :cond_3

    .line 822
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addNdefFormatableTechnology(II)V

    .line 827
    :cond_3
    return-object v4

    .line 761
    .end local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v24    # "i":I
    .restart local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v27    # "status":I
    :cond_4
    if-nez v21, :cond_6

    .line 762
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->isNdefFormatable()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 763
    const/16 v21, 0x1

    .line 764
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedHandle()I

    move-result v19

    .line 765
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedLibNfcType()I

    move-result v20

    .line 770
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnect()Z

    .line 773
    :cond_6
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v26, v0

    .line 774
    .local v26, "ndefinfo":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->checkNdefWithStatus([I)I

    move-result v27

    .line 775
    if-eqz v27, :cond_7

    .line 776
    const-string v3, "NativeNfcTag"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Check NDEF Failed - status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const/16 v3, 0x92

    move/from16 v0, v27

    if-ne v0, v3, :cond_9

    move-object/from16 v4, v25

    .line 778
    .end local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    goto :goto_2

    .line 784
    .end local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    :cond_7
    const/16 v22, 0x0

    .line 786
    .local v22, "generateEmptyNdef":Z
    const/4 v3, 0x0

    aget v8, v26, v3

    .line 787
    .local v8, "supportedNdefLength":I
    const/4 v3, 0x1

    aget v9, v26, v3

    .line 788
    .local v9, "cardState":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->readNdef()[B

    move-result-object v17

    .line 789
    .local v17, "buff":[B
    if-eqz v17, :cond_8

    .line 791
    :try_start_0
    new-instance v4, Landroid/nfc/NdefMessage;

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    .end local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedHandle()I

    move-result v5

    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedLibNfcType()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedTechnology()I

    move-result v7

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addNdefTechnology(Landroid/nfc/NdefMessage;IIIII)V

    .line 797
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnect()Z
    :try_end_1
    .catch Landroid/nfc/FormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 806
    :goto_3
    if-eqz v22, :cond_2

    .line 807
    const/4 v4, 0x0

    .line 808
    const/4 v11, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedHandle()I

    move-result v12

    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedLibNfcType()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedTechnology()I

    move-result v14

    move-object/from16 v10, p0

    move v15, v8

    move/from16 v16, v9

    invoke-virtual/range {v10 .. v16}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addNdefTechnology(Landroid/nfc/NdefMessage;IIIII)V

    .line 813
    const/16 v21, 0x0

    .line 814
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnect()Z

    goto/16 :goto_2

    .line 798
    .end local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    :catch_0
    move-exception v18

    move-object/from16 v4, v25

    .line 800
    .end local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    .local v18, "e":Landroid/nfc/FormatException;
    :goto_4
    const/16 v22, 0x1

    .line 801
    goto :goto_3

    .line 803
    .end local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    .end local v18    # "e":Landroid/nfc/FormatException;
    .restart local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    :cond_8
    const/16 v22, 0x1

    move-object/from16 v4, v25

    .end local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    goto :goto_3

    .line 744
    .end local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    .end local v8    # "supportedNdefLength":I
    .end local v9    # "cardState":I
    .end local v17    # "buff":[B
    .end local v22    # "generateEmptyNdef":Z
    .end local v26    # "ndefinfo":[I
    .restart local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    :cond_9
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_0

    .line 798
    .end local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v8    # "supportedNdefLength":I
    .restart local v9    # "cardState":I
    .restart local v17    # "buff":[B
    .restart local v22    # "generateEmptyNdef":Z
    .restart local v26    # "ndefinfo":[I
    :catch_1
    move-exception v18

    goto :goto_4

    .end local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    .end local v8    # "supportedNdefLength":I
    .end local v9    # "cardState":I
    .end local v17    # "buff":[B
    .end local v22    # "generateEmptyNdef":Z
    .end local v24    # "i":I
    .end local v26    # "ndefinfo":[I
    .end local v27    # "status":I
    .restart local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    :cond_a
    move-object/from16 v4, v25

    .end local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    goto/16 :goto_2
.end method

.method public declared-synchronized formatNdef([B)Z
    .locals 2
    .param p1, "key"    # [B

    .prologue
    .line 371
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 374
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doNdefFormat([B)Z

    move-result v0

    .line 375
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 376
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    :cond_1
    monitor-exit p0

    return v0

    .line 371
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getConnectedTechnology()I
    .locals 2

    .prologue
    .line 445
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    iget v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    aget v0, v0, v1

    .line 448
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHandle()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 414
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v1, v1

    if-lez v1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    aget v0, v1, v0

    .line 417
    :cond_0
    return v0
.end method

.method public getTechExtras()[Landroid/os/Bundle;
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/16 v12, 0x8

    .line 642
    monitor-enter p0

    .line 643
    :try_start_0
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    monitor-exit p0

    .line 729
    :goto_0
    return-object v8

    .line 644
    :cond_0
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v8, v8

    new-array v8, v8, [Landroid/os/Bundle;

    iput-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    .line 645
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v8, v8

    if-ge v3, v8, :cond_5

    .line 646
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 647
    .local v2, "extras":Landroid/os/Bundle;
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    aget v8, v8, v3

    packed-switch v8, :pswitch_data_0

    .line 645
    :goto_2
    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 649
    :pswitch_1
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechActBytes:[[B

    aget-object v0, v8, v3

    .line 650
    .local v0, "actBytes":[B
    if-eqz v0, :cond_1

    array-length v8, v0

    if-lez v8, :cond_1

    .line 651
    const-string v8, "sak"

    const/4 v9, 0x0

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    int-to-short v9, v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 656
    :cond_1
    const-string v8, "atqa"

    iget-object v9, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v9, v9, v3

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 727
    .end local v0    # "actBytes":[B
    :cond_2
    :goto_3
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    aput-object v2, v8, v3

    goto :goto_2

    .line 730
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "i":I
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 664
    .restart local v2    # "extras":Landroid/os/Bundle;
    .restart local v3    # "i":I
    :pswitch_2
    const/4 v8, 0x4

    :try_start_1
    new-array v1, v8, [B

    .line 665
    .local v1, "appData":[B
    const/4 v8, 0x3

    new-array v6, v8, [B

    .line 666
    .local v6, "protInfo":[B
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    array-length v8, v8

    const/4 v9, 0x7

    if-lt v8, v9, :cond_2

    .line 667
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-static {v8, v9, v1, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 668
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-static {v8, v9, v6, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 670
    const-string v8, "appdata"

    invoke-virtual {v2, v8, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 671
    const-string v8, "protinfo"

    invoke-virtual {v2, v8, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_3

    .line 677
    .end local v1    # "appData":[B
    .end local v6    # "protInfo":[B
    :pswitch_3
    const/16 v8, 0x8

    new-array v5, v8, [B

    .line 678
    .local v5, "pmm":[B
    const/4 v8, 0x2

    new-array v7, v8, [B

    .line 679
    .local v7, "sc":[B
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    array-length v8, v8

    if-lt v8, v12, :cond_3

    .line 681
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-static {v8, v9, v5, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 682
    const-string v8, "pmm"

    invoke-virtual {v2, v8, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 684
    :cond_3
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    array-length v8, v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_2

    .line 685
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-static {v8, v9, v7, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 686
    const-string v8, "systemcode"

    invoke-virtual {v2, v8, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_3

    .line 692
    .end local v5    # "pmm":[B
    .end local v7    # "sc":[B
    :pswitch_4
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/nfc/dhimpl/NativeNfcTag;->hasTech(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 693
    const-string v8, "histbytes"

    iget-object v9, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechActBytes:[[B

    aget-object v9, v9, v3

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_3

    .line 696
    :cond_4
    const-string v8, "hiresp"

    iget-object v9, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechActBytes:[[B

    aget-object v9, v9, v3

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto/16 :goto_3

    .line 703
    :pswitch_5
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    array-length v8, v8

    if-lt v8, v13, :cond_2

    .line 704
    const-string v8, "respflags"

    iget-object v9, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v9, v9, v3

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 705
    const-string v8, "dsfid"

    iget-object v9, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v9, v9, v3

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto/16 :goto_3

    .line 711
    :pswitch_6
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->isUltralightC()Z

    move-result v4

    .line 712
    .local v4, "isUlc":Z
    const-string v8, "isulc"

    invoke-virtual {v2, v8, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 718
    .end local v4    # "isUlc":Z
    :pswitch_7
    const-string v8, "barcodetype"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 729
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_5
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 647
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getTechList()[I
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    return-object v0
.end method

.method public getUid()[B
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mUid:[B

    return-object v0
.end method

.method public declared-synchronized isNdefFormatable()Z
    .locals 3

    .prologue
    .line 406
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechActBytes:[[B

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doIsIsoDepNdefFormatable([B[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPresent()Z
    .locals 1

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mIsPresent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized makeReadOnly()Z
    .locals 2

    .prologue
    .line 384
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 388
    :cond_0
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->hasTech(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 389
    sget-object v1, Landroid/nfc/tech/MifareClassic;->KEY_DEFAULT:[B

    invoke-virtual {p0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doMakeReadonly([B)Z

    move-result v0

    .line 394
    .local v0, "result":Z
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 395
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    :cond_1
    monitor-exit p0

    return v0

    .line 392
    .end local v0    # "result":Z
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doMakeReadonly([B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .restart local v0    # "result":Z
    goto :goto_0

    .line 384
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized presenceCheck()Z
    .locals 2

    .prologue
    .line 358
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doPresenceCheck()Z

    move-result v0

    .line 362
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    :cond_1
    monitor-exit p0

    return v0

    .line 358
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized readNdef()[B
    .locals 2

    .prologue
    .line 332
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 335
    :cond_0
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doRead()[B

    move-result-object v0

    .line 336
    .local v0, "result":[B
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 337
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    :cond_1
    monitor-exit p0

    return-object v0

    .line 332
    .end local v0    # "result":[B
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized reconnect()Z
    .locals 1

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnectWithStatus()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reconnectWithStatus()I
    .locals 2

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doReconnect()I

    move-result v0

    .line 278
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :cond_1
    monitor-exit p0

    return v0

    .line 274
    .end local v0    # "status":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized reconnectWithStatus(I)I
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 293
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doHandleReconnect(I)I

    move-result v0

    .line 294
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 295
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :cond_1
    monitor-exit p0

    return v0

    .line 290
    .end local v0    # "status":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public removeTechnology(I)V
    .locals 8
    .param p1, "tech"    # I

    .prologue
    .line 475
    monitor-enter p0

    .line 476
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getTechIndex(I)I

    move-result v4

    .line 477
    .local v4, "techIndex":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 478
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    new-array v2, v5, [I

    .line 479
    .local v2, "mNewTechList":[I
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v2, v7, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 480
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    add-int/lit8 v6, v4, 0x1

    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v7, v7

    sub-int/2addr v7, v4

    add-int/lit8 v7, v7, -0x1

    invoke-static {v5, v6, v2, v4, v7}, Ljava/lang/System;->arraycopy([II[III)V

    .line 482
    iput-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    .line 484
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    new-array v0, v5, [I

    .line 485
    .local v0, "mNewHandleList":[I
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v0, v7, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 486
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    add-int/lit8 v6, v4, 0x1

    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v7, v7

    sub-int/2addr v7, v4

    add-int/lit8 v7, v7, -0x1

    invoke-static {v5, v6, v2, v4, v7}, Ljava/lang/System;->arraycopy([II[III)V

    .line 488
    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    .line 490
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    new-array v3, v5, [I

    .line 491
    .local v3, "mNewTypeList":[I
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v3, v7, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 492
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    add-int/lit8 v6, v4, 0x1

    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v7, v7

    sub-int/2addr v7, v4

    add-int/lit8 v7, v7, -0x1

    invoke-static {v5, v6, v3, v4, v7}, Ljava/lang/System;->arraycopy([II[III)V

    .line 494
    iput-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    .line 500
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    if-eqz v5, :cond_0

    .line 502
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    new-array v1, v5, [Landroid/os/Bundle;

    .line 503
    .local v1, "mNewTechExtras":[Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 504
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    add-int/lit8 v6, v4, 0x1

    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    array-length v7, v7

    sub-int/2addr v7, v4

    add-int/lit8 v7, v7, -0x1

    invoke-static {v5, v6, v1, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 506
    iput-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    .line 509
    .end local v0    # "mNewHandleList":[I
    .end local v1    # "mNewTechExtras":[Landroid/os/Bundle;
    .end local v2    # "mNewTechList":[I
    .end local v3    # "mNewTypeList":[I
    :cond_0
    monitor-exit p0

    .line 510
    return-void

    .line 509
    .end local v4    # "techIndex":I
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public declared-synchronized startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V
    .locals 1
    .param p1, "presenceCheckDelay"    # I
    .param p2, "callback"    # Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;

    .prologue
    .line 234
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mIsPresent:Z

    .line 235
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;-><init>(Lcom/android/nfc/dhimpl/NativeNfcTag;ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    .line 237
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_0
    monitor-exit p0

    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized transceive([BZ[I)[B
    .locals 2
    .param p1, "data"    # [B
    .param p2, "raw"    # Z
    .param p3, "returnCode"    # [I

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 306
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doTransceive([BZ[I)[B

    move-result-object v0

    .line 307
    .local v0, "result":[B
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 308
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    :cond_1
    monitor-exit p0

    return-object v0

    .line 303
    .end local v0    # "result":[B
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized writeNdef([B)Z
    .locals 2
    .param p1, "buf"    # [B

    .prologue
    .line 345
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 348
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doWrite([B)Z

    move-result v0

    .line 349
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 350
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    :cond_1
    monitor-exit p0

    return v0

    .line 345
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
