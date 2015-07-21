.class public abstract Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final DBG:Z = true

.field private static final EMERGENCY_POWER_SAVING_CLASSNAME:Ljava/lang/String; = "com.nttdocomo.android.epsmodecontrol.FotaDialogActivity"

.field private static final EMERGENCY_POWER_SAVING_PACKAGENAME:Ljava/lang/String; = "com.nttdocomo.android.epsmodecontrol"

.field private static final LOCATION_SELECTION:Ljava/lang/String; = "m_type=? AND ct_l =?"

.field private static final TAG:Ljava/lang/String; = "WAP PUSH"

.field private static final THREAD_ID_SELECTION:Ljava/lang/String; = "m_id=? AND m_type=?"

.field private static final mEpsmodeNotificationList:[[Ljava/lang/String;


# instance fields
.field private mAccessControlManager:Lmeizu/security/AccessControlManager;

.field protected final mContext:Landroid/content/Context;

.field private volatile mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 93
    new-array v0, v3, [[Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "7"

    aput-object v2, v1, v4

    const-string v2, "application/vnd.syncml.notification"

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "com.nttdocomo.android.osv"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "com.nttdocomo.android.fota.SMSService"

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/WapPushOverSms;->mEpsmodeNotificationList:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 113
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/telephony/IWapPushManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 115
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 116
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 117
    :cond_0
    const-string v2, "WAP PUSH"

    const-string v3, "bindService() for wappush manager failed"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_1
    const-string v2, "WAP PUSH"

    const-string v3, "bindService() for wappush manager succeeded"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getDeliveryOrReadReportThreadId(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)J
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;

    .prologue
    const-wide/16 v10, -0x1

    .line 537
    instance-of v0, p1, Lcom/google/android/mms/pdu/DeliveryInd;

    if-eqz v0, :cond_1

    .line 538
    new-instance v9, Ljava/lang/String;

    check-cast p1, Lcom/google/android/mms/pdu/DeliveryInd;

    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/DeliveryInd;->getMessageId()[B

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    .line 546
    .local v9, "messageId":Ljava/lang/String;
    :goto_0
    const/4 v7, 0x0

    .line 548
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "thread_id"

    aput-object v4, v3, v0

    const-string v4, "m_id=? AND m_type=?"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v9}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x1

    const/16 v6, 0x80

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 559
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 560
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 565
    if-eqz v7, :cond_0

    .line 566
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 569
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "messageId":Ljava/lang/String;
    :cond_0
    :goto_1
    return-wide v0

    .line 539
    .restart local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_1
    instance-of v0, p1, Lcom/google/android/mms/pdu/ReadOrigInd;

    if-eqz v0, :cond_2

    .line 540
    new-instance v9, Ljava/lang/String;

    check-cast p1, Lcom/google/android/mms/pdu/ReadOrigInd;

    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/ReadOrigInd;->getMessageId()[B

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    .restart local v9    # "messageId":Ljava/lang/String;
    goto :goto_0

    .line 542
    .end local v9    # "messageId":Ljava/lang/String;
    .restart local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_2
    const-string v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WAP Push data is neither delivery or read report type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v10

    .line 544
    goto :goto_1

    .line 565
    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "messageId":Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_4

    .line 566
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_2
    move-wide v0, v10

    .line 569
    goto :goto_1

    .line 562
    :catch_0
    move-exception v8

    .line 563
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "WAP PUSH"

    const-string v1, "Failed to query delivery or read report thread id"

    invoke-static {v0, v1, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 565
    if-eqz v7, :cond_4

    .line 566
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 565
    .end local v8    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 566
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private static isDuplicateNotification(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nInd"    # Lcom/google/android/mms/pdu/NotificationInd;

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 576
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v10

    .line 577
    .local v10, "rawLocation":[B
    if-eqz v10, :cond_2

    .line 578
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    .line 579
    .local v9, "location":Ljava/lang/String;
    new-array v11, v12, [Ljava/lang/String;

    aput-object v9, v11, v13

    .line 580
    .local v11, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 582
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v0

    const-string v4, "m_type=? AND ct_l =?"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v6, 0x82

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x1

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v10}, Ljava/lang/String;-><init>([B)V

    aput-object v6, v5, v0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 593
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    .line 600
    if-eqz v7, :cond_0

    .line 601
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v12

    .line 605
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "location":Ljava/lang/String;
    .end local v11    # "selectionArgs":[Ljava/lang/String;
    :goto_0
    return v0

    .line 600
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "location":Ljava/lang/String;
    .restart local v11    # "selectionArgs":[Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_2

    .line 601
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "location":Ljava/lang/String;
    .end local v11    # "selectionArgs":[Ljava/lang/String;
    :cond_2
    :goto_1
    move v0, v13

    .line 605
    goto :goto_0

    .line 597
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "location":Ljava/lang/String;
    .restart local v11    # "selectionArgs":[Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 598
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "WAP PUSH"

    const-string v1, "failed to query existing notification ind"

    invoke-static {v0, v1, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 600
    if-eqz v7, :cond_2

    .line 601
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 600
    .end local v8    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 601
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private writeInboxMessage(J[B)V
    .locals 23
    .param p1, "subId"    # J
    .param p3, "pushData"    # [B

    .prologue
    .line 445
    new-instance v4, Lcom/google/android/mms/pdu/PduParser;

    move-object/from16 v0, p3

    invoke-direct {v4, v0}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v3

    .line 446
    .local v3, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    if-nez v3, :cond_0

    .line 447
    const-string v4, "WAP PUSH"

    const-string v5, "Invalid PUSH PDU"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    .line 450
    .local v2, "persister":Lcom/google/android/mms/pdu/PduPersister;
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v22

    .line 452
    .local v22, "type":I
    sparse-switch v22, :sswitch_data_0

    .line 522
    :try_start_0
    const-string v4, "WAP PUSH"

    const-string v5, "Received unrecognized WAP Push PDU."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_1
    :goto_0
    return-void

    .line 455
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/internal/telephony/WapPushOverSms;->getDeliveryOrReadReportThreadId(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)J

    move-result-wide v20

    .line 456
    .local v20, "threadId":J
    const-wide/16 v4, -0x1

    cmp-long v4, v20, v4

    if-nez v4, :cond_2

    .line 459
    const-string v4, "WAP PUSH"

    const-string v5, "Failed to find delivery or read report\'s thread id"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 524
    .end local v20    # "threadId":J
    :catch_0
    move-exception v17

    .line 525
    .local v17, "e":Lcom/google/android/mms/MmsException;
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to save MMS WAP push data: type="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 462
    .end local v17    # "e":Lcom/google/android/mms/MmsException;
    .restart local v20    # "threadId":J
    :cond_2
    :try_start_1
    sget-object v4, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v6

    .line 468
    .local v6, "uri":Landroid/net/Uri;
    if-nez v6, :cond_3

    .line 469
    const-string v4, "WAP PUSH"

    const-string v5, "Failed to persist delivery or read report"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 526
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v20    # "threadId":J
    :catch_1
    move-exception v17

    .line 527
    .local v17, "e":Ljava/lang/RuntimeException;
    const-string v4, "WAP PUSH"

    const-string v5, "Unexpected RuntimeException in persisting MMS WAP push data"

    move-object/from16 v0, v17

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 473
    .end local v17    # "e":Ljava/lang/RuntimeException;
    .restart local v6    # "uri":Landroid/net/Uri;
    .restart local v20    # "threadId":J
    :cond_3
    :try_start_2
    new-instance v7, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v7, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 474
    .local v7, "values":Landroid/content/ContentValues;
    const-string v4, "thread_id"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 482
    const-string v4, "WAP PUSH"

    const-string v5, "Failed to update delivery or read report thread id"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 487
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v20    # "threadId":J
    :sswitch_1
    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    move-object/from16 v18, v0

    .line 489
    .local v18, "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    invoke-static/range {p1 .. p2}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriber(J)Landroid/telephony/SmsManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SmsManager;->getCarrierConfigValues()Landroid/os/Bundle;

    move-result-object v14

    .line 491
    .local v14, "configs":Landroid/os/Bundle;
    if-eqz v14, :cond_4

    const-string v4, "enabledTransID"

    const/4 v5, 0x0

    invoke-virtual {v14, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 493
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v15

    .line 494
    .local v15, "contentLocation":[B
    const/16 v4, 0x3d

    array-length v5, v15

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v15, v5

    if-ne v4, v5, :cond_4

    .line 495
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v19

    .line 496
    .local v19, "transactionId":[B
    array-length v4, v15

    move-object/from16 v0, v19

    array-length v5, v0

    add-int/2addr v4, v5

    new-array v0, v4, [B

    move-object/from16 v16, v0

    .line 498
    .local v16, "contentLocationWithId":[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v8, v15

    move-object/from16 v0, v16

    invoke-static {v15, v4, v0, v5, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 500
    const/4 v4, 0x0

    array-length v5, v15

    move-object/from16 v0, v19

    array-length v8, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v4, v1, v5, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 502
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/NotificationInd;->setContentLocation([B)V

    .line 505
    .end local v15    # "contentLocation":[B
    .end local v16    # "contentLocationWithId":[B
    .end local v19    # "transactionId":[B
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/android/internal/telephony/WapPushOverSms;->isDuplicateNotification(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 506
    sget-object v10, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v8, v2

    move-object v9, v3

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v6

    .line 512
    .restart local v6    # "uri":Landroid/net/Uri;
    if-nez v6, :cond_1

    .line 513
    const-string v4, "WAP PUSH"

    const-string v5, "Failed to save MMS WAP push notification ind"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 516
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_5
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skip storing duplicate MMS WAP push notification ind: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v8, Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 452
    nop

    :sswitch_data_0
    .sparse-switch
        0x82 -> :sswitch_1
        0x86 -> :sswitch_0
        0x88 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected abstract checkStateLockAndWipe(Ljava/lang/String;J)Z
.end method

.method protected abstract checkWapPushWithSpam([BLandroid/content/BroadcastReceiver;ZIILjava/lang/String;)Z
.end method

.method public dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;Ljava/lang/String;)I
    .locals 42
    .param p1, "pdu"    # [B
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p4, "smscAddress"    # Ljava/lang/String;
    .param p5, "address"    # Ljava/lang/String;

    .prologue
    .line 148
    const/4 v7, 0x0

    .line 152
    .local v7, "thisIsSpam":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rx: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->p(Ljava/lang/String;)I

    .line 156
    const/16 v27, 0x0

    .line 159
    .local v27, "index":I
    const/16 v35, 0x0

    .line 161
    .local v35, "safeSmsField":B
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const-string v5, "SafeSMSforMMSNoti"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1f

    .line 162
    add-int/lit8 v28, v27, 0x1

    .end local v27    # "index":I
    .local v28, "index":I
    :try_start_1
    aget-byte v4, p1, v27

    and-int/lit16 v4, v4, 0xff

    int-to-byte v0, v4

    move/from16 v35, v0

    .line 163
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wap push isSafeSMS = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit8 v5, v35, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 167
    :goto_0
    add-int/lit8 v27, v28, 0x1

    .end local v28    # "index":I
    .restart local v27    # "index":I
    :try_start_2
    aget-byte v4, p1, v28
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    and-int/lit16 v0, v4, 0xff

    move/from16 v39, v0

    .line 168
    .local v39, "transactionId":I
    add-int/lit8 v28, v27, 0x1

    .end local v27    # "index":I
    .restart local v28    # "index":I
    :try_start_3
    aget-byte v4, p1, v27

    and-int/lit16 v0, v4, 0xff

    move/from16 v31, v0

    .line 171
    .local v31, "pduType":I
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v32

    .line 173
    .local v32, "phoneId":I
    const/4 v4, 0x6

    move/from16 v0, v31

    if-eq v0, v4, :cond_2

    const/4 v4, 0x7

    move/from16 v0, v31

    if-eq v0, v4, :cond_2

    .line 176
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const-string v5, "reparse_wap_push_index"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/WapPushOverSms;->getValidWapPduIndex()I
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v27

    .end local v28    # "index":I
    .restart local v27    # "index":I
    move/from16 v28, v27

    .line 185
    .end local v27    # "index":I
    .restart local v28    # "index":I
    :goto_1
    const/4 v4, -0x1

    move/from16 v0, v28

    if-eq v0, v4, :cond_1

    .line 186
    add-int/lit8 v27, v28, 0x1

    .end local v28    # "index":I
    .restart local v27    # "index":I
    :try_start_4
    aget-byte v4, p1, v28
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    and-int/lit16 v0, v4, 0xff

    move/from16 v39, v0

    .line 187
    add-int/lit8 v28, v27, 0x1

    .end local v27    # "index":I
    .restart local v28    # "index":I
    :try_start_5
    aget-byte v4, p1, v27

    and-int/lit16 v0, v4, 0xff

    move/from16 v31, v0

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchWapPdu(), index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " PDU Type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " transactionID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->w(Ljava/lang/String;)I

    .line 191
    const/4 v4, 0x6

    move/from16 v0, v31

    if-eq v0, v4, :cond_2

    const/4 v4, 0x7

    move/from16 v0, v31

    if-eq v0, v4, :cond_2

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchWapPdu(), Received non-PUSH WAP PDU. Type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->w(Ljava/lang/String;)I

    .line 194
    const/4 v4, 0x1

    .line 440
    .end local v28    # "index":I
    .end local v31    # "pduType":I
    .end local v32    # "phoneId":I
    .end local v39    # "transactionId":I
    :goto_2
    return v4

    .line 180
    .restart local v28    # "index":I
    .restart local v31    # "pduType":I
    .restart local v32    # "phoneId":I
    .restart local v39    # "transactionId":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #android:integer@config_valid_wappush_index#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v27

    .end local v28    # "index":I
    .restart local v27    # "index":I
    move/from16 v28, v27

    .end local v27    # "index":I
    .restart local v28    # "index":I
    goto :goto_1

    .line 197
    :cond_1
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2

    .line 198
    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    move/from16 v27, v28

    .line 202
    .end local v28    # "index":I
    .restart local v27    # "index":I
    :try_start_6
    new-instance v30, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 210
    .local v30, "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 211
    const-string v4, "WAP PUSH"

    const-string v5, "Received PDU. Header Length error."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v4, 0x2

    goto :goto_2

    .line 214
    :cond_3
    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v4

    long-to-int v8, v4

    .line 215
    .local v8, "headerLength":I
    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v4

    add-int v27, v27, v4

    .line 217
    move/from16 v9, v27

    .line 231
    .local v9, "headerStartIndex":I
    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 232
    const-string v4, "WAP PUSH"

    const-string v5, "Received PDU. Header Content-Type error."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v4, 0x2

    goto :goto_2

    .line 236
    :cond_4
    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v10

    .line 237
    .local v10, "mimeType":Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v18

    .line 238
    .local v18, "binaryContentType":J
    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v4

    add-int v27, v27, v4

    .line 241
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const-string v5, "support_sprint_lock_and_wipe"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 242
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/internal/telephony/WapPushOverSms;->checkStateLockAndWipe(Ljava/lang/String;J)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 243
    const/4 v4, 0x2

    goto/16 :goto_2

    .line 248
    :cond_5
    new-array v0, v8, [B

    move-object/from16 v25, v0

    .line 249
    .local v25, "header":[B
    const/4 v4, 0x0

    move-object/from16 v0, v25

    array-length v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-static {v0, v9, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 253
    if-eqz v10, :cond_b

    const-string v4, "application/vnd.wap.coc"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 254
    move-object/from16 v29, p1

    .line 261
    .local v29, "intentData":[B
    :goto_3
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SmsManager;->getAutoPersisting()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 263
    invoke-static/range {v32 .. v32}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v38

    .line 266
    .local v38, "subIds":[J
    if-eqz v38, :cond_c

    move-object/from16 v0, v38

    array-length v4, v0

    if-lez v4, :cond_c

    const/4 v4, 0x0

    aget-wide v36, v38, v4

    .line 268
    .local v36, "subId":J
    :goto_4
    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/WapPushOverSms;->writeInboxMessage(J[B)V

    .line 277
    .end local v36    # "subId":J
    .end local v38    # "subIds":[J
    :cond_6
    add-int v4, v27, v8

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 278
    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v27, v0

    .line 279
    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 280
    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v40

    .line 281
    .local v40, "wapAppId":Ljava/lang/String;
    if-nez v40, :cond_7

    .line 282
    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v40

    .line 285
    :cond_7
    if-nez v10, :cond_d

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    .line 287
    .local v21, "contentType":Ljava/lang/String;
    :goto_5
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appid found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const-string v5, "support_sprint_lock_and_wipe"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 291
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/WapPushOverSms;->getContentLockAndWipe(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 296
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const-string v5, "KRWapPushWithSpam"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 297
    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/WapPushOverSms;->checkWapPushWithSpam([BLandroid/content/BroadcastReceiver;ZIILjava/lang/String;)Z

    move-result v7

    .line 302
    :cond_9
    const-string v4, "ro.build.target_operator"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "DCM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "persist.sys.epsmodestate"

    const-string v5, "off"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 304
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_6
    sget-object v4, Lcom/android/internal/telephony/WapPushOverSms;->mEpsmodeNotificationList:[[Ljava/lang/String;

    array-length v4, v4

    move/from16 v0, v26

    if-ge v0, v4, :cond_e

    .line 305
    sget-object v4, Lcom/android/internal/telephony/WapPushOverSms;->mEpsmodeNotificationList:[[Ljava/lang/String;

    aget-object v4, v4, v26

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Lcom/android/internal/telephony/WapPushOverSms;->mEpsmodeNotificationList:[[Ljava/lang/String;

    aget-object v4, v4, v26

    const/4 v5, 0x1

    aget-object v4, v4, v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    move-result v4

    if-eqz v4, :cond_a

    .line 307
    :try_start_7
    new-instance v24, Landroid/content/Intent;

    invoke-direct/range {v24 .. v24}, Landroid/content/Intent;-><init>()V

    .line 308
    .local v24, "epsintent":Landroid/content/Intent;
    const-string v4, "com.nttdocomo.android.epsmodecontrol"

    const-string v5, "com.nttdocomo.android.epsmodecontrol.FotaDialogActivity"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const/high16 v4, 0x10000000

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 310
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0

    .line 304
    .end local v24    # "epsintent":Landroid/content/Intent;
    :cond_a
    :goto_7
    add-int/lit8 v26, v26, 0x1

    goto :goto_6

    .line 256
    .end local v21    # "contentType":Ljava/lang/String;
    .end local v26    # "i":I
    .end local v29    # "intentData":[B
    .end local v40    # "wapAppId":Ljava/lang/String;
    :cond_b
    add-int v22, v9, v8

    .line 257
    .local v22, "dataIndex":I
    :try_start_8
    move-object/from16 v0, p1

    array-length v4, v0

    sub-int v4, v4, v22

    new-array v0, v4, [B

    move-object/from16 v29, v0

    .line 258
    .restart local v29    # "intentData":[B
    const/4 v4, 0x0

    move-object/from16 v0, v29

    array-length v5, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_3

    .line 436
    .end local v8    # "headerLength":I
    .end local v9    # "headerStartIndex":I
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local v18    # "binaryContentType":J
    .end local v22    # "dataIndex":I
    .end local v25    # "header":[B
    .end local v29    # "intentData":[B
    .end local v30    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v31    # "pduType":I
    .end local v32    # "phoneId":I
    .end local v39    # "transactionId":I
    :catch_0
    move-exception v17

    .line 439
    .local v17, "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_8
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ignoring dispatchWapPdu() array index exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v4, 0x2

    goto/16 :goto_2

    .line 266
    .end local v17    # "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v8    # "headerLength":I
    .restart local v9    # "headerStartIndex":I
    .restart local v10    # "mimeType":Ljava/lang/String;
    .restart local v18    # "binaryContentType":J
    .restart local v25    # "header":[B
    .restart local v29    # "intentData":[B
    .restart local v30    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .restart local v31    # "pduType":I
    .restart local v32    # "phoneId":I
    .restart local v38    # "subIds":[J
    .restart local v39    # "transactionId":I
    :cond_c
    :try_start_9
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubId()J
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_0

    move-result-wide v36

    goto/16 :goto_4

    .end local v38    # "subIds":[J
    .restart local v40    # "wapAppId":Ljava/lang/String;
    :cond_d
    move-object/from16 v21, v10

    .line 285
    goto/16 :goto_5

    .line 319
    .restart local v21    # "contentType":Ljava/lang/String;
    :cond_e
    const/16 v34, 0x1

    .line 320
    .local v34, "processFurther":Z
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    move-object/from16 v41, v0

    .line 322
    .local v41, "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    if-nez v41, :cond_10

    .line 323
    const-string v4, "WAP PUSH"

    const-string v5, "wap push manager not found!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_f
    :goto_9
    if-nez v34, :cond_12

    .line 345
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 325
    :cond_10
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 326
    .local v12, "intent":Landroid/content/Intent;
    const-string v4, "transactionId"

    move/from16 v0, v39

    invoke-virtual {v12, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 327
    const-string v4, "pduType"

    move/from16 v0, v31

    invoke-virtual {v12, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 328
    const-string v4, "header"

    move-object/from16 v0, v25

    invoke-virtual {v12, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 329
    const-string v4, "data"

    move-object/from16 v0, v29

    invoke-virtual {v12, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 330
    const-string v4, "contentTypeParameters"

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 332
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 333
    const-string v4, "address"

    move-object/from16 v0, p5

    invoke-virtual {v12, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    :cond_11
    move/from16 v0, v32

    invoke-static {v12, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 337
    move-object/from16 v0, v41

    move-object/from16 v1, v40

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2, v12}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v33

    .line 338
    .local v33, "procRet":I
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "procRet:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_0

    .line 339
    and-int/lit8 v4, v33, 0x1

    if-lez v4, :cond_f

    const v4, 0x8000

    and-int v4, v4, v33

    if-nez v4, :cond_f

    .line 341
    const/16 v34, 0x0

    goto :goto_9

    .line 347
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v33    # "procRet":I
    .end local v41    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :catch_1
    move-exception v23

    .line 348
    .local v23, "e":Landroid/os/RemoteException;
    :try_start_b
    const-string v4, "WAP PUSH"

    const-string v5, "remote func failed..."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .end local v23    # "e":Landroid/os/RemoteException;
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const-string v5, "dcm_push_check_security"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 352
    const-string v4, "9"

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const-string v4, "application/vnd.wap.emn+wbxml"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 353
    :cond_13
    const-string v4, "WAP PUSH"

    const-string v5, "not mopera U mail push"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 359
    .end local v21    # "contentType":Ljava/lang/String;
    .end local v34    # "processFurther":Z
    .end local v40    # "wapAppId":Ljava/lang/String;
    :cond_14
    const-string v4, "WAP PUSH"

    const-string v5, "fall back to existing handler"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    if-nez v10, :cond_15

    .line 362
    const-string v4, "WAP PUSH"

    const-string v5, "Header Content-Type error."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/4 v4, 0x2

    goto/16 :goto_2

    .line 369
    :cond_15
    const-string v4, "application/vnd.wap.mms-message"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 370
    const-string v13, "android.permission.RECEIVE_MMS"

    .line 371
    .local v13, "permission":Ljava/lang/String;
    const/16 v14, 0x12

    .line 377
    .local v14, "appOp":I
    :goto_a
    new-instance v12, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-direct {v12, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 380
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const-string v5, "KRWapPushWithSpam"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_16

    const/4 v4, 0x1

    if-ne v7, v4, :cond_16

    .line 382
    new-instance v12, Landroid/content/Intent;

    .end local v12    # "intent":Landroid/content/Intent;
    const-string v4, "android.provider.Telephony.WAP_PUSH_SPAM_RECEIVED"

    invoke-direct {v12, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    .restart local v12    # "intent":Landroid/content/Intent;
    :cond_16
    invoke-virtual {v12, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    const-string v4, "transactionId"

    move/from16 v0, v39

    invoke-virtual {v12, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 387
    const-string v4, "pduType"

    move/from16 v0, v31

    invoke-virtual {v12, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 388
    const-string v4, "header"

    move-object/from16 v0, v25

    invoke-virtual {v12, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 389
    const-string v4, "data"

    move-object/from16 v0, v29

    invoke-virtual {v12, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 390
    const-string v4, "contentTypeParameters"

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 392
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 393
    const-string v4, "address"

    move-object/from16 v0, p5

    invoke-virtual {v12, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    :cond_17
    const-string v4, "application/vnd.wap.sic"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    const-string v4, "application/vnd.wap.slc"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 398
    :cond_18
    const-string v4, "smscAdd"

    move-object/from16 v0, p4

    invoke-virtual {v12, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const-string v4, "originAdd"

    move-object/from16 v0, p5

    invoke-virtual {v12, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const-string v5, "SafeSMSforMMSNoti"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 405
    const-string v4, "application/vnd.wap.mms-message"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 406
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wap push isSafeSMS = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit8 v5, v35, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 407
    const-string v4, "safe_sms"

    move/from16 v0, v35

    invoke-virtual {v12, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 412
    :cond_1a
    move/from16 v0, v32

    invoke-static {v12, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 415
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const-string v5, "KRWapPushWithSpam"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1c

    const/4 v4, 0x1

    if-ne v7, v4, :cond_1c

    .line 416
    sget-object v16, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v11, p3

    move-object/from16 v15, p2

    invoke-virtual/range {v11 .. v16}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 417
    const/4 v4, -0x1

    goto/16 :goto_2

    .line 373
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "permission":Ljava/lang/String;
    .end local v14    # "appOp":I
    :cond_1b
    const-string v13, "android.permission.RECEIVE_WAP_PUSH"

    .line 374
    .restart local v13    # "permission":Ljava/lang/String;
    const/16 v14, 0x13

    .restart local v14    # "appOp":I
    goto/16 :goto_a

    .line 422
    .restart local v12    # "intent":Landroid/content/Intent;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v20

    .line 423
    .local v20, "componentName":Landroid/content/ComponentName;
    if-eqz v20, :cond_1d

    .line 425
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 426
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delivering MMS to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const-string v5, "tmus_whitepages_nameid"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 431
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {v4, v12}, Lcom/whitepages/nameid/NameIDBlockingHelper;->wrapIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v12

    .line 434
    :cond_1e
    sget-object v16, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v11, p3

    move-object/from16 v15, p2

    invoke-virtual/range {v11 .. v16}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V
    :try_end_b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_0

    .line 435
    const/4 v4, -0x1

    goto/16 :goto_2

    .line 436
    .end local v8    # "headerLength":I
    .end local v9    # "headerStartIndex":I
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "permission":Ljava/lang/String;
    .end local v14    # "appOp":I
    .end local v18    # "binaryContentType":J
    .end local v20    # "componentName":Landroid/content/ComponentName;
    .end local v25    # "header":[B
    .end local v27    # "index":I
    .end local v29    # "intentData":[B
    .end local v30    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v31    # "pduType":I
    .end local v32    # "phoneId":I
    .end local v39    # "transactionId":I
    .restart local v28    # "index":I
    :catch_2
    move-exception v17

    move/from16 v27, v28

    .end local v28    # "index":I
    .restart local v27    # "index":I
    goto/16 :goto_8

    .line 311
    .restart local v8    # "headerLength":I
    .restart local v9    # "headerStartIndex":I
    .restart local v10    # "mimeType":Ljava/lang/String;
    .restart local v18    # "binaryContentType":J
    .restart local v21    # "contentType":Ljava/lang/String;
    .restart local v25    # "header":[B
    .restart local v26    # "i":I
    .restart local v29    # "intentData":[B
    .restart local v30    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .restart local v31    # "pduType":I
    .restart local v32    # "phoneId":I
    .restart local v39    # "transactionId":I
    .restart local v40    # "wapAppId":Ljava/lang/String;
    :catch_3
    move-exception v4

    goto/16 :goto_7

    .end local v8    # "headerLength":I
    .end local v9    # "headerStartIndex":I
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local v18    # "binaryContentType":J
    .end local v21    # "contentType":Ljava/lang/String;
    .end local v25    # "header":[B
    .end local v26    # "i":I
    .end local v29    # "intentData":[B
    .end local v30    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v31    # "pduType":I
    .end local v32    # "phoneId":I
    .end local v39    # "transactionId":I
    .end local v40    # "wapAppId":Ljava/lang/String;
    :cond_1f
    move/from16 v28, v27

    .end local v27    # "index":I
    .restart local v28    # "index":I
    goto/16 :goto_0
.end method

.method dispose()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "WAP PUSH"

    const-string v1, "dispose: unbind wappush manager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    const-string v0, "WAP PUSH"

    const-string v1, "dispose: not bound to a wappush manager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected abstract getContentLockAndWipe(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected abstract getValidWapPduIndex()I
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 101
    invoke-static {p2}, Lcom/android/internal/telephony/IWapPushManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IWapPushManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 102
    const-string v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wappush manager connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 108
    const-string v0, "WAP PUSH"

    const-string v1, "wappush manager disconnected."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method protected checkAccessControl()Z
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const-string v2, "access_control"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmeizu/security/AccessControlManager;

    iput-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    const-string v2, "com.android.mms"

    invoke-virtual {v1, v2}, Lmeizu/security/AccessControlManager;->checkAccessControl(Ljava/lang/String;)Z

    move-result v0

    .local v0, "encryption":Z
    return v0
.end method

.method public dispatchWapPduExt([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;[[BLjava/lang/String;)I
    .locals 34
    .param p1, "pdu"    # [B
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p4, "rawSmsPdus"    # [[B
    .param p5, "format"    # Ljava/lang/String;

    .prologue
    const/16 v19, 0x0

    .local v19, "index":I
    add-int/lit8 v20, v19, 0x1

    .end local v19    # "index":I
    .local v20, "index":I
    :try_start_0
    aget-byte v4, p1, v19
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    and-int/lit16 v0, v4, 0xff

    move/from16 v31, v0

    .local v31, "transactionId":I
    add-int/lit8 v19, v20, 0x1

    .end local v20    # "index":I
    .restart local v19    # "index":I
    :try_start_1
    aget-byte v4, p1, v20

    and-int/lit16 v0, v4, 0xff

    move/from16 v24, v0

    .local v24, "pduType":I
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v25

    .local v25, "phoneId":I
    const/4 v4, 0x6

    move/from16 v0, v24

    if-eq v0, v4, :cond_1

    const/4 v4, 0x7

    move/from16 v0, v24

    if-eq v0, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, #android:integer@config_valid_wappush_index#t

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v19

    const/4 v4, -0x1

    move/from16 v0, v19

    if-eq v0, v4, :cond_0

    add-int/lit8 v20, v19, 0x1

    .end local v19    # "index":I
    .restart local v20    # "index":I
    :try_start_2
    aget-byte v4, p1, v19
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    and-int/lit16 v0, v4, 0xff

    move/from16 v31, v0

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "index":I
    .restart local v19    # "index":I
    :try_start_3
    aget-byte v4, p1, v20

    and-int/lit16 v0, v4, 0xff

    move/from16 v24, v0

    const/4 v4, 0x6

    move/from16 v0, v24

    if-eq v0, v4, :cond_1

    const/4 v4, 0x7

    move/from16 v0, v24

    if-eq v0, v4, :cond_1

    const/4 v4, 0x1

    .end local v24    # "pduType":I
    .end local v25    # "phoneId":I
    .end local v31    # "transactionId":I
    :goto_0
    return v4

    .restart local v24    # "pduType":I
    .restart local v25    # "phoneId":I
    .restart local v31    # "transactionId":I
    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v23, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .local v23, "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v8

    long-to-int v0, v8

    move/from16 v17, v0

    .local v17, "headerLength":I
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v4

    add-int v19, v19, v4

    move/from16 v18, v19

    .local v18, "headerStartIndex":I
    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x2

    goto :goto_0

    :cond_3
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v22

    .local v22, "mimeType":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v12

    .local v12, "binaryContentType":J
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v4

    add-int v19, v19, v4

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .local v16, "header":[B
    const/4 v4, 0x0

    move-object/from16 v0, v16

    array-length v8, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2, v4, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    if-eqz v22, :cond_8

    const-string v4, "application/vnd.wap.coc"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "application/vnd.wap.sic"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "application/vnd.wap.slc"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_4
    move-object/from16 v21, p1

    .local v21, "intentData":[B
    :goto_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SmsManager;->getAutoPersisting()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static/range {v25 .. v25}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v30

    .local v30, "subIds":[J
    if-eqz v30, :cond_9

    move-object/from16 v0, v30

    array-length v4, v0

    if-lez v4, :cond_9

    const/4 v4, 0x0

    aget-wide v28, v30, v4

    .local v28, "subId":J
    :goto_2
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/WapPushOverSms;->writeInboxMessage(J[B)V

    .end local v28    # "subId":J
    .end local v30    # "subIds":[J
    :cond_5
    add-int v4, v19, v17

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v8

    long-to-int v0, v8

    move/from16 v19, v0

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v32

    .local v32, "wapAppId":Ljava/lang/String;
    if-nez v32, :cond_6

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v8

    long-to-int v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    :cond_6
    if-nez v22, :cond_a

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v14

    .local v14, "contentType":Ljava/lang/String;
    :goto_3
    const/16 v27, 0x1

    .local v27, "processFurther":Z
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    move-object/from16 v33, v0

    .local v33, "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    if-eqz v33, :cond_7

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .local v5, "intent":Landroid/content/Intent;
    const-string v4, "transactionId"

    move/from16 v0, v31

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "pduType"

    move/from16 v0, v24

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "header"

    move-object/from16 v0, v16

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v4, "data"

    move-object/from16 v0, v21

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v4, "contentTypeParameters"

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v5, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move/from16 v0, v25

    invoke-static {v5, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    const-string v4, "pdus"

    move-object/from16 v0, p4

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v4, "format"

    move-object/from16 v0, p5

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-interface {v0, v1, v14, v5}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v26

    .local v26, "procRet":I
    and-int/lit8 v4, v26, 0x1

    if-lez v4, :cond_7

    const v4, 0x8000

    and-int v4, v4, v26

    if-nez v4, :cond_7

    const/16 v27, 0x0

    .end local v5    # "intent":Landroid/content/Intent;
    .end local v26    # "procRet":I
    :cond_7
    if-nez v27, :cond_b

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v14    # "contentType":Ljava/lang/String;
    .end local v21    # "intentData":[B
    .end local v27    # "processFurther":Z
    .end local v32    # "wapAppId":Ljava/lang/String;
    .end local v33    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :cond_8
    add-int v15, v18, v17

    .local v15, "dataIndex":I
    :try_start_5
    move-object/from16 v0, p1

    array-length v4, v0

    sub-int/2addr v4, v15

    new-array v0, v4, [B

    move-object/from16 v21, v0

    .restart local v21    # "intentData":[B
    const/4 v4, 0x0

    move-object/from16 v0, v21

    array-length v8, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v15, v1, v4, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto/16 :goto_1

    .end local v12    # "binaryContentType":J
    .end local v15    # "dataIndex":I
    .end local v16    # "header":[B
    .end local v17    # "headerLength":I
    .end local v18    # "headerStartIndex":I
    .end local v21    # "intentData":[B
    .end local v22    # "mimeType":Ljava/lang/String;
    .end local v23    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v24    # "pduType":I
    .end local v25    # "phoneId":I
    :catch_0
    move-exception v10

    .end local v31    # "transactionId":I
    .local v10, "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_4
    const/4 v4, 0x2

    goto/16 :goto_0

    .end local v10    # "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v12    # "binaryContentType":J
    .restart local v16    # "header":[B
    .restart local v17    # "headerLength":I
    .restart local v18    # "headerStartIndex":I
    .restart local v21    # "intentData":[B
    .restart local v22    # "mimeType":Ljava/lang/String;
    .restart local v23    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .restart local v24    # "pduType":I
    .restart local v25    # "phoneId":I
    .restart local v30    # "subIds":[J
    .restart local v31    # "transactionId":I
    :cond_9
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubId()J

    move-result-wide v28

    goto/16 :goto_2

    .end local v30    # "subIds":[J
    .restart local v32    # "wapAppId":Ljava/lang/String;
    :cond_a
    move-object/from16 v14, v22

    goto/16 :goto_3

    .restart local v14    # "contentType":Ljava/lang/String;
    .restart local v27    # "processFurther":Z
    :catch_1
    move-exception v4

    .end local v14    # "contentType":Ljava/lang/String;
    .end local v27    # "processFurther":Z
    .end local v32    # "wapAppId":Ljava/lang/String;
    :cond_b
    if-nez v22, :cond_c

    const/4 v4, 0x2

    goto/16 :goto_0

    :cond_c
    const-string v4, "application/vnd.wap.mms-message"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/WapPushOverSms;->checkAccessControl()Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v6, "android.permission.RECEIVE_MMS_SUPER"

    .local v6, "permission":Ljava/lang/String;
    :goto_5
    const/16 v7, 0x12

    .local v7, "appOp":I
    :goto_6
    new-instance v5, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v5    # "intent":Landroid/content/Intent;
    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "transactionId"

    move/from16 v0, v31

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "pduType"

    move/from16 v0, v24

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "header"

    move-object/from16 v0, v16

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v4, "data"

    move-object/from16 v0, v21

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v4, "contentTypeParameters"

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v5, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move/from16 v0, v25

    invoke-static {v5, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    const-string v4, "pdus"

    move-object/from16 v0, p4

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v4, "format"

    move-object/from16 v0, p5

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-static {v4, v8}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v11

    .local v11, "componentName":Landroid/content/ComponentName;
    if-eqz v11, :cond_d

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_d
    sget-object v9, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v4, p3

    move-object/from16 v8, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    const/4 v4, -0x1

    goto/16 :goto_0

    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "permission":Ljava/lang/String;
    .end local v7    # "appOp":I
    .end local v11    # "componentName":Landroid/content/ComponentName;
    :cond_e
    const-string v6, "android.permission.RECEIVE_MMS"

    .restart local v6    # "permission":Ljava/lang/String;
    goto :goto_5

    .end local v6    # "permission":Ljava/lang/String;
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/WapPushOverSms;->checkAccessControl()Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v6, "android.permission.RECEIVE_WAP_PUSH_SUPER"

    .restart local v6    # "permission":Ljava/lang/String;
    :goto_7
    const/16 v7, 0x13

    .restart local v7    # "appOp":I
    goto :goto_6

    .end local v6    # "permission":Ljava/lang/String;
    .end local v7    # "appOp":I
    :cond_10
    const-string v6, "android.permission.RECEIVE_WAP_PUSH"
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0

    .restart local v6    # "permission":Ljava/lang/String;
    goto :goto_7

    .end local v6    # "permission":Ljava/lang/String;
    .end local v12    # "binaryContentType":J
    .end local v16    # "header":[B
    .end local v17    # "headerLength":I
    .end local v18    # "headerStartIndex":I
    .end local v19    # "index":I
    .end local v21    # "intentData":[B
    .end local v22    # "mimeType":Ljava/lang/String;
    .end local v23    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v24    # "pduType":I
    .end local v25    # "phoneId":I
    .end local v31    # "transactionId":I
    .restart local v20    # "index":I
    :catch_2
    move-exception v10

    move/from16 v19, v20

    .end local v20    # "index":I
    .restart local v19    # "index":I
    goto/16 :goto_4
.end method
