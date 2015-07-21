.class public Lcom/android/internal/telephony/LGSprintReassemblySms;
.super Ljava/lang/Object;
.source "LGSprintReassemblySms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/LGSprintReassemblySms$SegmentExpirationRunnable;,
        Lcom/android/internal/telephony/LGSprintReassemblySms$PaginationIndicator;,
        Lcom/android/internal/telephony/LGSprintReassemblySms$Segment;
    }
.end annotation


# static fields
.field private static excutedSegmentExpirationAfterBootUp:Z

.field private static final mSegmentTable1:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSegmentTable2:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSegmentTable3:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSegmentTable4:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSegmentTable5:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSegmentTable6:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSegmentTable7:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSegmentTable8:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSegmentTable9:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static segmentExpirationLock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mInbound:Lcom/android/internal/telephony/InboundSmsHandler;

.field private mReassemblyBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSegmentUri:Landroid/net/Uri;

.field private m_bMessageReassembly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable1:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable2:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable3:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable4:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable5:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable6:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable7:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable8:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable9:Ljava/util/HashMap;

    .line 433
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->segmentExpirationLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 465
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->excutedSegmentExpirationAfterBootUp:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inbound"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "segment"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentUri:Landroid/net/Uri;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/LGSprintReassemblySms;->m_bMessageReassembly:Z

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mReassemblyBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    iput-object p1, p0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mResolver:Landroid/content/ContentResolver;

    .line 65
    iput-object p2, p0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mInbound:Lcom/android/internal/telephony/InboundSmsHandler;

    .line 66
    invoke-direct {p0}, Lcom/android/internal/telephony/LGSprintReassemblySms;->regReassemblyBroadcastReceiver()V

    .line 67
    invoke-static {}, Lcom/android/internal/telephony/LGSprintReassemblySms;->initSegmentTable()V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/LGSprintReassemblySms;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGSprintReassemblySms;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGSprintReassemblySms;->sendSavedPdusIndividually(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/LGSprintReassemblySms;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGSprintReassemblySms;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/internal/telephony/LGSprintReassemblySms;->trySegmentExpirationAfterBootUp()V

    return-void
.end method

.method private completeProcessMessageSegment(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 18
    .param p1, "lastSms"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 497
    const/4 v8, 0x0

    .line 498
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v14, 0x0

    check-cast v14, [[B

    .line 499
    .local v14, "pdus":[[B
    const/4 v11, 0x0

    .line 500
    .local v11, "index":I
    const/4 v13, 0x0

    .line 502
    .local v13, "msg":Landroid/telephony/SmsMessage;
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/LGSprintReassemblySms;->isSegmentedPDU(Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 503
    const/4 v1, 0x2

    move-object v5, v8

    .line 555
    .end local v8    # "cursor":Landroid/database/Cursor;
    .local v5, "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return v1

    .line 505
    .end local v5    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v1, "address ="

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 507
    .local v7, "where":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LGSprintReassemblySms;->getPaginationIndicator(Ljava/lang/String;)Lcom/android/internal/telephony/LGSprintReassemblySms$PaginationIndicator;

    move-result-object v15

    .line 508
    .local v15, "pi":Lcom/android/internal/telephony/LGSprintReassemblySms$PaginationIndicator;
    if-nez v15, :cond_2

    .line 509
    const/4 v1, 0x2

    move-object v5, v8

    .end local v8    # "cursor":Landroid/database/Cursor;
    .restart local v5    # "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 512
    .end local v5    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_2
    invoke-virtual {v15}, Lcom/android/internal/telephony/LGSprintReassemblySms$PaginationIndicator;->getSequence()I

    move-result v16

    .line 513
    .local v16, "sequence":I
    invoke-virtual {v15}, Lcom/android/internal/telephony/LGSprintReassemblySms$PaginationIndicator;->getTotalCount()I

    move-result v17

    .line 515
    .local v17, "totalCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    const-string v1, " AND ( totalCount ="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/internal/telephony/LGSprintReassemblySms$Segment;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "sequence"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 521
    .end local v8    # "cursor":Landroid/database/Cursor;
    .restart local v5    # "cursor":Landroid/database/Cursor;
    if-nez v5, :cond_3

    .line 522
    const/4 v1, 0x2

    .line 530
    if-eqz v5, :cond_0

    .line 531
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v17

    move/from16 v4, v16

    move v6, v11

    .line 524
    :try_start_1
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/LGSprintReassemblySms;->makeReassemblyPDU(Lcom/android/internal/telephony/SmsMessageBase;IILandroid/database/Cursor;ILjava/lang/StringBuilder;)[[B
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v14

    .line 530
    if-eqz v5, :cond_4

    .line 531
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 535
    :cond_4
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v10, v0, :cond_9

    .line 536
    aget-object v1, v14, v10

    invoke-static {v1}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v13

    .line 537
    if-nez v13, :cond_6

    .line 538
    const-string v1, "completeProcessMessageSegment(), some PDU is broken."

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    .line 539
    const/4 v1, 0x2

    goto/16 :goto_0

    .line 526
    .end local v5    # "cursor":Landroid/database/Cursor;
    .end local v10    # "i":I
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    move-object v5, v8

    .line 527
    .end local v8    # "cursor":Landroid/database/Cursor;
    .restart local v5    # "cursor":Landroid/database/Cursor;
    .local v9, "e":Landroid/database/SQLException;
    :goto_2
    :try_start_2
    const-string v1, "completeProcessMessageSegment(), query exception catch"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 528
    const/4 v1, 0x2

    .line 530
    if-eqz v5, :cond_0

    .line 531
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 530
    .end local v5    # "cursor":Landroid/database/Cursor;
    .end local v9    # "e":Landroid/database/SQLException;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    move-object v5, v8

    .end local v8    # "cursor":Landroid/database/Cursor;
    .restart local v5    # "cursor":Landroid/database/Cursor;
    :goto_3
    if-eqz v5, :cond_5

    .line 531
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1

    .line 542
    .restart local v10    # "i":I
    :cond_6
    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LGSprintReassemblySms;->getPaginationIndicator(Ljava/lang/String;)Lcom/android/internal/telephony/LGSprintReassemblySms$PaginationIndicator;

    move-result-object v15

    .line 543
    if-nez v15, :cond_7

    .line 544
    const/4 v1, 0x2

    goto/16 :goto_0

    .line 547
    :cond_7
    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15}, Lcom/android/internal/telephony/LGSprintReassemblySms$PaginationIndicator;->getLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 548
    .local v12, "messageBody":Ljava/lang/String;
    invoke-virtual {v13, v12}, Landroid/telephony/SmsMessage;->replaceMessageBody(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 549
    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v1

    aput-object v1, v14, v10

    .line 535
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 552
    .end local v12    # "messageBody":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/LGSprintReassemblySms;->dispatchPdusForSprintSegment([[B)V

    .line 553
    const-string v1, "completeProcessMessageSegment(), All segments are reassembled"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 555
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 530
    .end local v10    # "i":I
    :catchall_1
    move-exception v1

    goto :goto_3

    .line 526
    :catch_1
    move-exception v9

    goto :goto_2
.end method

.method private dispatchPdusForSprintSegment([[B)V
    .locals 6
    .param p1, "pdus"    # [[B

    .prologue
    .line 559
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 560
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "pdus"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 561
    const-string v0, "format"

    const-string v2, "3gpp2"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    iget-object v0, p0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mInbound:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 564
    return-void
.end method

.method private getPaginationIndicator(Ljava/lang/String;)Lcom/android/internal/telephony/LGSprintReassemblySms$PaginationIndicator;
    .locals 13
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x15

    const/16 v11, 0x13

    const/16 v10, 0x9

    const/4 v9, 0x4

    const/4 v7, 0x0

    .line 214
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move-object v6, v7

    .line 301
    :goto_0
    return-object v6

    .line 217
    :cond_1
    const/4 v1, 0x0

    .line 218
    .local v1, "index":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 219
    .local v2, "length":I
    const/4 v4, 0x0

    .line 220
    .local v4, "state":I
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 221
    .local v3, "sequence":Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 223
    .local v5, "totalCount":Ljava/lang/String;
    const/16 v6, 0xc

    if-le v2, v6, :cond_2

    .line 224
    const/16 v2, 0xc

    .line 227
    :cond_2
    :goto_1
    if-ge v1, v2, :cond_4

    .line 229
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 277
    sget-object v6, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable9:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 285
    :cond_3
    :goto_2
    if-ne v4, v12, :cond_b

    .line 292
    :cond_4
    const/16 v6, 0xb

    if-eq v4, v6, :cond_5

    if-eq v4, v11, :cond_5

    const/16 v6, 0x14

    if-ne v4, v6, :cond_6

    .line 293
    :cond_5
    const/16 v4, 0x15

    .line 296
    :cond_6
    if-ne v4, v12, :cond_c

    .line 298
    new-instance v6, Lcom/android/internal/telephony/LGSprintReassemblySms$PaginationIndicator;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v6, v7, v8, v1}, Lcom/android/internal/telephony/LGSprintReassemblySms$PaginationIndicator;-><init>(III)V

    goto :goto_0

    .line 231
    :sswitch_0
    :try_start_1
    sget-object v6, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable1:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 232
    goto :goto_2

    .line 235
    :sswitch_1
    sget-object v6, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable2:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 236
    goto :goto_2

    .line 239
    :sswitch_2
    sget-object v6, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable3:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 242
    if-ne v4, v9, :cond_7

    .line 243
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 244
    :cond_7
    if-ne v4, v10, :cond_3

    .line 245
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 249
    :sswitch_3
    sget-object v6, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable4:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 252
    if-eq v4, v9, :cond_8

    const/16 v6, 0xd

    if-ne v4, v6, :cond_9

    .line 253
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 254
    :cond_9
    if-eq v4, v10, :cond_a

    if-ne v4, v11, :cond_3

    .line 255
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 259
    :sswitch_4
    sget-object v6, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable5:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 260
    goto/16 :goto_2

    .line 263
    :sswitch_5
    sget-object v6, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable6:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 264
    goto/16 :goto_2

    .line 268
    :sswitch_6
    sget-object v6, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable7:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 269
    goto/16 :goto_2

    .line 273
    :sswitch_7
    sget-object v6, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable8:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    .line 274
    goto/16 :goto_2

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v6, "getPaginationIndicator(), NullPointerException"

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    move-object v6, v7

    .line 282
    goto/16 :goto_0

    .line 289
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_c
    move-object v6, v7

    .line 301
    goto/16 :goto_0

    .line 229
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x28 -> :sswitch_0
        0x29 -> :sswitch_5
        0x2f -> :sswitch_4
        0x30 -> :sswitch_2
        0x31 -> :sswitch_3
        0x32 -> :sswitch_3
        0x33 -> :sswitch_3
        0x34 -> :sswitch_3
        0x35 -> :sswitch_3
        0x36 -> :sswitch_3
        0x37 -> :sswitch_3
        0x38 -> :sswitch_3
        0x39 -> :sswitch_3
        0x46 -> :sswitch_7
        0x4f -> :sswitch_6
        0x5b -> :sswitch_0
        0x5d -> :sswitch_5
        0x66 -> :sswitch_7
        0x6f -> :sswitch_6
        0x7b -> :sswitch_0
        0x7d -> :sswitch_5
    .end sparse-switch
.end method

.method private static initSegmentTable()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/16 v6, 0x14

    const/16 v5, 0xb

    const/16 v4, 0x13

    const/16 v3, 0x15

    .line 659
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable1:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable1:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable1:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable1:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable2:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable2:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable2:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable2:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable2:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable2:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable2:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable2:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable2:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable2:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable2:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable2:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable2:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable2:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable2:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable2:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable3:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable3:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable3:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable3:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable3:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable3:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable3:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable3:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable3:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable3:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable3:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable3:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable3:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable3:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable3:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable3:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable3:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable4:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable4:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable4:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable4:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable4:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable4:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable4:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable4:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable4:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable4:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable4:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable4:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable4:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable4:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable4:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable4:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable4:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable4:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable5:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable5:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable5:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable5:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable5:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable5:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable5:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable6:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable6:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable6:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable6:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable6:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable7:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable7:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable7:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable7:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable7:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable8:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable8:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable8:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable8:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable9:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable9:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentTable9:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    return-void
.end method

.method private insertMessageSegment(Lcom/android/internal/telephony/SmsMessageBase;)J
    .locals 20
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 345
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 346
    .local v18, "values":Landroid/content/ContentValues;
    const/4 v8, 0x0

    .line 347
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 349
    .local v10, "firstTime":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/LGSprintReassemblySms;->getPaginationIndicator(Ljava/lang/String;)Lcom/android/internal/telephony/LGSprintReassemblySms$PaginationIndicator;

    move-result-object v14

    .line 350
    .local v14, "pi":Lcom/android/internal/telephony/LGSprintReassemblySms$PaginationIndicator;
    if-nez v14, :cond_0

    move-wide v12, v10

    .line 396
    .end local v10    # "firstTime":J
    .local v12, "firstTime":J
    :goto_0
    return-wide v12

    .line 354
    .end local v12    # "firstTime":J
    .restart local v10    # "firstTime":J
    :cond_0
    invoke-virtual {v14}, Lcom/android/internal/telephony/LGSprintReassemblySms$PaginationIndicator;->getSequence()I

    move-result v15

    .line 355
    .local v15, "sequence":I
    invoke-virtual {v14}, Lcom/android/internal/telephony/LGSprintReassemblySms$PaginationIndicator;->getTotalCount()I

    move-result v17

    .line 357
    .local v17, "totalCount":I
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v2, "address ="

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    .local v19, "where":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    const-string v2, " AND ( totalCount ="

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/LGSprintReassemblySms$Segment;->PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "sequence"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 364
    if-nez v8, :cond_2

    .line 377
    if-eqz v8, :cond_1

    .line 378
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    move-wide v12, v10

    .end local v10    # "firstTime":J
    .restart local v12    # "firstTime":J
    goto :goto_0

    .line 367
    .end local v12    # "firstTime":J
    .restart local v10    # "firstTime":J
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 368
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 369
    const-string v2, "time"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 370
    .local v16, "timeColumn":I
    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v10

    .line 377
    .end local v16    # "timeColumn":I
    :cond_3
    if-eqz v8, :cond_4

    .line 378
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 382
    :cond_4
    const-string v2, "time"

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v10, v11}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 383
    const-string v2, "sequence"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 384
    const-string v2, "totalCount"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 385
    const-string v2, "address"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v2, "pdu"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentUri:Landroid/net/Uri;

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 390
    const-string v2, "insertMessageSegment(), trying to insert a segment"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    move-wide v12, v10

    .line 396
    .end local v10    # "firstTime":J
    .restart local v12    # "firstTime":J
    goto/16 :goto_0

    .line 373
    .end local v12    # "firstTime":J
    .restart local v10    # "firstTime":J
    :catch_0
    move-exception v9

    .line 374
    .local v9, "e":Landroid/database/SQLException;
    :try_start_3
    const-string v2, "insertMessageSegment(), query exception catch"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 377
    if-eqz v8, :cond_5

    .line 378
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    move-wide v12, v10

    .end local v10    # "firstTime":J
    .restart local v12    # "firstTime":J
    goto/16 :goto_0

    .line 377
    .end local v9    # "e":Landroid/database/SQLException;
    .end local v12    # "firstTime":J
    .restart local v10    # "firstTime":J
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_6

    .line 378
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2

    .line 391
    :catch_1
    move-exception v9

    .line 392
    .restart local v9    # "e":Landroid/database/SQLException;
    :try_start_4
    const-string v2, "insertMessageSegment(), query exception catch"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 393
    .end local v9    # "e":Landroid/database/SQLException;
    :catchall_1
    move-exception v2

    throw v2
.end method

.method private isLastSegmentedPDU(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 14
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 306
    const/4 v8, 0x0

    .line 307
    .local v8, "nCount":I
    const/4 v6, 0x0

    .line 308
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v0, "address ="

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    .local v11, "where":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGSprintReassemblySms;->isSegmentedPDU(Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v12

    .line 341
    :goto_0
    return v0

    .line 315
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGSprintReassemblySms;->getPaginationIndicator(Ljava/lang/String;)Lcom/android/internal/telephony/LGSprintReassemblySms$PaginationIndicator;

    move-result-object v9

    .line 316
    .local v9, "pi":Lcom/android/internal/telephony/LGSprintReassemblySms$PaginationIndicator;
    if-nez v9, :cond_1

    move v0, v12

    .line 317
    goto :goto_0

    .line 320
    :cond_1
    invoke-virtual {v9}, Lcom/android/internal/telephony/LGSprintReassemblySms$PaginationIndicator;->getTotalCount()I

    move-result v10

    .line 322
    .local v10, "totalCount":I
    const-string v0, " AND ( totalCount ="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/LGSprintReassemblySms$Segment;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 327
    if-eqz v6, :cond_2

    .line 328
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 334
    :cond_2
    if-eqz v6, :cond_3

    .line 335
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 338
    :cond_3
    if-le v10, v13, :cond_6

    add-int/lit8 v0, v10, -0x1

    if-ne v8, v0, :cond_6

    move v0, v13

    .line 339
    goto :goto_0

    .line 330
    :catch_0
    move-exception v7

    .line 331
    .local v7, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v0, "isLastSegmentedPDU(), query exception catch"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    if-eqz v6, :cond_4

    .line 335
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v12

    goto :goto_0

    .line 334
    .end local v7    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 335
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :cond_6
    move v0, v12

    .line 341
    goto :goto_0
.end method

.method private isSegmentedPDU(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 15
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 159
    const/4 v7, 0x0

    .line 160
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 162
    .local v9, "isByPass":Z
    if-nez p1, :cond_1

    .line 163
    const/4 v0, 0x0

    .line 210
    :cond_0
    :goto_0
    return v0

    .line 165
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v10

    .line 167
    .local v10, "messageBody":Ljava/lang/String;
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/LGSprintReassemblySms;->getPaginationIndicator(Ljava/lang/String;)Lcom/android/internal/telephony/LGSprintReassemblySms$PaginationIndicator;

    move-result-object v11

    .line 168
    .local v11, "pi":Lcom/android/internal/telephony/LGSprintReassemblySms$PaginationIndicator;
    if-nez v11, :cond_2

    .line 169
    const/4 v0, 0x0

    goto :goto_0

    .line 172
    :cond_2
    invoke-virtual {v11}, Lcom/android/internal/telephony/LGSprintReassemblySms$PaginationIndicator;->getSequence()I

    move-result v12

    .line 173
    .local v12, "sequence":I
    invoke-virtual {v11}, Lcom/android/internal/telephony/LGSprintReassemblySms$PaginationIndicator;->getTotalCount()I

    move-result v13

    .line 175
    .local v13, "totalCount":I
    if-gt v12, v13, :cond_3

    const/16 v0, 0xa

    if-gt v13, v0, :cond_3

    const/4 v0, 0x2

    if-ge v13, v0, :cond_4

    .line 176
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 178
    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v0, "address ="

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .local v14, "where":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v0, " AND ( sequence ="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v0, "totalCount !="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/LGSprintReassemblySms$Segment;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 188
    if-nez v7, :cond_5

    .line 189
    const/4 v0, 0x0

    .line 206
    if-eqz v7, :cond_0

    .line 207
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 191
    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 192
    const-string v0, "totalCount"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 193
    .local v6, "TotalCountIndex":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v13, :cond_5

    .line 194
    const/4 v9, 0x1

    .line 199
    .end local v6    # "TotalCountIndex":I
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-lez v0, :cond_7

    if-nez v9, :cond_7

    .line 200
    const/4 v0, 0x0

    .line 206
    if-eqz v7, :cond_0

    .line 207
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 206
    :cond_7
    if-eqz v7, :cond_8

    .line 207
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 210
    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 202
    :catch_0
    move-exception v8

    .line 203
    .local v8, "e":Landroid/database/SQLException;
    :try_start_2
    const-string v0, "isSegmentedPDU(), query exception catch"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    const/4 v0, 0x0

    .line 206
    if-eqz v7, :cond_0

    .line 207
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 206
    .end local v8    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_9

    .line 207
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method

.method private makeReassemblyPDU(Lcom/android/internal/telephony/SmsMessageBase;IILandroid/database/Cursor;ILjava/lang/StringBuilder;)[[B
    .locals 12
    .param p1, "lastSms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "totalCount"    # I
    .param p3, "sequence"    # I
    .param p4, "cursor"    # Landroid/database/Cursor;
    .param p5, "index"    # I
    .param p6, "where"    # Ljava/lang/StringBuilder;

    .prologue
    .line 626
    const-string v8, "pdu"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 627
    .local v5, "pduColumn":I
    const-string v8, "time"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 628
    .local v7, "timeColumn":I
    const-wide/16 v2, -0x1

    .line 630
    .local v2, "firstTime":J
    new-array v6, p2, [[B

    .line 632
    .local v6, "pdus":[[B
    const/4 v8, 0x1

    if-ne p3, v8, :cond_1

    .line 633
    add-int/lit8 v4, p5, 0x1

    .end local p5    # "index":I
    .local v4, "index":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v8

    aput-object v8, v6, p5

    :cond_0
    move/from16 p5, v4

    .line 635
    .end local v4    # "index":I
    .restart local p5    # "index":I
    :cond_1
    :goto_0
    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 636
    const-wide/16 v8, -0x1

    cmp-long v8, v2, v8

    if-nez v8, :cond_2

    .line 637
    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 639
    :cond_2
    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    cmp-long v8, v8, v2

    if-nez v8, :cond_1

    .line 640
    add-int/lit8 v4, p5, 0x1

    .end local p5    # "index":I
    .restart local v4    # "index":I
    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v6, p5

    .line 641
    add-int/lit8 v8, v4, 0x1

    if-ne p3, v8, :cond_0

    .line 642
    add-int/lit8 p5, v4, 0x1

    .end local v4    # "index":I
    .restart local p5    # "index":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v8

    aput-object v8, v6, v4

    goto :goto_0

    .line 646
    :cond_3
    const-string v8, " AND "

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    const-string v8, "time ="

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 650
    iget-object v8, p0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mResolver:Landroid/content/ContentResolver;

    iget-object v9, p0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentUri:Landroid/net/Uri;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 651
    return-object v6
.end method

.method private processMessageSegment(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 4
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 567
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGSprintReassemblySms;->isSegmentedPDU(Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 568
    const/4 v2, 0x2

    .line 579
    :goto_0
    return v2

    .line 570
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGSprintReassemblySms;->isLastSegmentedPDU(Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 571
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGSprintReassemblySms;->completeProcessMessageSegment(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v2

    goto :goto_0

    .line 575
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGSprintReassemblySms;->insertMessageSegment(Lcom/android/internal/telephony/SmsMessageBase;)J

    move-result-wide v0

    .line 576
    .local v0, "firstTime":J
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/telephony/LGSprintReassemblySms$SegmentExpirationRunnable;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/internal/telephony/LGSprintReassemblySms$SegmentExpirationRunnable;-><init>(Lcom/android/internal/telephony/LGSprintReassemblySms;Lcom/android/internal/telephony/SmsMessageBase;J)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 579
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private regReassemblyBroadcastReceiver()V
    .locals 3

    .prologue
    .line 583
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 584
    .local v0, "Reassemblyfilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 586
    new-instance v1, Lcom/android/internal/telephony/LGSprintReassemblySms$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/LGSprintReassemblySms$2;-><init>(Lcom/android/internal/telephony/LGSprintReassemblySms;)V

    iput-object v1, p0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mReassemblyBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 595
    iget-object v1, p0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mReassemblyBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 596
    return-void
.end method

.method private sendSavedPdusIndividually(Ljava/lang/String;)V
    .locals 10
    .param p1, "where"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 400
    const/4 v6, 0x0

    .line 401
    .local v6, "cursor":Landroid/database/Cursor;
    check-cast v9, [[B

    .line 403
    .local v9, "pdus":[[B
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->segmentExpirationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSavedPdusIndividually(), where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/LGSprintReassemblySms$Segment;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 410
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 426
    :cond_0
    if-eqz v6, :cond_1

    .line 427
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 429
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->segmentExpirationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 431
    :goto_0
    return-void

    .line 414
    :cond_2
    :try_start_1
    const-string v0, "pdu"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 415
    .local v8, "pduColumn":I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 416
    const/4 v0, 0x1

    new-array v9, v0, [[B

    .line 417
    const/4 v0, 0x0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v9, v0

    .line 418
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/LGSprintReassemblySms;->dispatchPdusForSprintSegment([[B)V

    .line 419
    const-string v0, "sendSavedPdusIndividually(), One segment is sent individually."

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 423
    .end local v8    # "pduColumn":I
    :catch_0
    move-exception v7

    .line 424
    .local v7, "e":Landroid/database/SQLException;
    :try_start_2
    const-string v0, "sendSavedPdusIndividually(), query exception catch"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 426
    if-eqz v6, :cond_3

    .line 427
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 429
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->segmentExpirationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 422
    .end local v7    # "e":Landroid/database/SQLException;
    .restart local v8    # "pduColumn":I
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mSegmentUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 426
    if-eqz v6, :cond_5

    .line 427
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 429
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->segmentExpirationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 426
    .end local v8    # "pduColumn":I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 427
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 429
    :cond_6
    sget-object v1, Lcom/android/internal/telephony/LGSprintReassemblySms;->segmentExpirationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private trySegmentExpirationAfterBootUp()V
    .locals 2

    .prologue
    .line 468
    sget-boolean v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->excutedSegmentExpirationAfterBootUp:Z

    if-eqz v0, :cond_0

    .line 493
    :goto_0
    return-void

    .line 471
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/LGSprintReassemblySms;->excutedSegmentExpirationAfterBootUp:Z

    .line 474
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/LGSprintReassemblySms$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/LGSprintReassemblySms$1;-><init>(Lcom/android/internal/telephony/LGSprintReassemblySms;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public setMessageReassembly(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 655
    iput-boolean p1, p0, Lcom/android/internal/telephony/LGSprintReassemblySms;->m_bMessageReassembly:Z

    .line 656
    return-void
.end method

.method protected supportSmsReassembly(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 5
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 600
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    if-eq v4, v1, :cond_0

    .line 601
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGSprintReassemblySms;->m_bMessageReassembly:Z

    .line 605
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/LGSprintReassemblySms;->mContext:Landroid/content/Context;

    const-string v2, "sprint_not_support_reassembly_sms_setting_menu"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 606
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGSprintReassemblySms;->m_bMessageReassembly:Z

    .line 610
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchNormalMessage(), MessageReassembly setting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/LGSprintReassemblySms;->m_bMessageReassembly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 612
    iget-boolean v1, p0, Lcom/android/internal/telephony/LGSprintReassemblySms;->m_bMessageReassembly:Z

    if-eqz v1, :cond_2

    .line 615
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGSprintReassemblySms;->processMessageSegment(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v0

    .line 616
    .local v0, "segmentResult":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchNormalMessage(), processMessageSegment result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 617
    if-eq v0, v4, :cond_2

    .line 621
    .end local v0    # "segmentResult":I
    :goto_0
    return v0

    :cond_2
    const/16 v0, 0xb

    goto :goto_0
.end method
