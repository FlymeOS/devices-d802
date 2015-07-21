.class Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;
.super Ljava/lang/Object;
.source "InboundSmsHandlerEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandlerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncompleteConcatDispatchTimer"
.end annotation


# instance fields
.field concatTracker:Lcom/android/internal/telephony/InboundSmsTracker;

.field private expireTimerValue:J

.field private inCompeteConcatFirstTime:J

.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandlerEx;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/InboundSmsHandlerEx;Lcom/android/internal/telephony/InboundSmsTracker;JJ)V
    .locals 1
    .param p2, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p3, "firstTime"    # J
    .param p5, "timerValue"    # J

    .prologue
    .line 1941
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->this$0:Lcom/android/internal/telephony/InboundSmsHandlerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1942
    iput-wide p3, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->inCompeteConcatFirstTime:J

    .line 1943
    iput-wide p5, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->expireTimerValue:J

    .line 1944
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->concatTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    .line 1945
    return-void
.end method

.method private dispatchIncompletedConcat()V
    .locals 33

    .prologue
    .line 1957
    const/16 v19, 0x0

    .line 1958
    .local v19, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x2

    new-array v11, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->concatTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->inCompeteConcatFirstTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v2

    .line 1960
    .local v11, "whereArgs":[Ljava/lang/String;
    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->concatTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->inCompeteConcatFirstTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->concatTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    iget v3, v3, Lcom/android/internal/telephony/InboundSmsTracker;->mLgePhoneId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 1965
    .local v6, "whereArgsInDSDA":[Ljava/lang/String;
    const/16 v29, 0x0

    check-cast v29, [[B

    .line 1966
    .local v29, "pdus":[[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchIncompletedConcat, [RED] concatTracker.getReferenceNumber()= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->concatTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1967
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchIncompletedConcat, [RED] inCompeteConcatFirstTime= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->inCompeteConcatFirstTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1968
    new-instance v27, Ljava/lang/String;

    invoke-direct/range {v27 .. v27}, Ljava/lang/String;-><init>()V

    .line 1969
    .local v27, "missingSegIndex":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->concatTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v23

    .line 1970
    .local v23, "destPort":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchIncompletedConcat,  concatTracker.getDestPort()= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->concatTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1973
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->this$0:Lcom/android/internal/telephony/InboundSmsHandlerEx;

    iget-object v2, v2, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v3, "concat_ref_in_dsda"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1974
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchIncompletedConcat, [RED] concatTracker.mLgePhoneId= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->concatTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    iget v3, v3, Lcom/android/internal/telephony/InboundSmsTracker;->mLgePhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 1975
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->this$0:Lcom/android/internal/telephony/InboundSmsHandlerEx;

    iget-object v2, v2, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    # getter for: Lcom/android/internal/telephony/InboundSmsHandlerEx;->PDU_SEQUENCE_PORT_ICC_TIME_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->access$000()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "reference_number=? AND time=? AND sub_id=?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 1984
    :goto_0
    if-eqz v19, :cond_10

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_10

    .line 1985
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->this$0:Lcom/android/internal/telephony/InboundSmsHandlerEx;

    iget-object v2, v2, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v3, "concat_expired_time"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1986
    const/16 v22, 0x0

    .line 1988
    .local v22, "deletedCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->this$0:Lcom/android/internal/telephony/InboundSmsHandlerEx;

    iget-object v2, v2, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v3, "concat_ref_in_dsda"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1989
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->this$0:Lcom/android/internal/telephony/InboundSmsHandlerEx;

    iget-object v2, v2, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    const-string v4, "reference_number=? AND time=? AND sub_id=?"

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 1994
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchIncompletedConcat(), [RED] CMCC LMS Expiry Timeout! deletedCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2088
    if-eqz v19, :cond_0

    .line 2089
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 2092
    .end local v22    # "deletedCount":I
    :cond_0
    :goto_2
    return-void

    .line 1978
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->this$0:Lcom/android/internal/telephony/InboundSmsHandlerEx;

    iget-object v7, v2, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    # getter for: Lcom/android/internal/telephony/InboundSmsHandlerEx;->PDU_SEQUENCE_PORT_ICC_TIME_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->access$000()[Ljava/lang/String;

    move-result-object v9

    const-string v10, "reference_number=? AND time=?"

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    goto :goto_0

    .line 1992
    .restart local v22    # "deletedCount":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->this$0:Lcom/android/internal/telephony/InboundSmsHandlerEx;

    iget-object v2, v2, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    const-string v4, "reference_number=? AND time=?"

    invoke-virtual {v2, v3, v4, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    goto :goto_1

    .line 1997
    .end local v22    # "deletedCount":I
    :cond_3
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v20

    .line 1998
    .local v20, "cursorCount":I
    const-string v2, "pdu"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 1999
    .local v28, "pduColumn":I
    const-string v2, "sequence"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 2000
    .local v31, "sequenceColumn":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchIncompletedConcat, [RED] cursorCount= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 2001
    const/16 v32, 0x0

    .line 2003
    .local v32, "stitchRefMsg":Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->concatTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    new-array v0, v2, [[B

    move-object/from16 v29, v0

    .line 2005
    :cond_4
    :goto_3
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2006
    move-object/from16 v0, v19

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v21, v0

    .line 2007
    .local v21, "cursorSequence":I
    add-int/lit8 v2, v21, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v29, v2

    .line 2008
    if-nez v32, :cond_5

    .line 2009
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchIncompletedConcat, [RED] createFromPdu for stitchRefMsg index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2010
    add-int/lit8 v2, v21, -0x1

    aget-object v2, v29, v2

    invoke-static {v2}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v32

    .line 2014
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->concatTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v2

    sub-int v26, v21, v2

    .line 2015
    .local v26, "index":I
    const-string v2, "dispatchIncompletedConcat(), check wap push , Destination port"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2018
    if-nez v26, :cond_4

    const/4 v2, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2019
    const/4 v2, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 2021
    .local v30, "port":I
    invoke-static/range {v30 .. v30}, Lcom/android/internal/telephony/InboundSmsTracker;->getRealDestPort(I)I

    move-result v30

    .line 2022
    const/4 v2, -0x1

    move/from16 v0, v30

    if-eq v0, v2, :cond_4

    .line 2023
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchIncompletedConcat(),destport = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", getRealDestPort: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2024
    move/from16 v23, v30

    goto/16 :goto_3

    .line 2029
    .end local v21    # "cursorSequence":I
    .end local v26    # "index":I
    .end local v30    # "port":I
    :cond_6
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->concatTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    move/from16 v0, v25

    if-ge v0, v2, :cond_9

    .line 2030
    aget-object v2, v29, v25

    if-eqz v2, :cond_8

    aget-object v2, v29, v25

    array-length v2, v2

    if-lez v2, :cond_8

    .line 2032
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchIncompletedConcat, [RED] fill pdu seg= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 2029
    :cond_7
    :goto_5
    add-int/lit8 v25, v25, 0x1

    goto :goto_4

    .line 2034
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchIncompletedConcat, [RED] fill missing seg= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 2035
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 2036
    const-string v2, ","

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 2037
    if-eqz v32, :cond_7

    .line 2038
    invoke-virtual/range {v32 .. v32}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v2

    aput-object v2, v29, v25

    .line 2039
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchIncompletedConcat, pdus["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = stitchRefMsg.getPdu()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 2081
    .end local v20    # "cursorCount":I
    .end local v25    # "i":I
    .end local v28    # "pduColumn":I
    .end local v31    # "sequenceColumn":I
    .end local v32    # "stitchRefMsg":Landroid/telephony/SmsMessage;
    :catch_0
    move-exception v24

    .line 2082
    .local v24, "e":Landroid/database/SQLException;
    :try_start_2
    const-string v2, "dispatchIncompletedConcat(), query exception catch"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2088
    if-eqz v19, :cond_0

    .line 2089
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 2043
    .end local v24    # "e":Landroid/database/SQLException;
    .restart local v20    # "cursorCount":I
    .restart local v25    # "i":I
    .restart local v28    # "pduColumn":I
    .restart local v31    # "sequenceColumn":I
    .restart local v32    # "stitchRefMsg":Landroid/telephony/SmsMessage;
    :cond_9
    :try_start_3
    new-instance v16, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->this$0:Lcom/android/internal/telephony/InboundSmsHandlerEx;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->concatTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 2044
    .local v16, "resultReceiver":Landroid/content/BroadcastReceiver;
    new-instance v13, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2045
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->this$0:Lcom/android/internal/telephony/InboundSmsHandlerEx;

    iget-object v2, v2, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v18

    .line 2046
    .local v18, "componentName":Landroid/content/ComponentName;
    if-eqz v18, :cond_a

    .line 2047
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2048
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->this$0:Lcom/android/internal/telephony/InboundSmsHandlerEx;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delivering SMS to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->log(Ljava/lang/String;)V

    .line 2051
    :cond_a
    const-string v2, "pdus"

    move-object/from16 v0, v29

    invoke-virtual {v13, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2052
    const-string v2, "format"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->concatTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2053
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->this$0:Lcom/android/internal/telephony/InboundSmsHandlerEx;

    iget-object v2, v2, Lcom/android/internal/telephony/InboundSmsHandlerEx;->mContext:Landroid/content/Context;

    const-string v3, "seperate_processing_sms_uicc"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2054
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->concatTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 2055
    const-string v2, "indexOnIcc"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->concatTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/InboundSmsTracker;->lgeGetIndexOnIcc()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2060
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->concatTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_e

    .line 2061
    const-string v2, "ctreplace"

    const/4 v3, 0x1

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2062
    if-eqz v27, :cond_c

    .line 2063
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchIncompletedConcat(), [RED] missingSegIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 2064
    const-string v2, "missingSegIndex"

    move-object/from16 v0, v27

    invoke-virtual {v13, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2066
    :cond_c
    const-string v2, "refNumber"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->concatTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v3

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2070
    :goto_7
    const/16 v2, 0xb84

    move/from16 v0, v23

    if-ne v0, v2, :cond_f

    .line 2071
    const-string v2, "dispatchIncompletedConcat(),this is wap push message!"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2088
    if-eqz v19, :cond_0

    .line 2089
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 2057
    :cond_d
    :try_start_4
    const-string v2, "indexOnIcc"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->concatTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/InboundSmsTracker;->iccIndexSring:Ljava/lang/String;

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    .line 2083
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v16    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .end local v18    # "componentName":Landroid/content/ComponentName;
    .end local v20    # "cursorCount":I
    .end local v25    # "i":I
    .end local v28    # "pduColumn":I
    .end local v31    # "sequenceColumn":I
    .end local v32    # "stitchRefMsg":Landroid/telephony/SmsMessage;
    :catch_1
    move-exception v24

    .line 2084
    .local v24, "e":Ljava/lang/IllegalArgumentException;
    :try_start_5
    const-string v2, "dispatchIncompletedConcat(), query IllegalArgumentException catch"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2088
    if-eqz v19, :cond_0

    .line 2089
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 2068
    .end local v24    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v13    # "intent":Landroid/content/Intent;
    .restart local v16    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .restart local v18    # "componentName":Landroid/content/ComponentName;
    .restart local v20    # "cursorCount":I
    .restart local v25    # "i":I
    .restart local v28    # "pduColumn":I
    .restart local v31    # "sequenceColumn":I
    .restart local v32    # "stitchRefMsg":Landroid/telephony/SmsMessage;
    :cond_e
    :try_start_6
    const-string v2, "ctreplace"

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    .line 2085
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v16    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .end local v18    # "componentName":Landroid/content/ComponentName;
    .end local v20    # "cursorCount":I
    .end local v25    # "i":I
    .end local v28    # "pduColumn":I
    .end local v31    # "sequenceColumn":I
    .end local v32    # "stitchRefMsg":Landroid/telephony/SmsMessage;
    :catch_2
    move-exception v24

    .line 2086
    .local v24, "e":Ljava/lang/NullPointerException;
    :try_start_7
    const-string v2, "dispatchIncompletedConcat(), null pointer exception catch"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2088
    if-eqz v19, :cond_0

    .line 2089
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 2074
    .end local v24    # "e":Ljava/lang/NullPointerException;
    .restart local v13    # "intent":Landroid/content/Intent;
    .restart local v16    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .restart local v18    # "componentName":Landroid/content/ComponentName;
    .restart local v20    # "cursorCount":I
    .restart local v25    # "i":I
    .restart local v28    # "pduColumn":I
    .restart local v31    # "sequenceColumn":I
    .restart local v32    # "stitchRefMsg":Landroid/telephony/SmsMessage;
    :cond_f
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->concatTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/InboundSmsTracker;->isExpiredByTimer:Z

    .line 2075
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->this$0:Lcom/android/internal/telephony/InboundSmsHandlerEx;

    const-string v14, "android.permission.RECEIVE_SMS"

    const/16 v15, 0x10

    sget-object v17, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual/range {v12 .. v17}, Lcom/android/internal/telephony/InboundSmsHandlerEx;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2088
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v16    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .end local v18    # "componentName":Landroid/content/ComponentName;
    .end local v20    # "cursorCount":I
    .end local v25    # "i":I
    .end local v28    # "pduColumn":I
    .end local v31    # "sequenceColumn":I
    .end local v32    # "stitchRefMsg":Landroid/telephony/SmsMessage;
    :goto_8
    if-eqz v19, :cond_0

    .line 2089
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 2078
    :cond_10
    :try_start_9
    const-string v2, "dispatchIncompletedConcat(), cursorCount is null"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_8

    .line 2088
    :catchall_0
    move-exception v2

    if-eqz v19, :cond_11

    .line 2089
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_11
    throw v2
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1949
    :try_start_0
    iget-wide v2, p0, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->expireTimerValue:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1953
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandlerEx$IncompleteConcatDispatchTimer;->dispatchIncompletedConcat()V

    .line 1954
    return-void

    .line 1950
    :catch_0
    move-exception v0

    .line 1951
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "IncompleteConcatDispatchTimer:run(), Thread Interrupted exception catch"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method
