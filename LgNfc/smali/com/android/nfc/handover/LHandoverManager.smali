.class public Lcom/android/nfc/handover/LHandoverManager;
.super Lcom/android/nfc/handover/HandoverManager;
.source "LHandoverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/LHandoverManager$HandoverToastHandler;,
        Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;,
        Lcom/android/nfc/handover/LHandoverManager$HandoverStatusType;
    }
.end annotation


# static fields
.field static final ACTION_WPS_DATA_RECEIVED:Ljava/lang/String; = "com.lge.nfc.action.WPS_DATA_RECEIVED"

.field static final COMPARE_ERROR:I = 0x0

.field static DBG:Z = false

.field static final DEFAULT_BT_LOCALNAME:Ljava/lang/String; = "LGBeamDevice"

.field static final EXTRA_NFC_CPS_VALUE:Ljava/lang/String; = "cps"

.field static final EXTRA_NFC_RECEIVED_TYPE:Ljava/lang/String; = "receive_type"

.field static final EXTRA_PAYLOAD:Ljava/lang/String; = "payload"

.field static final EXTRA_RECORDTYPE:Ljava/lang/String; = "RecordType"

.field static final MSG_HANDOVER_CONFLICT:I = 0x1

.field static final MSG_WPS_DISABLED:I = 0x2

.field static final MSG_WPS_RECEIVER_DISABLED:I = 0x4

.field static final MSG_WPS_UNSUPPORTED:I = 0x3

.field static final NOT_REQUIRE_HANDOVER:I = 0x3

.field static final REQUIRE_SEND_HANDOVER_REQUEST:I = 0x1

.field static final REQUIRE_SEND_HANDOVER_SELECT:I = 0x2

.field private static TAG:Ljava/lang/String; = null

.field public static final TYPE_WPS_MIMENAME:Ljava/lang/String; = "application/vnd.wfa.wsc"


# instance fields
.field TYPE_BT_OOB_STR:Ljava/lang/String;

.field TYPE_HC_STR:Ljava/lang/String;

.field TYPE_HR_STR:Ljava/lang/String;

.field TYPE_HS_STR:Ljava/lang/String;

.field mAlreadyPreparePairing:Z

.field private mContext:Landroid/content/Context;

.field private mHandoverBeamTitle:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mHandoverHandler:Landroid/os/Handler;

.field protected mInformation:Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;

.field private mIsServiceBind:Z

.field protected mWPSHandoverManager:Lcom/android/nfc/handover/LWPSHandoverManager;

.field mWPSsendRequestData:Landroid/nfc/NdefMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "LHandoverManager"

    sput-object v0, Lcom/android/nfc/handover/LHandoverManager;->TAG:Ljava/lang/String;

    .line 39
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/handover/LHandoverManager;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/HandoverManager;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/android/nfc/handover/LHandoverManager;->TYPE_HR_STR:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/android/nfc/handover/LHandoverManager;->TYPE_HS_STR:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/android/nfc/handover/LHandoverManager;->TYPE_BT_OOB:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/android/nfc/handover/LHandoverManager;->TYPE_BT_OOB_STR:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/nfc/NdefRecord;->RTD_HANDOVER_CARRIER:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/android/nfc/handover/LHandoverManager;->TYPE_HC_STR:Ljava/lang/String;

    .line 70
    iput-boolean v2, p0, Lcom/android/nfc/handover/LHandoverManager;->mAlreadyPreparePairing:Z

    .line 72
    iput-boolean v2, p0, Lcom/android/nfc/handover/LHandoverManager;->mIsServiceBind:Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/LHandoverManager;->mInformation:Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;

    .line 688
    new-instance v0, Lcom/android/nfc/handover/LHandoverManager$HandoverToastHandler;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/LHandoverManager$HandoverToastHandler;-><init>(Lcom/android/nfc/handover/LHandoverManager;)V

    iput-object v0, p0, Lcom/android/nfc/handover/LHandoverManager;->mHandoverHandler:Landroid/os/Handler;

    .line 90
    iput-object p1, p0, Lcom/android/nfc/handover/LHandoverManager;->mContext:Landroid/content/Context;

    .line 91
    invoke-static {}, Lcom/android/nfc/handover/LWPSHandoverManager;->getInstance()Lcom/android/nfc/handover/LWPSHandoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/LHandoverManager;->mWPSHandoverManager:Lcom/android/nfc/handover/LWPSHandoverManager;

    .line 92
    invoke-virtual {p0}, Lcom/android/nfc/handover/LHandoverManager;->makeBeamTitleMap()V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/handover/LHandoverManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/LHandoverManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static addressToBytes(Ljava/lang/String;)[B
    .locals 5
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 610
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 611
    .local v2, "split":[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [B

    .line 613
    .local v1, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 614
    aget-object v3, v2, v0

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 613
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 617
    :cond_0
    return-object v1
.end method


# virtual methods
.method bindServiceIfNeededLocked()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 97
    iget-boolean v1, p0, Lcom/android/nfc/handover/LHandoverManager;->mBinding:Z

    if-nez v1, :cond_0

    .line 98
    sget-object v1, Lcom/android/nfc/handover/LHandoverManager;->TAG:Ljava/lang/String;

    const-string v2, "Binding to handover service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/nfc/handover/LHandoverManager;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/nfc/handover/LHandoverService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/android/nfc/handover/LHandoverManager;->mConnection:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    .line 102
    .local v0, "bindSuccess":Z
    iput-boolean v0, p0, Lcom/android/nfc/handover/LHandoverManager;->mBinding:Z

    .line 103
    iget-boolean v1, p0, Lcom/android/nfc/handover/LHandoverManager;->mBinding:Z

    iput-boolean v1, p0, Lcom/android/nfc/handover/LHandoverManager;->mIsServiceBind:Z

    .line 108
    .end local v0    # "bindSuccess":Z
    :goto_0
    return v0

    .line 107
    :cond_0
    iput-boolean v0, p0, Lcom/android/nfc/handover/LHandoverManager;->mIsServiceBind:Z

    goto :goto_0
.end method

.method public checkHandoverClientCollision()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 645
    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverManager;->mInformation:Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;

    if-nez v1, :cond_1

    .line 653
    :cond_0
    :goto_0
    return v0

    .line 649
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverManager;->mInformation:Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;

    iget-object v1, v1, Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;->mRequester:Lcom/android/nfc/handover/LHandoverManager$HandoverStatusType;

    sget-object v2, Lcom/android/nfc/handover/LHandoverManager$HandoverStatusType;->sendRetry:Lcom/android/nfc/handover/LHandoverManager$HandoverStatusType;

    if-ne v1, v2, :cond_2

    .line 650
    new-instance v0, Ljava/io/IOException;

    const-string v1, "HandoverRequestMessageRetry"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :cond_2
    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverManager;->mInformation:Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;

    iget-object v1, v1, Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;->mRequester:Lcom/android/nfc/handover/LHandoverManager$HandoverStatusType;

    sget-object v2, Lcom/android/nfc/handover/LHandoverManager$HandoverStatusType;->Requester:Lcom/android/nfc/handover/LHandoverManager$HandoverStatusType;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverManager;->mInformation:Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;

    iget-object v1, v1, Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;->mRequester:Lcom/android/nfc/handover/LHandoverManager$HandoverStatusType;

    sget-object v2, Lcom/android/nfc/handover/LHandoverManager$HandoverStatusType;->INIT:Lcom/android/nfc/handover/LHandoverManager$HandoverStatusType;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkWPSHandover(Landroid/nfc/NdefMessage;)Z
    .locals 5
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v2, 0x0

    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, "checkWPS":Z
    if-nez p1, :cond_1

    .line 344
    :cond_0
    :goto_0
    return v2

    .line 334
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 335
    .local v1, "ndefRecordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/nfc/NdefRecord;>;"
    invoke-virtual {p0, p1, v1}, Lcom/android/nfc/handover/LHandoverManager;->parseNdefRecordMap(Landroid/nfc/NdefMessage;Ljava/util/Map;)V

    .line 337
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 341
    const-string v2, "application/vnd.wfa.wsc"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 342
    const/4 v0, 0x1

    :cond_2
    move v2, v0

    .line 344
    goto :goto_0
.end method

.method compareRandomNumber([B)I
    .locals 13
    .param p1, "receiveRandomNumber"    # [B

    .prologue
    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v12, 0x0

    .line 563
    const/4 v3, 0x0

    .line 564
    .local v3, "sent_request_random":[B
    iget-object v7, p0, Lcom/android/nfc/handover/LHandoverManager;->mInformation:Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/nfc/handover/LHandoverManager;->mInformation:Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;

    iget-object v7, v7, Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;->mRequestRandomNumber:[B

    if-eqz v7, :cond_0

    .line 565
    iget-object v7, p0, Lcom/android/nfc/handover/LHandoverManager;->mInformation:Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;

    iget-object v7, v7, Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;->mRequestRandomNumber:[B

    invoke-virtual {v7}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "sent_request_random":[B
    check-cast v3, [B

    .line 567
    .restart local v3    # "sent_request_random":[B
    :cond_0
    move-object v0, p1

    .line 569
    .local v0, "receive_request_random":[B
    if-eqz v3, :cond_1

    if-nez v0, :cond_2

    .line 570
    :cond_1
    sget-boolean v4, Lcom/android/nfc/handover/LHandoverManager;->DBG:Z

    sget-object v5, Lcom/android/nfc/handover/LHandoverManager;->TAG:Ljava/lang/String;

    const-string v7, "Not required collision check."

    invoke-static {v4, v5, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    move v4, v6

    .line 604
    :goto_0
    return v4

    .line 574
    :cond_2
    sget-boolean v7, Lcom/android/nfc/handover/LHandoverManager;->DBG:Z

    sget-object v8, Lcom/android/nfc/handover/LHandoverManager;->TAG:Ljava/lang/String;

    const-string v9, "Random : send %02x %02x, receive : %02x %02x"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    aget-byte v11, v3, v12

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v10, v12

    aget-byte v11, v3, v4

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v10, v4

    aget-byte v11, v0, v12

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v10, v6

    aget-byte v11, v0, v4

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 578
    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 579
    sget-boolean v5, Lcom/android/nfc/handover/LHandoverManager;->DBG:Z

    sget-object v6, Lcom/android/nfc/handover/LHandoverManager;->TAG:Ljava/lang/String;

    const-string v7, "Collision check result_RANDOM_NUMBER_COMPARE_RESULT_1"

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 583
    :cond_3
    aget-byte v7, v3, v4

    and-int/lit16 v7, v7, 0xff

    div-int/lit8 v2, v7, 0x2

    .line 584
    .local v2, "sent_lbs":I
    aget-byte v7, v0, v4

    and-int/lit16 v7, v7, 0xff

    div-int/lit8 v1, v7, 0x2

    .line 586
    .local v1, "receivee_lbs":I
    if-ne v2, v1, :cond_6

    .line 587
    aget-byte v7, v3, v12

    aget-byte v8, v0, v12

    if-gt v7, v8, :cond_4

    aget-byte v7, v3, v12

    aget-byte v8, v0, v12

    if-ne v7, v8, :cond_5

    aget-byte v7, v3, v4

    aget-byte v4, v0, v4

    if-le v7, v4, :cond_5

    .line 590
    :cond_4
    sget-boolean v4, Lcom/android/nfc/handover/LHandoverManager;->DBG:Z

    sget-object v5, Lcom/android/nfc/handover/LHandoverManager;->TAG:Ljava/lang/String;

    const-string v7, "Collision check result_RANDOM_NUMBER_COMPARE_RESULT_2"

    invoke-static {v4, v5, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    move v4, v6

    .line 591
    goto :goto_0

    .line 593
    :cond_5
    sget-boolean v4, Lcom/android/nfc/handover/LHandoverManager;->DBG:Z

    sget-object v6, Lcom/android/nfc/handover/LHandoverManager;->TAG:Ljava/lang/String;

    const-string v7, "Collision check result_RANDOM_NUMBER_COMPARE_RESULT_3"

    invoke-static {v4, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 594
    goto :goto_0

    .line 597
    :cond_6
    aget-byte v7, v3, v12

    aget-byte v8, v0, v12

    if-gt v7, v8, :cond_7

    aget-byte v7, v3, v12

    aget-byte v8, v0, v12

    if-ne v7, v8, :cond_8

    aget-byte v7, v3, v4

    aget-byte v4, v0, v4

    if-le v7, v4, :cond_8

    .line 600
    :cond_7
    sget-boolean v4, Lcom/android/nfc/handover/LHandoverManager;->DBG:Z

    sget-object v6, Lcom/android/nfc/handover/LHandoverManager;->TAG:Ljava/lang/String;

    const-string v7, "Collision check result_RANDOM_NUMBER_COMPARE_RESULT_3"

    invoke-static {v4, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 601
    goto/16 :goto_0

    .line 603
    :cond_8
    sget-boolean v4, Lcom/android/nfc/handover/LHandoverManager;->DBG:Z

    sget-object v5, Lcom/android/nfc/handover/LHandoverManager;->TAG:Ljava/lang/String;

    const-string v7, "Collision check result_RANDOM_NUMBER_COMPARE_RESULT_2"

    invoke-static {v4, v5, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    move v4, v6

    .line 604
    goto/16 :goto_0
.end method

.method createBluetoothAlternateCarrierRecord(BLjava/lang/String;)Landroid/nfc/NdefRecord;
    .locals 11
    .param p1, "cps"    # B
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 119
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_1

    :cond_0
    move-object v7, v8

    .line 133
    :goto_0
    return-object v7

    .line 122
    :cond_1
    const/4 v5, 0x0

    .line 123
    .local v5, "pos":I
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    add-int/lit8 v7, v7, 0x3

    new-array v4, v7, [B

    .line 124
    .local v4, "payload":[B
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "pos":I
    .local v6, "pos":I
    aput-byte p1, v4, v5

    .line 125
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 127
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    move v6, v5

    .end local v5    # "pos":I
    .restart local v6    # "pos":I
    :goto_1
    if-ge v1, v3, :cond_2

    aget-byte v2, v0, v1

    .line 128
    .local v2, "id_byte":B
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    aput-byte v2, v4, v6

    .line 127
    add-int/lit8 v1, v1, 0x1

    move v6, v5

    .end local v5    # "pos":I
    .restart local v6    # "pos":I
    goto :goto_1

    .line 131
    .end local v2    # "id_byte":B
    :cond_2
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    const/4 v7, 0x0

    aput-byte v7, v4, v6

    .line 133
    new-instance v7, Landroid/nfc/NdefRecord;

    const/4 v9, 0x1

    sget-object v10, Landroid/nfc/NdefRecord;->RTD_ALTERNATIVE_CARRIER:[B

    invoke-direct {v7, v9, v10, v8, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    goto :goto_0
.end method

.method createBluetoothAlternateCarrierRecord(I)Landroid/nfc/NdefRecord;
    .locals 5
    .param p1, "cps"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 500
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 501
    .local v0, "payload":[B
    int-to-byte v1, p1

    aput-byte v1, v0, v3

    .line 502
    aput-byte v4, v0, v4

    .line 503
    const/4 v1, 0x2

    const/16 v2, 0x62

    aput-byte v2, v0, v1

    .line 504
    const/4 v1, 0x3

    aput-byte v3, v0, v1

    .line 505
    new-instance v1, Landroid/nfc/NdefRecord;

    sget-object v2, Landroid/nfc/NdefRecord;->RTD_ALTERNATIVE_CARRIER:[B

    const/4 v3, 0x0

    invoke-direct {v1, v4, v2, v3, v0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v1
.end method

.method createBluetoothHandoverSelectMessage(I)Landroid/nfc/NdefMessage;
    .locals 5
    .param p1, "cps"    # I

    .prologue
    .line 494
    new-instance v0, Landroid/nfc/NdefMessage;

    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/LHandoverManager;->createBluetoothAlternateCarrierRecord(I)Landroid/nfc/NdefRecord;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/LHandoverManager;->createHandoverSelectRecord(Landroid/nfc/NdefRecord;)Landroid/nfc/NdefRecord;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/nfc/handover/LHandoverManager;->createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    return-object v0
.end method

.method createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;
    .locals 13

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "addressBytes":[B
    const/4 v3, 0x0

    .line 140
    .local v3, "localName":Ljava/lang/String;
    const/4 v8, 0x3

    new-array v1, v8, [B

    fill-array-data v1, :array_0

    .line 142
    .local v1, "classofDevice":[B
    iget-object v8, p0, Lcom/android/nfc/handover/LHandoverManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 143
    :try_start_0
    iget-object v9, p0, Lcom/android/nfc/handover/LHandoverManager;->mLocalBluetoothAddress:Ljava/lang/String;

    if-nez v9, :cond_0

    .line 144
    iget-object v9, p0, Lcom/android/nfc/handover/LHandoverManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/nfc/handover/LHandoverManager;->mLocalBluetoothAddress:Ljava/lang/String;

    .line 148
    :cond_0
    iget-object v9, p0, Lcom/android/nfc/handover/LHandoverManager;->mLocalBluetoothAddress:Ljava/lang/String;

    if-nez v9, :cond_1

    .line 149
    monitor-exit v8

    .line 186
    :goto_0
    return-object v7

    .line 153
    :cond_1
    iget-object v9, p0, Lcom/android/nfc/handover/LHandoverManager;->mLocalBluetoothAddress:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/nfc/handover/LHandoverManager;->addressToReverseBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 154
    if-nez v0, :cond_2

    .line 155
    monitor-exit v8

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 159
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/android/nfc/handover/LHandoverManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v3

    .line 160
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_4

    .line 161
    :cond_3
    const-string v3, "LGBeamDevice"

    .line 164
    :cond_4
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    const/4 v5, 0x0

    .line 166
    .local v5, "pos":I
    array-length v7, v0

    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x2

    array-length v8, v1

    add-int v2, v7, v8

    .line 167
    .local v2, "length":I
    new-array v4, v2, [B

    .line 169
    .local v4, "payload":[B
    array-length v7, v4

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v4, v12

    .line 170
    array-length v7, v4

    shr-int/lit8 v7, v7, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v4, v10

    .line 171
    add-int/lit8 v5, v5, 0x2

    .line 173
    array-length v7, v0

    invoke-static {v0, v12, v4, v5, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 174
    array-length v7, v0

    add-int/lit8 v5, v7, 0x2

    .line 176
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "pos":I
    .local v6, "pos":I
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    add-int/lit8 v7, v7, 0x1

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    .line 177
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    const/16 v7, 0x9

    aput-byte v7, v4, v6

    .line 178
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    invoke-static {v7, v12, v4, v5, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 179
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    add-int/2addr v5, v7

    .line 181
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "pos":I
    .restart local v6    # "pos":I
    array-length v7, v1

    add-int/lit8 v7, v7, 0x1

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    .line 182
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    const/16 v7, 0xd

    aput-byte v7, v4, v6

    .line 183
    array-length v7, v1

    invoke-static {v1, v12, v4, v5, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 184
    array-length v7, v1

    add-int/2addr v5, v7

    .line 186
    new-instance v7, Landroid/nfc/NdefRecord;

    const/4 v8, 0x2

    sget-object v9, Lcom/android/nfc/handover/LHandoverManager;->TYPE_BT_OOB:[B

    new-array v10, v10, [B

    const/16 v11, 0x62

    aput-byte v11, v10, v12

    invoke-direct {v7, v8, v9, v10, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    goto/16 :goto_0

    .line 140
    nop

    :array_0
    .array-data 1
        0xct
        0x2t
        0x58t
    .end array-data
.end method

.method createEmptyHandoverSelectMessage()Landroid/nfc/NdefMessage;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 264
    sget-boolean v0, Lcom/android/nfc/handover/LHandoverManager;->DBG:Z

    sget-object v1, Lcom/android/nfc/handover/LHandoverManager;->TAG:Ljava/lang/String;

    const-string v2, "createEmptyHandoverSelectMessage"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 265
    new-instance v0, Landroid/nfc/NdefMessage;

    new-array v1, v3, [B

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/nfc/handover/LHandoverManager;->createHandoverSelectRecord([B[Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v1

    new-array v2, v3, [Landroid/nfc/NdefRecord;

    invoke-direct {v0, v1, v2}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    return-object v0
.end method

.method public createHandoverRequestMessage()Landroid/nfc/NdefMessage;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 246
    sget-object v2, Lcom/android/nfc/handover/LHandoverManager;->TAG:Ljava/lang/String;

    const-string v3, "createHandoverRequestMessage"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v2, p0, Lcom/android/nfc/handover/LHandoverManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_0

    .line 259
    :goto_0
    return-object v1

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/handover/LHandoverManager;->getAlreadyPreparePairing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    sget-boolean v2, Lcom/android/nfc/handover/LHandoverManager;->DBG:Z

    sget-object v3, Lcom/android/nfc/handover/LHandoverManager;->TAG:Ljava/lang/String;

    const-string v4, "Already pairing"

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_1
    :try_start_0
    invoke-super {p0}, Lcom/android/nfc/handover/HandoverManager;->createHandoverRequestMessage()Landroid/nfc/NdefMessage;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method createHandoverRequestRecord([B[Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .locals 11
    .param p1, "cps"    # [B
    .param p2, "carrierDataReference"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 295
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v6, p1

    if-eqz v6, :cond_0

    array-length v6, p1

    array-length v8, p2

    if-eq v6, v8, :cond_1

    :cond_0
    move-object v6, v7

    .line 323
    :goto_0
    return-object v6

    .line 299
    :cond_1
    array-length v6, p1

    add-int/lit8 v6, v6, 0x1

    new-array v5, v6, [Landroid/nfc/NdefRecord;

    .line 300
    .local v5, "records":[Landroid/nfc/NdefRecord;
    invoke-static {}, Lcom/android/nfc/handover/LHandoverManager;->createCollisionRecord()Landroid/nfc/NdefRecord;

    move-result-object v6

    aput-object v6, v5, v10

    .line 302
    iget-object v6, p0, Lcom/android/nfc/handover/LHandoverManager;->mInformation:Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;

    if-eqz v6, :cond_2

    aget-object v6, v5, v10

    if-nez v6, :cond_3

    .line 303
    :cond_2
    const-string v6, "Invalid Sequence"

    invoke-static {v6}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;)V

    move-object v6, v7

    .line 304
    goto :goto_0

    .line 307
    :cond_3
    iget-object v8, p0, Lcom/android/nfc/handover/LHandoverManager;->mInformation:Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;

    aget-object v6, v5, v10

    invoke-virtual {v6}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v6

    invoke-virtual {v6}, [B->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    iput-object v6, v8, Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;->mRequestRandomNumber:[B

    .line 309
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v6, p1

    if-ge v0, v6, :cond_4

    .line 310
    add-int/lit8 v6, v0, 0x1

    aget-byte v8, p1, v0

    aget-object v9, p2, v0

    invoke-virtual {p0, v8, v9}, Lcom/android/nfc/handover/LHandoverManager;->createBluetoothAlternateCarrierRecord(BLjava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v8

    aput-object v8, v5, v6

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 313
    :cond_4
    new-instance v1, Landroid/nfc/NdefMessage;

    invoke-direct {v1, v5}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    .line 314
    .local v1, "nestedMessage":Landroid/nfc/NdefMessage;
    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v2

    .line 316
    .local v2, "nestedPayload":[B
    array-length v6, v2

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 317
    .local v3, "payload":Ljava/nio/ByteBuffer;
    const/16 v6, 0x12

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 318
    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 320
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    new-array v4, v6, [B

    .line 321
    .local v4, "payloadBytes":[B
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 322
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 323
    new-instance v6, Landroid/nfc/NdefRecord;

    const/4 v8, 0x1

    sget-object v9, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    invoke-direct {v6, v8, v9, v7, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    goto :goto_0
.end method

.method createHandoverSelectRecord([B[Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .locals 10
    .param p1, "cps"    # [B
    .param p2, "carrierDataReference"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 269
    new-array v2, v8, [B

    .line 271
    .local v2, "nestedPayload":[B
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    array-length v6, p1

    if-lez v6, :cond_1

    array-length v6, p1

    array-length v7, p2

    if-ne v6, v7, :cond_1

    .line 272
    array-length v6, p1

    new-array v5, v6, [Landroid/nfc/NdefRecord;

    .line 273
    .local v5, "records":[Landroid/nfc/NdefRecord;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, p1

    if-ge v0, v6, :cond_0

    .line 274
    aget-byte v6, p1, v0

    aget-object v7, p2, v0

    invoke-virtual {p0, v6, v7}, Lcom/android/nfc/handover/LHandoverManager;->createBluetoothAlternateCarrierRecord(BLjava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v6

    aput-object v6, v5, v0

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    :cond_0
    new-instance v1, Landroid/nfc/NdefMessage;

    invoke-direct {v1, v5}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    .line 277
    .local v1, "nestedMessage":Landroid/nfc/NdefMessage;
    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v2

    .line 280
    .end local v0    # "i":I
    .end local v1    # "nestedMessage":Landroid/nfc/NdefMessage;
    .end local v5    # "records":[Landroid/nfc/NdefRecord;
    :cond_1
    array-length v6, v2

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 281
    .local v3, "payload":Ljava/nio/ByteBuffer;
    const/16 v6, 0x12

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 283
    array-length v6, v2

    if-lez v6, :cond_2

    .line 284
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 287
    :cond_2
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    new-array v4, v6, [B

    .line 288
    .local v4, "payloadBytes":[B
    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 289
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 290
    new-instance v6, Landroid/nfc/NdefRecord;

    const/4 v7, 0x1

    sget-object v8, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v6
.end method

.method public doLgeHandoverUri([Landroid/net/Uri;Landroid/nfc/NdefMessage;)Z
    .locals 7
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 222
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 223
    .local v1, "ndefRecordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/nfc/NdefRecord;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 225
    .local v3, "powerstateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Byte;>;"
    invoke-virtual {p0, p2, v1}, Lcom/android/nfc/handover/LHandoverManager;->parseNdefRecordMap(Landroid/nfc/NdefMessage;Ljava/util/Map;)V

    .line 226
    iget-object v4, p0, Lcom/android/nfc/handover/LHandoverManager;->TYPE_HS_STR:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/NdefRecord;

    invoke-virtual {p0, v4, v3}, Lcom/android/nfc/handover/LHandoverManager;->parseConnectionHandoverNestedNdefMessage(Landroid/nfc/NdefRecord;Ljava/util/Map;)Landroid/nfc/NdefRecord;

    .line 228
    invoke-virtual {p0}, Lcom/android/nfc/handover/LHandoverManager;->isHandoverSupported()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    .line 241
    :goto_0
    return v4

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/nfc/handover/LHandoverManager;->TYPE_BT_OOB_STR:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/NdefRecord;

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getId()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .line 233
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    .line 235
    .local v2, "powerstate":B
    :goto_1
    if-eq v2, v6, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    .line 236
    iget-object v4, p0, Lcom/android/nfc/handover/LHandoverManager;->mHandoverHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v4, v6

    .line 237
    goto :goto_0

    .end local v2    # "powerstate":B
    :cond_1
    move v2, v5

    .line 233
    goto :goto_1

    .line 239
    .restart local v2    # "powerstate":B
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/nfc/handover/LHandoverManager;->setAlreadyPreparePairing(Z)V

    .line 240
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/handover/LHandoverManager;->doHandoverUri([Landroid/net/Uri;Landroid/nfc/NdefMessage;)V

    move v4, v6

    .line 241
    goto :goto_0
.end method

.method public doWPSHandover(Landroid/nfc/NdefMessage;)V
    .locals 11
    .param p1, "response"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v10, 0x3

    .line 375
    sget-object v8, Lcom/android/nfc/handover/LHandoverManager;->TAG:Ljava/lang/String;

    const-string v9, "doWPSHandover"

    invoke-static {v8, v9}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    if-nez p1, :cond_0

    .line 377
    sget-object v8, Lcom/android/nfc/handover/LHandoverManager;->TAG:Ljava/lang/String;

    const-string v9, "response is null"

    invoke-static {v8, v9}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v8, p0, Lcom/android/nfc/handover/LHandoverManager;->mHandoverHandler:Landroid/os/Handler;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 416
    :goto_0
    return-void

    .line 381
    :cond_0
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v6

    .line 383
    .local v6, "records":[Landroid/nfc/NdefRecord;
    if-eqz v6, :cond_1

    array-length v8, v6

    if-nez v8, :cond_2

    .line 384
    :cond_1
    sget-object v8, Lcom/android/nfc/handover/LHandoverManager;->TAG:Ljava/lang/String;

    const-string v9, "records is null or length 0"

    invoke-static {v8, v9}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v8, p0, Lcom/android/nfc/handover/LHandoverManager;->mHandoverHandler:Landroid/os/Handler;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 389
    :cond_2
    const/4 v3, 0x0

    .line 390
    .local v3, "isVaildWPSMessage":Z
    move-object v0, v6

    .local v0, "arr$":[Landroid/nfc/NdefRecord;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v4, :cond_7

    aget-object v5, v0, v1

    .line 391
    .local v5, "record":Landroid/nfc/NdefRecord;
    if-nez v5, :cond_4

    .line 390
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 394
    :cond_4
    invoke-virtual {v5}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v8

    const-string v9, "application/vnd.wfa.wsc"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 395
    invoke-virtual {v5}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v5}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_6

    .line 396
    :cond_5
    iget-object v8, p0, Lcom/android/nfc/handover/LHandoverManager;->mHandoverHandler:Landroid/os/Handler;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 399
    :cond_6
    const/4 v3, 0x1

    .line 404
    .end local v5    # "record":Landroid/nfc/NdefRecord;
    :cond_7
    if-nez v3, :cond_8

    .line 405
    iget-object v8, p0, Lcom/android/nfc/handover/LHandoverManager;->mHandoverHandler:Landroid/os/Handler;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 409
    :cond_8
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v7

    .line 411
    .local v7, "wpspayload":[B
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.lge.nfc.action.WPS_DATA_RECEIVED"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    .local v2, "intent":Landroid/content/Intent;
    const-string v8, "receive_type"

    const-string v9, "P2P"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    const-string v8, "payload"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 414
    const-string v8, "RecordType"

    const-string v9, "Hs"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    iget-object v8, p0, Lcom/android/nfc/handover/LHandoverManager;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v8, v2, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public getAlreadyPreparePairing()Z
    .locals 1

    .prologue
    .line 641
    iget-boolean v0, p0, Lcom/android/nfc/handover/LHandoverManager;->mAlreadyPreparePairing:Z

    return v0
.end method

.method public getBeamTitleString(Landroid/nfc/NdefMessage;)Ljava/lang/String;
    .locals 10
    .param p1, "message"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v6, 0x0

    .line 668
    if-nez p1, :cond_0

    move-object v5, v6

    .line 685
    :goto_0
    return-object v5

    .line 671
    :cond_0
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v4

    .line 672
    .local v4, "records":[Landroid/nfc/NdefRecord;
    if-eqz v4, :cond_1

    array-length v7, v4

    if-nez v7, :cond_2

    :cond_1
    move-object v5, v6

    .line 673
    goto :goto_0

    .line 676
    :cond_2
    move-object v0, v4

    .local v0, "arr$":[Landroid/nfc/NdefRecord;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 677
    .local v3, "record":Landroid/nfc/NdefRecord;
    if-nez v3, :cond_4

    .line 676
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 680
    :cond_4
    iget-object v7, p0, Lcom/android/nfc/handover/LHandoverManager;->mHandoverBeamTitle:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 681
    .local v5, "title":Ljava/lang/String;
    if-eqz v5, :cond_3

    goto :goto_0

    .end local v3    # "record":Landroid/nfc/NdefRecord;
    .end local v5    # "title":Ljava/lang/String;
    :cond_5
    move-object v5, v6

    .line 685
    goto :goto_0
.end method

.method public getWPSRequestMessage(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    .locals 11
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 348
    if-nez p1, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-object v5

    .line 352
    :cond_1
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    .line 354
    .local v3, "records":[Landroid/nfc/NdefRecord;
    if-eqz v3, :cond_0

    array-length v6, v3

    if-ne v6, v10, :cond_0

    .line 357
    new-array v0, v10, [B

    aput-byte v10, v0, v9

    .line 358
    .local v0, "cps":[B
    new-array v2, v10, [Ljava/lang/String;

    const-string v5, "0"

    aput-object v5, v2, v9

    .line 359
    .local v2, "id":[Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/android/nfc/handover/LHandoverManager;->createHandoverRequestRecord([B[Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 360
    .local v1, "hrRecord":Landroid/nfc/NdefRecord;
    new-instance v4, Landroid/nfc/NdefRecord;

    const/4 v5, 0x2

    const-string v6, "application/vnd.wfa.wsc"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    aget-object v7, v2, v9

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    aget-object v8, v3, v9

    invoke-virtual {v8}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 361
    .local v4, "wpsRecord":Landroid/nfc/NdefRecord;
    new-instance v5, Landroid/nfc/NdefMessage;

    new-array v6, v10, [Landroid/nfc/NdefRecord;

    aput-object v4, v6, v9

    invoke-direct {v5, v1, v6}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    goto :goto_0
.end method

.method getWPSSelectMessage(B)Landroid/nfc/NdefMessage;
    .locals 8
    .param p1, "wificps"    # B

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 365
    new-array v1, v7, [Ljava/lang/String;

    const-string v4, "0"

    aput-object v4, v1, v6

    .line 366
    .local v1, "idlist":[Ljava/lang/String;
    new-array v2, v7, [B

    aput-byte p1, v2, v6

    .line 367
    .local v2, "powerState":[B
    invoke-virtual {p0, v2, v1}, Lcom/android/nfc/handover/LHandoverManager;->createHandoverSelectRecord([B[Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 368
    .local v0, "hsRecord":Landroid/nfc/NdefRecord;
    iget-object v4, p0, Lcom/android/nfc/handover/LHandoverManager;->mWPSHandoverManager:Lcom/android/nfc/handover/LWPSHandoverManager;

    aget-object v5, v1, v6

    invoke-virtual {v4, v5}, Lcom/android/nfc/handover/LWPSHandoverManager;->getHandoverSelectMessage(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v3

    .line 370
    .local v3, "wpsRecord":Landroid/nfc/NdefRecord;
    new-instance v4, Landroid/nfc/NdefMessage;

    new-array v5, v7, [Landroid/nfc/NdefRecord;

    aput-object v3, v5, v6

    invoke-direct {v4, v0, v5}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    return-object v4
.end method

.method public handoverLLCPActivated()V
    .locals 3

    .prologue
    .line 621
    sget-boolean v0, Lcom/android/nfc/handover/LHandoverManager;->DBG:Z

    sget-object v1, Lcom/android/nfc/handover/LHandoverManager;->TAG:Ljava/lang/String;

    const-string v2, "handoverLLCPActivated"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 622
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/LHandoverManager;->mInformation:Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;

    .line 623
    new-instance v0, Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;-><init>(Lcom/android/nfc/handover/LHandoverManager;)V

    iput-object v0, p0, Lcom/android/nfc/handover/LHandoverManager;->mInformation:Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;

    .line 624
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverManager;->mInformation:Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;->mIsLLCPActicated:Z

    .line 625
    return-void
.end method

.method public handoverLLCPDeactivated()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 627
    sget-boolean v0, Lcom/android/nfc/handover/LHandoverManager;->DBG:Z

    sget-object v1, Lcom/android/nfc/handover/LHandoverManager;->TAG:Ljava/lang/String;

    const-string v2, "handoverLLCPDeactivated"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 629
    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/LHandoverManager;->setAlreadyPreparePairing(Z)V

    .line 630
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverManager;->mInformation:Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverManager;->mInformation:Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;

    iput-boolean v3, v0, Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;->mIsLLCPActicated:Z

    .line 632
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/LHandoverManager;->mInformation:Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;

    .line 634
    :cond_0
    return-void
.end method

.method public isHandoverServiceBind()Z
    .locals 1

    .prologue
    .line 658
    iget-boolean v0, p0, Lcom/android/nfc/handover/LHandoverManager;->mIsServiceBind:Z

    return v0
.end method

.method public isHandoverSupported()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 191
    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverManager;->mLocalBluetoothAddress:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/handover/LHandoverManager;->mLocalBluetoothAddress:Ljava/lang/String;

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/handover/LHandoverManager;->mLocalBluetoothAddress:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 200
    :cond_1
    :goto_0
    return v0

    .line 198
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public makeBeamTitleMap()V
    .locals 4

    .prologue
    .line 662
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/LHandoverManager;->mHandoverBeamTitle:Ljava/util/HashMap;

    .line 663
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverManager;->mHandoverBeamTitle:Ljava/util/HashMap;

    const-string v1, "application/vnd.wfa.wsc"

    iget-object v2, p0, Lcom/android/nfc/handover/LHandoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverManager;->mHandoverBeamTitle:Ljava/util/HashMap;

    const-string v1, ""

    iget-object v2, p0, Lcom/android/nfc/handover/LHandoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    return-void
.end method

.method protected parseConnectionHandoverNestedNdefMessage(Landroid/nfc/NdefRecord;Ljava/util/Map;)Landroid/nfc/NdefRecord;
    .locals 17
    .param p1, "chRecord"    # Landroid/nfc/NdefRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/nfc/NdefRecord;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Byte;",
            ">;)",
            "Landroid/nfc/NdefRecord;"
        }
    .end annotation

    .prologue
    .line 528
    .local p2, "powerStateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Byte;>;"
    const/4 v2, 0x0

    .line 529
    .local v2, "collisionRecord":Landroid/nfc/NdefRecord;
    const/4 v8, 0x0

    .line 531
    .local v8, "nestedNdefMessage":Landroid/nfc/NdefMessage;
    invoke-virtual/range {p1 .. p1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    .line 533
    .local v10, "nestedPayload":[B
    :try_start_0
    new-instance v9, Landroid/nfc/NdefMessage;

    invoke-direct {v9, v10}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    .end local v8    # "nestedNdefMessage":Landroid/nfc/NdefMessage;
    .local v9, "nestedNdefMessage":Landroid/nfc/NdefMessage;
    invoke-virtual {v9}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v13

    .line 539
    .local v13, "records":[Landroid/nfc/NdefRecord;
    if-eqz v13, :cond_0

    array-length v14, v13

    const/4 v15, 0x1

    if-ge v14, v15, :cond_1

    .line 540
    :cond_0
    const/4 v14, 0x0

    move-object v8, v9

    .line 559
    .end local v9    # "nestedNdefMessage":Landroid/nfc/NdefMessage;
    .end local v13    # "records":[Landroid/nfc/NdefRecord;
    .restart local v8    # "nestedNdefMessage":Landroid/nfc/NdefMessage;
    :goto_0
    return-object v14

    .line 534
    :catch_0
    move-exception v4

    .line 535
    .local v4, "e":Landroid/nfc/FormatException;
    const/4 v14, 0x0

    goto :goto_0

    .line 543
    .end local v4    # "e":Landroid/nfc/FormatException;
    .end local v8    # "nestedNdefMessage":Landroid/nfc/NdefMessage;
    .restart local v9    # "nestedNdefMessage":Landroid/nfc/NdefMessage;
    .restart local v13    # "records":[Landroid/nfc/NdefRecord;
    :cond_1
    move-object v1, v13

    .local v1, "arr$":[Landroid/nfc/NdefRecord;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_7

    aget-object v12, v1, v5

    .line 544
    .local v12, "record":Landroid/nfc/NdefRecord;
    invoke-virtual {v12}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v14

    sget-object v15, Lcom/android/nfc/handover/LHandoverManager;->RTD_COLLISION_RESOLUTION:[B

    invoke-static {v14, v15}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 545
    move-object v2, v12

    .line 543
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 546
    :cond_3
    invoke-virtual {v12}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v14

    sget-object v15, Landroid/nfc/NdefRecord;->RTD_ALTERNATIVE_CARRIER:[B

    invoke-static {v14, v15}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 547
    invoke-virtual {v12}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v11

    .line 548
    .local v11, "payload":[B
    array-length v14, v11

    const/4 v15, 0x4

    if-ge v14, v15, :cond_4

    move-object v8, v9

    .end local v9    # "nestedNdefMessage":Landroid/nfc/NdefMessage;
    .restart local v8    # "nestedNdefMessage":Landroid/nfc/NdefMessage;
    move-object v14, v2

    .line 549
    goto :goto_0

    .line 551
    .end local v8    # "nestedNdefMessage":Landroid/nfc/NdefMessage;
    .restart local v9    # "nestedNdefMessage":Landroid/nfc/NdefMessage;
    :cond_4
    const/4 v14, 0x0

    aget-byte v3, v11, v14

    .line 552
    .local v3, "cps":B
    new-instance v6, Ljava/lang/String;

    const/4 v14, 0x2

    const/4 v15, 0x1

    aget-byte v15, v11, v15

    and-int/lit16 v15, v15, 0xff

    add-int/lit8 v15, v15, 0x2

    invoke-static {v11, v14, v15}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    invoke-direct {v6, v14}, Ljava/lang/String;-><init>([B)V

    .line 553
    .local v6, "id":Ljava/lang/String;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_6

    :cond_5
    move-object v8, v9

    .end local v9    # "nestedNdefMessage":Landroid/nfc/NdefMessage;
    .restart local v8    # "nestedNdefMessage":Landroid/nfc/NdefMessage;
    move-object v14, v2

    .line 554
    goto :goto_0

    .line 556
    .end local v8    # "nestedNdefMessage":Landroid/nfc/NdefMessage;
    .restart local v9    # "nestedNdefMessage":Landroid/nfc/NdefMessage;
    :cond_6
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v3    # "cps":B
    .end local v6    # "id":Ljava/lang/String;
    .end local v11    # "payload":[B
    .end local v12    # "record":Landroid/nfc/NdefRecord;
    :cond_7
    move-object v8, v9

    .end local v9    # "nestedNdefMessage":Landroid/nfc/NdefMessage;
    .restart local v8    # "nestedNdefMessage":Landroid/nfc/NdefMessage;
    move-object v14, v2

    .line 559
    goto :goto_0
.end method

.method protected parseNdefRecordMap(Landroid/nfc/NdefMessage;Ljava/util/Map;)V
    .locals 6
    .param p1, "m"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/nfc/NdefMessage;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/nfc/NdefRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 509
    .local p2, "ndefRecordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/nfc/NdefRecord;>;"
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    .local v0, "arr$":[Landroid/nfc/NdefRecord;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 510
    .local v3, "record":Landroid/nfc/NdefRecord;
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_1

    .line 525
    .end local v3    # "record":Landroid/nfc/NdefRecord;
    :cond_0
    return-void

    .line 513
    .restart local v3    # "record":Landroid/nfc/NdefRecord;
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 515
    .local v4, "recordType":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 519
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_0

    .line 523
    invoke-interface {p2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setAlreadyPreparePairing(Z)V
    .locals 0
    .param p1, "pairing"    # Z

    .prologue
    .line 637
    iput-boolean p1, p0, Lcom/android/nfc/handover/LHandoverManager;->mAlreadyPreparePairing:Z

    .line 638
    return-void
.end method

.method public tryHandover(Landroid/nfc/NdefMessage;)Z
    .locals 4
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v2, 0x1

    .line 207
    iget-object v3, p0, Lcom/android/nfc/handover/LHandoverManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 208
    .local v0, "mBluetoothState":I
    const/16 v3, 0xd

    if-eq v0, v3, :cond_0

    const/16 v3, 0xb

    if-eq v0, v3, :cond_0

    iget-boolean v3, p0, Lcom/android/nfc/handover/LHandoverManager;->mBluetoothHeadsetPending:Z

    if-ne v3, v2, :cond_2

    :cond_0
    move v1, v2

    .line 218
    :cond_1
    :goto_0
    return v1

    .line 214
    :cond_2
    invoke-super {p0, p1}, Lcom/android/nfc/handover/HandoverManager;->tryHandover(Landroid/nfc/NdefMessage;)Z

    move-result v1

    .line 215
    .local v1, "ret":Z
    if-eqz v1, :cond_1

    .line 216
    iput-boolean v2, p0, Lcom/android/nfc/handover/LHandoverManager;->mBluetoothHeadsetPending:Z

    goto :goto_0
.end method

.method public tryHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    .locals 11
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/android/nfc/handover/LHandoverManager;->getAlreadyPreparePairing()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 421
    sget-object v8, Lcom/android/nfc/handover/LHandoverManager;->TAG:Ljava/lang/String;

    const-string v9, "Already pairing"

    invoke-static {v8, v9}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const/4 v5, 0x0

    .line 490
    :cond_0
    :goto_0
    return-object v5

    .line 425
    :cond_1
    sget-boolean v8, Lcom/android/nfc/handover/LHandoverManager;->DBG:Z

    sget-object v9, Lcom/android/nfc/handover/LHandoverManager;->TAG:Ljava/lang/String;

    const-string v10, "tryHandoverRequest"

    invoke-static {v8, v9, v10}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 427
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 429
    .local v1, "ndefRecordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/nfc/NdefRecord;>;"
    invoke-virtual {p0, p1, v1}, Lcom/android/nfc/handover/LHandoverManager;->parseNdefRecordMap(Landroid/nfc/NdefMessage;Ljava/util/Map;)V

    .line 431
    iget-object v8, p0, Lcom/android/nfc/handover/LHandoverManager;->TYPE_HR_STR:Ljava/lang/String;

    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/nfc/handover/LHandoverManager;->TYPE_BT_OOB_STR:Ljava/lang/String;

    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "application/vnd.wfa.wsc"

    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 434
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 439
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 441
    .local v2, "powerStateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Byte;>;"
    iget-object v8, p0, Lcom/android/nfc/handover/LHandoverManager;->TYPE_HR_STR:Ljava/lang/String;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/nfc/NdefRecord;

    invoke-virtual {p0, v8, v2}, Lcom/android/nfc/handover/LHandoverManager;->parseConnectionHandoverNestedNdefMessage(Landroid/nfc/NdefRecord;Ljava/util/Map;)Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 443
    .local v0, "collisionRecord":Landroid/nfc/NdefRecord;
    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 444
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 447
    :cond_5
    iget-object v8, p0, Lcom/android/nfc/handover/LHandoverManager;->mInformation:Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;

    if-nez v8, :cond_6

    .line 448
    const/4 v5, 0x0

    goto :goto_0

    .line 451
    :cond_6
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/nfc/handover/LHandoverManager;->compareRandomNumber([B)I

    move-result v4

    .line 452
    .local v4, "result_collision":I
    const/4 v8, 0x3

    if-eq v4, v8, :cond_7

    if-nez v4, :cond_8

    .line 453
    :cond_7
    iget-object v8, p0, Lcom/android/nfc/handover/LHandoverManager;->mInformation:Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;

    sget-object v9, Lcom/android/nfc/handover/LHandoverManager$HandoverStatusType;->Requester:Lcom/android/nfc/handover/LHandoverManager$HandoverStatusType;

    iput-object v9, v8, Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;->mRequester:Lcom/android/nfc/handover/LHandoverManager$HandoverStatusType;

    .line 454
    const/4 v5, 0x0

    goto :goto_0

    .line 455
    :cond_8
    const/4 v8, 0x1

    if-ne v4, v8, :cond_9

    .line 456
    iget-object v8, p0, Lcom/android/nfc/handover/LHandoverManager;->mInformation:Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;

    sget-object v9, Lcom/android/nfc/handover/LHandoverManager$HandoverStatusType;->sendRetry:Lcom/android/nfc/handover/LHandoverManager$HandoverStatusType;

    iput-object v9, v8, Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;->mRequester:Lcom/android/nfc/handover/LHandoverManager$HandoverStatusType;

    .line 457
    const/4 v5, 0x0

    goto :goto_0

    .line 459
    :cond_9
    iget-object v8, p0, Lcom/android/nfc/handover/LHandoverManager;->mInformation:Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;

    sget-object v9, Lcom/android/nfc/handover/LHandoverManager$HandoverStatusType;->Selector:Lcom/android/nfc/handover/LHandoverManager$HandoverStatusType;

    iput-object v9, v8, Lcom/android/nfc/handover/LHandoverManager$HandoverInformation;->mRequester:Lcom/android/nfc/handover/LHandoverManager$HandoverStatusType;

    .line 462
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    .line 464
    .local v3, "record":[Landroid/nfc/NdefRecord;
    invoke-static {}, Lcom/android/nfc/handover/LWPSHandoverManager;->getSupportWPSHandover()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_d

    array-length v8, v3

    const/4 v9, 0x1

    if-le v8, v9, :cond_d

    .line 465
    const/4 v8, 0x1

    aget-object v8, v3, v8

    invoke-virtual {v8}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v6

    .line 466
    .local v6, "types":[B
    const-string v8, "application/vnd.wfa.wsc"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v6, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 467
    iget-object v8, p0, Lcom/android/nfc/handover/LHandoverManager;->mContext:Landroid/content/Context;

    const-string v9, "wifi"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 468
    .local v7, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v7, :cond_c

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v8

    const/16 v9, 0xc

    if-eq v8, v9, :cond_a

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_c

    .line 471
    :cond_a
    iget-object v8, p0, Lcom/android/nfc/handover/LHandoverManager;->mWPSHandoverManager:Lcom/android/nfc/handover/LWPSHandoverManager;

    invoke-virtual {v8, p1}, Lcom/android/nfc/handover/LWPSHandoverManager;->setHandoverRequestMessage(Landroid/nfc/NdefMessage;)I

    .line 472
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_b

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {p0, v8}, Lcom/android/nfc/handover/LHandoverManager;->getWPSSelectMessage(B)Landroid/nfc/NdefMessage;

    move-result-object v5

    goto/16 :goto_0

    :cond_b
    const/4 v8, 0x2

    goto :goto_1

    .line 474
    :cond_c
    iget-object v8, p0, Lcom/android/nfc/handover/LHandoverManager;->mHandoverHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 475
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/nfc/handover/LHandoverManager;->getWPSSelectMessage(B)Landroid/nfc/NdefMessage;

    move-result-object v5

    goto/16 :goto_0

    .line 479
    .end local v6    # "types":[B
    .end local v7    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_d
    iget-boolean v8, p0, Lcom/android/nfc/handover/LHandoverManager;->mIsServiceBind:Z

    if-eqz v8, :cond_e

    .line 480
    iget-object v8, p0, Lcom/android/nfc/handover/LHandoverManager;->mHandoverHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 482
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/nfc/handover/LHandoverManager;->createBluetoothHandoverSelectMessage(I)Landroid/nfc/NdefMessage;

    move-result-object v5

    goto/16 :goto_0

    .line 485
    :cond_e
    invoke-super {p0, p1}, Lcom/android/nfc/handover/HandoverManager;->tryHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;

    move-result-object v5

    .line 486
    .local v5, "ret_message":Landroid/nfc/NdefMessage;
    if-nez v5, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/android/nfc/handover/LHandoverManager;->createEmptyHandoverSelectMessage()Landroid/nfc/NdefMessage;

    move-result-object v5

    goto/16 :goto_0
.end method

.method unbindServiceIfNeededLocked(Z)V
    .locals 1
    .param p1, "force"    # Z

    .prologue
    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/LHandoverManager;->mIsServiceBind:Z

    .line 115
    invoke-super {p0, p1}, Lcom/android/nfc/handover/HandoverManager;->unbindServiceIfNeededLocked(Z)V

    .line 116
    return-void
.end method
