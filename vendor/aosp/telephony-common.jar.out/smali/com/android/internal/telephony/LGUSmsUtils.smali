.class public Lcom/android/internal/telephony/LGUSmsUtils;
.super Ljava/lang/Object;
.source "LGUSmsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/LGUSmsUtils$MsgSequence;
    }
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field private static final CBS_SESSION_MAX:I = 0xa

.field public static final COUNT:Ljava/lang/String; = "count"

.field public static final DATE:Ljava/lang/String; = "date"

.field private static final EMERGENCY_MSG:I = 0x2be

.field private static final IMS_MSG:I = 0x7000

.field public static final LMS_MAX_COUNT:I = 0x32

.field public static final LMS_MAX_SEGMENT:I = 0x3

.field public static final LMS_URI:Landroid/net/Uri;

.field public static final PDU:Ljava/lang/String; = "pdu"

.field public static final REFERENCE_NUMBER:Ljava/lang/String; = "reference_number"

.field public static final SEQUENCE:Ljava/lang/String; = "sequence"

.field private static final SEQ_EOS:I = 0x1

.field public static final SOURCE_MIN:Ljava/lang/String; = "source_min"

.field public static final TID:Ljava/lang/String; = "tid"

.field private static sSessionIdLink:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sSessionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mInbound:Lcom/android/internal/telephony/InboundSmsHandler;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/LGUSmsUtils;->LMS_URI:Landroid/net/Uri;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/LGUSmsUtils;->sSessionMap:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/LGUSmsUtils;->sSessionIdLink:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/content/Context;Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "inbound"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/internal/telephony/LGUSmsUtils;->mResolver:Landroid/content/ContentResolver;

    .line 65
    iput-object p2, p0, Lcom/android/internal/telephony/LGUSmsUtils;->mContext:Landroid/content/Context;

    .line 66
    iput-object p3, p0, Lcom/android/internal/telephony/LGUSmsUtils;->mInbound:Lcom/android/internal/telephony/InboundSmsHandler;

    .line 67
    return-void
.end method

.method private checkCompleteMsg(Lcom/android/internal/telephony/SmsMessageBase;Ljava/lang/String;III[B[[B)I
    .locals 10
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "sourceMin"    # Ljava/lang/String;
    .param p3, "sessionId"    # I
    .param p4, "currentSegment"    # I
    .param p5, "totalSegment"    # I
    .param p6, "pdu"    # [B
    .param p7, "pdus"    # [[B

    .prologue
    .line 423
    const-string v0, "deleteAllExpiredMsg()"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 425
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v8, "whereArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 427
    .local v9, "where":Ljava/lang/StringBuilder;
    const-string v0, "source_min = ? "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    const-string v0, " AND reference_number = ?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    const-string v0, " AND count = ?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    const-string v0, " AND tid = ?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    instance-of v0, p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 435
    check-cast v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleServiceId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    :goto_0
    const-string v0, " AND address = ?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 442
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/telephony/LGUSmsUtils;->getResultOfCompleteMsg(Lcom/android/internal/telephony/SmsMessageBase;Ljava/lang/String;III[B[[BLjava/util/ArrayList;Ljava/lang/StringBuilder;)I

    move-result v0

    return v0

    :cond_0
    move-object v0, p1

    .line 437
    check-cast v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkLmsDuplicated(Lcom/android/internal/telephony/SmsMessageBase;Ljava/lang/String;III[B)Z
    .locals 5
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "sourceMin"    # Ljava/lang/String;
    .param p3, "sessionId"    # I
    .param p4, "totalSegment"    # I
    .param p5, "currentSegment"    # I
    .param p6, "pdu"    # [B

    .prologue
    .line 208
    const-string v3, "checkLmsDuplicated()"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    .line 209
    invoke-static {p6}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "pduStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkLmsDuplicated(), pduStr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 211
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v2, "whereArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .local v1, "where":Ljava/lang/StringBuilder;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 215
    const-string v3, "source_min = ? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    :goto_0
    const-string v3, " AND reference_number = ?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    const-string v3, " AND count = ?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    const-string v3, " AND sequence = ?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 228
    const-string v3, " AND address = ?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    :goto_1
    const-string v3, " AND tid = ?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    instance-of v3, p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v3, :cond_2

    move-object v3, p1

    .line 235
    check-cast v3, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleServiceId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkLmsDuplicated(), where = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", whereArgs.toString() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 243
    invoke-direct {p0, p1, v2, v1}, Lcom/android/internal/telephony/LGUSmsUtils;->isLmsDuplicated(Lcom/android/internal/telephony/SmsMessageBase;Ljava/util/ArrayList;Ljava/lang/StringBuilder;)Z

    move-result v3

    return v3

    .line 218
    :cond_0
    const-string v3, "source_min is null"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 231
    :cond_1
    const-string v3, " AND address is null"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    move-object v3, p1

    .line 237
    check-cast v3, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v3, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public static checkValidLmsMessage(I)Z
    .locals 1
    .param p0, "teleService"    # I

    .prologue
    .line 186
    const v0, 0xf6fe

    if-eq v0, p0, :cond_0

    const v0, 0xc256

    if-eq v0, p0, :cond_0

    const v0, 0xc264

    if-eq v0, p0, :cond_0

    const v0, 0xc266

    if-eq v0, p0, :cond_0

    const v0, 0xc268

    if-eq v0, p0, :cond_0

    const v0, 0xc006

    if-eq v0, p0, :cond_0

    const v0, 0xc00b

    if-ne v0, p0, :cond_1

    .line 193
    :cond_0
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearSession(I)V
    .locals 2
    .param p1, "sessionId"    # I

    .prologue
    .line 841
    invoke-direct {p0}, Lcom/android/internal/telephony/LGUSmsUtils;->getSessionMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearSession(), CBS Cleared Session ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 843
    return-void
.end method

.method private clearSession(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 2
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    .line 836
    invoke-direct {p0}, Lcom/android/internal/telephony/LGUSmsUtils;->getSessionMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessioinId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearSession(), CBS Cleared Session ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessioinId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 838
    return-void
.end method

.method private completeOrInsertLms(Lcom/android/internal/telephony/SmsMessageBase;Ljava/lang/String;III[B[[BI)I
    .locals 2
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "sourceMin"    # Ljava/lang/String;
    .param p3, "sessionId"    # I
    .param p4, "currentSegment"    # I
    .param p5, "totalSegment"    # I
    .param p6, "pdu"    # [B
    .param p7, "pdus"    # [[B
    .param p8, "sameMsgCount"    # I

    .prologue
    .line 553
    add-int/lit8 v1, p8, 0x1

    if-ne v1, p5, :cond_1

    .line 555
    add-int/lit8 v1, p4, -0x1

    aput-object p6, p7, v1

    .line 556
    move v0, p5

    .local v0, "loop":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 557
    const/4 v1, 0x0

    aput-object v1, p7, v0

    .line 556
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 559
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/LGUSmsUtils;->deleteCompleteLmsMsg(Lcom/android/internal/telephony/SmsMessageBase;Ljava/lang/String;III)V

    .line 560
    const/4 v1, -0x1

    .line 563
    .end local v0    # "loop":I
    :goto_1
    return v1

    .line 562
    :cond_1
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/LGUSmsUtils;->insertLmsMsg(Lcom/android/internal/telephony/SmsMessageBase;Ljava/lang/String;III[B)V

    .line 563
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private deleteAllExpiredMsg(Lcom/android/internal/telephony/SmsMessageBase;Ljava/lang/String;III)V
    .locals 14
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "sourceMin"    # Ljava/lang/String;
    .param p3, "sessionId"    # I
    .param p4, "currentSegment"    # I
    .param p5, "totalSegment"    # I

    .prologue
    .line 367
    const-string v0, "deleteAllExpiredMsg()"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 369
    const/4 v8, 0x0

    .line 371
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "date"

    aput-object v1, v2, v0

    .line 381
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/LGUSmsUtils;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/LGUSmsUtils;->LMS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 387
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 388
    :cond_0
    const-string v0, "deleteAllExpiredMsg(), cursor is null or moveToFirst error"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    if-eqz v8, :cond_1

    .line 411
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 414
    :cond_1
    :goto_0
    return-void

    .line 392
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v6, v0, v4

    .line 395
    .local v6, "currentTime":J
    :cond_3
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 396
    .local v10, "rowId":J
    const-string v0, "date"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v12, v0, v4

    .line 398
    .local v12, "time":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteAllExpiredMsg(), rowId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteAllExpiredMsg(), time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteAllExpiredMsg(), currentTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 402
    sub-long v0, v6, v12

    const-wide/16 v4, 0x258

    cmp-long v0, v0, v4

    if-lez v0, :cond_4

    .line 403
    iget-object v0, p0, Lcom/android/internal/telephony/LGUSmsUtils;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/LGUSmsUtils;->LMS_URI:Landroid/net/Uri;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 406
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 410
    if-eqz v8, :cond_1

    .line 411
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 407
    .end local v6    # "currentTime":J
    .end local v10    # "rowId":J
    .end local v12    # "time":J
    :catch_0
    move-exception v9

    .line 408
    .local v9, "e":Landroid/database/SQLException;
    :try_start_2
    const-string v0, "deleteAllExpiredMsg(), SQLException occurs"

    invoke-static {v0, v9}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 410
    if-eqz v8, :cond_1

    .line 411
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 410
    .end local v9    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_5

    .line 411
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private deleteCompleteLmsMsg(Lcom/android/internal/telephony/SmsMessageBase;Ljava/lang/String;III)V
    .locals 12
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "sourceMin"    # Ljava/lang/String;
    .param p3, "sessionId"    # I
    .param p4, "currentSegment"    # I
    .param p5, "totalSegment"    # I

    .prologue
    .line 635
    const-string v0, "deleteCompleteLmsMsg()"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 636
    const/4 v6, 0x0

    .line 639
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 640
    .local v11, "whereArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 642
    .local v10, "where":Ljava/lang/StringBuilder;
    const-string v0, "source_min = ? "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    invoke-virtual {v11, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    const-string v0, " AND reference_number = ?"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    const-string v0, " AND count = ?"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    const-string v0, " AND tid = ?"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    instance-of v0, p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 653
    check-cast v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleServiceId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    :goto_0
    const-string v0, " AND address = ?"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 670
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/LGUSmsUtils;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/LGUSmsUtils;->LMS_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const-string v5, "date"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 676
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 677
    :cond_0
    const-string v0, "deleteCompleteLmsMsg(), cursor is null or moveToFirst error"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    if-eqz v6, :cond_1

    .line 692
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 695
    :cond_1
    :goto_1
    return-void

    .end local v2    # "projection":[Ljava/lang/String;
    :cond_2
    move-object v0, p1

    .line 655
    check-cast v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 682
    .restart local v2    # "projection":[Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 683
    .local v8, "rowId":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteCompleteLmsMsg(), rowId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 684
    iget-object v0, p0, Lcom/android/internal/telephony/LGUSmsUtils;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/LGUSmsUtils;->LMS_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 686
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 691
    if-eqz v6, :cond_1

    .line 692
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 687
    .end local v8    # "rowId":J
    :catch_0
    move-exception v7

    .line 688
    .local v7, "e":Landroid/database/SQLException;
    :try_start_2
    const-string v0, "deleteCompleteLmsMsg(), SQLException occurs"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 691
    if-eqz v6, :cond_1

    .line 692
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 691
    .end local v7    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 692
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private getExpiredMsgCount([[BLandroid/database/Cursor;Ljava/util/ArrayList;)I
    .locals 16
    .param p1, "pdus"    # [[B
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 519
    .local p3, "rowIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v5, 0x0

    .line 523
    .local v5, "expiredMsgCount":I
    :cond_0
    const-string v12, "_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 524
    .local v8, "rowId":J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    const-string v12, "sequence"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 526
    .local v4, "currSegment":I
    const-string v12, "date"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long v10, v12, v14

    .line 527
    .local v10, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long v6, v12, v14

    .line 529
    .local v6, "currentTime":J
    const-string v12, "address"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 530
    .local v2, "callback":Ljava/lang/String;
    const-string v12, "pdu"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 533
    .local v3, "currPdu":[B
    add-int/lit8 v12, v4, -0x1

    aput-object v3, p1, v12

    .line 535
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkCompleteMsg(), rowId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 536
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkCompleteMsg(), time = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 537
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkCompleteMsg(), currentTime = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 538
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkCompleteMsg(), text = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 539
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkCompleteMsg(), callback = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 541
    sub-long v12, v6, v10

    const-wide/16 v14, 0x258

    cmp-long v12, v12, v14

    if-lez v12, :cond_1

    .line 542
    add-int/lit8 v5, v5, 0x1

    .line 543
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/LGUSmsUtils;->mResolver:Landroid/content/ContentResolver;

    sget-object v13, Lcom/android/internal/telephony/LGUSmsUtils;->LMS_URI:Landroid/net/Uri;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 546
    :cond_1
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_0

    .line 547
    return v5
.end method

.method private getNumberOfLmsSegment([[B)I
    .locals 2
    .param p1, "pdus"    # [[B

    .prologue
    .line 171
    const/4 v0, 0x0

    .local v0, "loop":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 172
    aget-object v1, p1, v0

    if-nez v1, :cond_1

    .line 176
    :cond_0
    return v0

    .line 171
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getResultOfCompleteMsg(Lcom/android/internal/telephony/SmsMessageBase;Ljava/lang/String;III[B[[BLjava/util/ArrayList;Ljava/lang/StringBuilder;)I
    .locals 21
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "sourceMin"    # Ljava/lang/String;
    .param p3, "sessionId"    # I
    .param p4, "currentSegment"    # I
    .param p5, "totalSegment"    # I
    .param p6, "pdu"    # [B
    .param p7, "pdus"    # [[B
    .param p9, "where"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/SmsMessageBase;",
            "Ljava/lang/String;",
            "III[B[[B",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")I"
        }
    .end annotation

    .prologue
    .line 451
    .local p8, "whereArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .line 452
    .local v16, "cursor":Landroid/database/Cursor;
    const/16 v4, 0x8

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string v5, "source_min"

    aput-object v5, v6, v4

    const/4 v4, 0x2

    const-string v5, "reference_number"

    aput-object v5, v6, v4

    const/4 v4, 0x3

    const-string v5, "count"

    aput-object v5, v6, v4

    const/4 v4, 0x4

    const-string v5, "sequence"

    aput-object v5, v6, v4

    const/4 v4, 0x5

    const-string v5, "pdu"

    aput-object v5, v6, v4

    const/4 v4, 0x6

    const-string v5, "address"

    aput-object v5, v6, v4

    const/4 v4, 0x7

    const-string v5, "date"

    aput-object v5, v6, v4

    .line 464
    .local v6, "projection":[Ljava/lang/String;
    :try_start_0
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 465
    .local v20, "rowIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v18, 0x0

    .line 466
    .local v18, "expiredMsgCount":I
    const/4 v15, 0x0

    .line 468
    .local v15, "sameMsgCount":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/LGUSmsUtils;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/LGUSmsUtils;->LMS_URI:Landroid/net/Uri;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    move-object/from16 v0, p8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    const-string v9, "date"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 474
    if-nez v16, :cond_1

    .line 475
    const-string v4, "checkCompleteMsg(), cursor is null"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    const/4 v4, 0x1

    .line 507
    if-eqz v16, :cond_0

    .line 508
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .end local v15    # "sameMsgCount":I
    .end local v18    # "expiredMsgCount":I
    .end local v20    # "rowIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    return v4

    .line 479
    .restart local v15    # "sameMsgCount":I
    .restart local v18    # "expiredMsgCount":I
    .restart local v20    # "rowIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_1
    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 480
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCompleteMsg(), sameMsgCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    .line 481
    if-gtz v15, :cond_2

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    .line 482
    invoke-direct/range {v7 .. v15}, Lcom/android/internal/telephony/LGUSmsUtils;->completeOrInsertLms(Lcom/android/internal/telephony/SmsMessageBase;Ljava/lang/String;III[B[[BI)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 507
    if-eqz v16, :cond_0

    .line 508
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 486
    :cond_2
    :try_start_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_3

    .line 487
    const-string v4, "checkCompleteMsg(), cursor moveToFirst error"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 488
    const/4 v4, 0x1

    .line 507
    if-eqz v16, :cond_0

    .line 508
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 491
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, v16

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/LGUSmsUtils;->getExpiredMsgCount([[BLandroid/database/Cursor;Ljava/util/ArrayList;)I

    move-result v18

    .line 492
    if-lez v18, :cond_5

    .line 493
    const/16 v19, 0x0

    .local v19, "loop":I
    :goto_1
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_4

    .line 494
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/LGUSmsUtils;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/internal/telephony/LGUSmsUtils;->LMS_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 493
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 498
    :cond_4
    const/4 v4, 0x1

    .line 507
    if-eqz v16, :cond_0

    .line 508
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v19    # "loop":I
    :cond_5
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    .line 500
    :try_start_4
    invoke-direct/range {v7 .. v15}, Lcom/android/internal/telephony/LGUSmsUtils;->completeOrInsertLms(Lcom/android/internal/telephony/SmsMessageBase;Ljava/lang/String;III[B[[BI)I
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v4

    .line 507
    if-eqz v16, :cond_0

    .line 508
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 503
    .end local v15    # "sameMsgCount":I
    .end local v18    # "expiredMsgCount":I
    .end local v20    # "rowIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_0
    move-exception v17

    .line 504
    .local v17, "e":Landroid/database/SQLException;
    :try_start_5
    const-string v4, "checkCompleteMsg(), SQLException occurs"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 505
    const/4 v4, 0x1

    .line 507
    if-eqz v16, :cond_0

    .line 508
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 507
    .end local v17    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    if-eqz v16, :cond_6

    .line 508
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v4
.end method

.method private getResultOfProcessCbsMsg(Lcom/android/internal/telephony/cdma/SmsMessage;[[B[B)I
    .locals 7
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;
    .param p2, "pdus"    # [[B
    .param p3, "pdu"    # [B

    .prologue
    .line 742
    const/4 v4, 0x0

    .line 743
    .local v4, "tSeqMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v5

    iget v0, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessioinId:I

    .line 744
    .local v0, "cbsSid":I
    invoke-direct {p0}, Lcom/android/internal/telephony/LGUSmsUtils;->getSessionMap()Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 746
    invoke-direct {p0}, Lcom/android/internal/telephony/LGUSmsUtils;->getSessionMap()Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/TreeMap;

    move-object v4, v5

    check-cast v4, Ljava/util/TreeMap;

    .line 760
    :goto_0
    if-nez v4, :cond_0

    .line 762
    new-instance v4, Ljava/util/TreeMap;

    .end local v4    # "tSeqMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 766
    .restart local v4    # "tSeqMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/LGUSmsUtils$MsgSequence;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v5

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->endOfSession:I

    invoke-direct {v1, p0, v5, p3}, Lcom/android/internal/telephony/LGUSmsUtils$MsgSequence;-><init>(Lcom/android/internal/telephony/LGUSmsUtils;I[B)V

    .line 767
    .local v1, "msgSeq":Lcom/android/internal/telephony/LGUSmsUtils$MsgSequence;
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v5

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessionSeq:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    invoke-direct {p0}, Lcom/android/internal/telephony/LGUSmsUtils;->getSessionMap()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v6

    iget v6, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessioinId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteCompleteLmsMsg(), CBS Session Map put ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/internal/telephony/LGUSmsUtils;->getSessionMap()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 774
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteCompleteLmsMsg(), CBS isEos()= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGUSmsUtils;->isEos(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isSeqFull()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGUSmsUtils;->isSeqFull(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 777
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGUSmsUtils;->isMsgEnd(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 778
    const/4 v5, 0x1

    .line 784
    :goto_1
    return v5

    .line 749
    .end local v1    # "msgSeq":Lcom/android/internal/telephony/LGUSmsUtils$MsgSequence;
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/LGUSmsUtils;->getSessionIdLink()Ljava/util/LinkedList;

    move-result-object v3

    .line 750
    .local v3, "sessionLink":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Object;>;"
    :cond_2
    :goto_2
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/16 v6, 0x9

    if-le v5, v6, :cond_3

    .line 751
    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 752
    .local v2, "session":Ljava/lang/Integer;
    if-eqz v2, :cond_2

    .line 753
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/LGUSmsUtils;->clearSession(I)V

    goto :goto_2

    .line 757
    .end local v2    # "session":Ljava/lang/Integer;
    :cond_3
    new-instance v4, Ljava/util/TreeMap;

    .end local v4    # "tSeqMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .restart local v4    # "tSeqMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    goto/16 :goto_0

    .line 781
    .end local v3    # "sessionLink":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Object;>;"
    .restart local v1    # "msgSeq":Lcom/android/internal/telephony/LGUSmsUtils$MsgSequence;
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/LGUSmsUtils;->makeCompleteText(Lcom/android/internal/telephony/cdma/SmsMessage;[[B)V

    .line 783
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGUSmsUtils;->clearSession(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 784
    const/4 v5, -0x1

    goto :goto_1
.end method

.method private getSessionIdLink()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 702
    sget-object v0, Lcom/android/internal/telephony/LGUSmsUtils;->sSessionIdLink:Ljava/util/LinkedList;

    return-object v0
.end method

.method private getSessionMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 698
    sget-object v0, Lcom/android/internal/telephony/LGUSmsUtils;->sSessionMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private insertLmsMsg(Lcom/android/internal/telephony/SmsMessageBase;Ljava/lang/String;III[B)V
    .locals 12
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "sourceMin"    # Ljava/lang/String;
    .param p3, "sessionId"    # I
    .param p4, "currentSegment"    # I
    .param p5, "totalSegment"    # I
    .param p6, "pdu"    # [B

    .prologue
    .line 571
    const-string v0, "insertLmsMsg()"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 573
    const/4 v6, 0x0

    .line 575
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 580
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/LGUSmsUtils;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/LGUSmsUtils;->LMS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 582
    if-nez v6, :cond_1

    .line 583
    const-string v0, "insertLmsMsg(), cursor is null"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    if-eqz v6, :cond_0

    .line 609
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 630
    .end local p1    # "sms":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    :goto_0
    return-void

    .line 587
    .restart local p1    # "sms":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_6

    .line 589
    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v8, v0
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 592
    .end local v2    # "projection":[Ljava/lang/String;
    .local v8, "projection":[Ljava/lang/String;
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 593
    const-string v0, "insertLmsMsg(), cursor moveToLast error"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 608
    if-eqz v6, :cond_2

    .line 609
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v2, v8

    .end local v8    # "projection":[Ljava/lang/String;
    .restart local v2    # "projection":[Ljava/lang/String;
    goto :goto_0

    .line 597
    .end local v2    # "projection":[Ljava/lang/String;
    .restart local v8    # "projection":[Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 598
    .local v10, "rowId":J
    iget-object v0, p0, Lcom/android/internal/telephony/LGUSmsUtils;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/LGUSmsUtils;->LMS_URI:Landroid/net/Uri;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_5

    .line 600
    const-string v0, "insertLmsMsg(), oldest lms delete fail"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 608
    if-eqz v6, :cond_4

    .line 609
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v2, v8

    .end local v8    # "projection":[Ljava/lang/String;
    .restart local v2    # "projection":[Ljava/lang/String;
    goto :goto_0

    .end local v2    # "projection":[Ljava/lang/String;
    .restart local v8    # "projection":[Ljava/lang/String;
    :cond_5
    move-object v2, v8

    .line 608
    .end local v8    # "projection":[Ljava/lang/String;
    .end local v10    # "rowId":J
    .restart local v2    # "projection":[Ljava/lang/String;
    :cond_6
    if-eqz v6, :cond_7

    .line 609
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 613
    :cond_7
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 614
    .local v9, "value":Landroid/content/ContentValues;
    const-string v0, "source_min"

    invoke-virtual {v9, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    const-string v0, "reference_number"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 616
    const-string v0, "count"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 617
    const-string v0, "sequence"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 618
    const-string v0, "pdu"

    invoke-static/range {p6 .. p6}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string v0, "address"

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v0, "date"

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 621
    instance-of v0, p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v0, :cond_9

    .line 622
    const-string v0, "tid"

    check-cast p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    .end local p1    # "sms":Lcom/android/internal/telephony/SmsMessageBase;
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleServiceId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 626
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/LGUSmsUtils;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/LGUSmsUtils;->LMS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 627
    const-string v0, "insertLmsMsg(), lms insert fail"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 604
    .end local v9    # "value":Landroid/content/ContentValues;
    .restart local p1    # "sms":Lcom/android/internal/telephony/SmsMessageBase;
    :catch_0
    move-exception v7

    .line 605
    .local v7, "e":Landroid/database/SQLException;
    :goto_2
    :try_start_4
    const-string v0, "insertLmsMsg(), SQLException occurs"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 608
    if-eqz v6, :cond_0

    .line 609
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 608
    .end local v7    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_8

    .line 609
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .line 624
    .restart local v9    # "value":Landroid/content/ContentValues;
    :cond_9
    const-string v0, "tid"

    check-cast p1, Lcom/android/internal/telephony/gsm/SmsMessage;

    .end local p1    # "sms":Lcom/android/internal/telephony/SmsMessageBase;
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v1, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 608
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v9    # "value":Landroid/content/ContentValues;
    .restart local v8    # "projection":[Ljava/lang/String;
    .restart local p1    # "sms":Lcom/android/internal/telephony/SmsMessageBase;
    :catchall_1
    move-exception v0

    move-object v2, v8

    .end local v8    # "projection":[Ljava/lang/String;
    .restart local v2    # "projection":[Ljava/lang/String;
    goto :goto_3

    .line 604
    .end local v2    # "projection":[Ljava/lang/String;
    .restart local v8    # "projection":[Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v2, v8

    .end local v8    # "projection":[Ljava/lang/String;
    .restart local v2    # "projection":[Ljava/lang/String;
    goto :goto_2
.end method

.method private isEos(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .locals 8
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 858
    invoke-direct {p0}, Lcom/android/internal/telephony/LGUSmsUtils;->getSessionMap()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v7

    iget v7, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessioinId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/TreeMap;

    move-object v2, v4

    check-cast v2, Ljava/util/TreeMap;

    .line 860
    .local v2, "tSeqMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    if-nez v2, :cond_0

    move v4, v5

    .line 874
    :goto_0
    return v4

    .line 864
    :cond_0
    const/4 v3, 0x0

    .line 865
    .local v3, "tmpMsgSeq":Lcom/android/internal/telephony/LGUSmsUtils$MsgSequence;
    invoke-virtual {v2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 866
    .local v1, "nkey":Ljava/lang/Integer;
    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "tmpMsgSeq":Lcom/android/internal/telephony/LGUSmsUtils$MsgSequence;
    check-cast v3, Lcom/android/internal/telephony/LGUSmsUtils$MsgSequence;

    .line 867
    .restart local v3    # "tmpMsgSeq":Lcom/android/internal/telephony/LGUSmsUtils$MsgSequence;
    if-nez v3, :cond_2

    move v4, v5

    .line 868
    goto :goto_0

    .line 870
    :cond_2
    iget v4, v3, Lcom/android/internal/telephony/LGUSmsUtils$MsgSequence;->mEos:I

    if-ne v4, v6, :cond_1

    move v4, v6

    .line 871
    goto :goto_0

    .end local v1    # "nkey":Ljava/lang/Integer;
    :cond_3
    move v4, v5

    .line 874
    goto :goto_0
.end method

.method private isLmsDuplicated(Lcom/android/internal/telephony/SmsMessageBase;Ljava/util/ArrayList;Ljava/lang/StringBuilder;)Z
    .locals 18
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p3, "where"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/SmsMessageBase;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 247
    .local p2, "whereArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 248
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 250
    .local v7, "bRet":Z
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "pdu"

    aput-object v2, v3, v1

    .line 255
    .local v3, "projection":[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/LGUSmsUtils;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/internal/telephony/LGUSmsUtils;->LMS_URI:Landroid/net/Uri;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 261
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 262
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 263
    const/4 v11, 0x0

    .line 265
    .local v11, "different":Z
    :cond_0
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 266
    .local v8, "body":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v9

    .line 267
    .local v9, "body_cursor":[B
    invoke-static {v9}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v15

    .line 268
    .local v15, "sm":Landroid/telephony/SmsMessage;
    if-nez v15, :cond_3

    .line 287
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    if-eqz v11, :cond_6

    .line 290
    const-string v1, "checkLmsDuplicated(), pduStr not equals pduStr_cursor"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    const/4 v7, 0x0

    .line 301
    .end local v8    # "body":Ljava/lang/String;
    .end local v9    # "body_cursor":[B
    .end local v11    # "different":Z
    .end local v15    # "sm":Landroid/telephony/SmsMessage;
    :cond_1
    :goto_1
    if-eqz v10, :cond_2

    .line 302
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 305
    :cond_2
    :goto_2
    return v7

    .line 272
    .restart local v8    # "body":Ljava/lang/String;
    .restart local v9    # "body_cursor":[B
    .restart local v11    # "different":Z
    .restart local v15    # "sm":Landroid/telephony/SmsMessage;
    :cond_3
    :try_start_1
    invoke-virtual {v15}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v16

    .line 273
    .local v16, "ud":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v17

    .line 275
    .local v17, "ud_curr":[B
    move-object/from16 v0, v16

    array-length v14, v0

    .line 276
    .local v14, "len":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    if-ge v13, v14, :cond_4

    .line 277
    aget-byte v1, v17, v13

    aget-byte v2, v16, v13

    if-eq v1, v2, :cond_5

    .line 278
    const/4 v11, 0x1

    .line 279
    invoke-interface {v10}, Landroid/database/Cursor;->moveToLast()Z

    .line 284
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkLmsDuplicated(), pduStr_cursor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkLmsDuplicated(), userdata1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkLmsDuplicated(), userdata2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 297
    .end local v8    # "body":Ljava/lang/String;
    .end local v9    # "body_cursor":[B
    .end local v11    # "different":Z
    .end local v13    # "i":I
    .end local v14    # "len":I
    .end local v15    # "sm":Landroid/telephony/SmsMessage;
    .end local v16    # "ud":[B
    .end local v17    # "ud_curr":[B
    :catch_0
    move-exception v12

    .line 298
    .local v12, "e":Landroid/database/SQLException;
    :try_start_2
    const-string v1, "checkLmsDuplicated(), SQLException occurs"

    invoke-static {v1, v12}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 299
    const/4 v7, 0x1

    .line 301
    if-eqz v10, :cond_2

    .line 302
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 276
    .end local v12    # "e":Landroid/database/SQLException;
    .restart local v8    # "body":Ljava/lang/String;
    .restart local v9    # "body_cursor":[B
    .restart local v11    # "different":Z
    .restart local v13    # "i":I
    .restart local v14    # "len":I
    .restart local v15    # "sm":Landroid/telephony/SmsMessage;
    .restart local v16    # "ud":[B
    .restart local v17    # "ud_curr":[B
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 293
    .end local v13    # "i":I
    .end local v14    # "len":I
    .end local v16    # "ud":[B
    .end local v17    # "ud_curr":[B
    :cond_6
    :try_start_3
    const-string v1, "checkLmsDuplicated(), pduStr equals pduStr_cursor "

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 294
    const/4 v7, 0x1

    goto :goto_1

    .line 301
    .end local v8    # "body":Ljava/lang/String;
    .end local v9    # "body_cursor":[B
    .end local v11    # "different":Z
    .end local v15    # "sm":Landroid/telephony/SmsMessage;
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_7

    .line 302
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1
.end method

.method public static isMessageProcessTid(I)Z
    .locals 1
    .param p0, "tid"    # I

    .prologue
    .line 916
    sparse-switch p0, :sswitch_data_0

    .line 939
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 937
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 916
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1002 -> :sswitch_0
        0x1003 -> :sswitch_0
        0x1004 -> :sswitch_0
        0xc005 -> :sswitch_0
        0xc006 -> :sswitch_0
        0xc00a -> :sswitch_0
        0xc00b -> :sswitch_0
        0xc00e -> :sswitch_0
        0xc00f -> :sswitch_0
        0xc010 -> :sswitch_0
        0xc029 -> :sswitch_0
        0xc263 -> :sswitch_0
        0xc264 -> :sswitch_0
        0xc265 -> :sswitch_0
        0xc266 -> :sswitch_0
        0xc267 -> :sswitch_0
        0xc268 -> :sswitch_0
        0xf6fe -> :sswitch_0
        0x50000 -> :sswitch_0
    .end sparse-switch
.end method

.method private isMsgEnd(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .locals 2
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    const/4 v0, 0x1

    .line 847
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessioinId:I

    if-nez v1, :cond_1

    .line 852
    :cond_0
    :goto_0
    return v0

    .line 849
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGUSmsUtils;->isEos(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGUSmsUtils;->isSeqFull(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 852
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSeqFull(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .locals 9
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 879
    invoke-direct {p0}, Lcom/android/internal/telephony/LGUSmsUtils;->getSessionMap()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v8

    iget v8, v8, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessioinId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/TreeMap;

    move-object v3, v5

    check-cast v3, Ljava/util/TreeMap;

    .line 881
    .local v3, "tSeqMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    if-nez v3, :cond_0

    move v5, v6

    .line 901
    :goto_0
    return v5

    .line 884
    :cond_0
    const/4 v0, 0x0

    .line 886
    .local v0, "count":I
    const/4 v4, 0x0

    .line 887
    .local v4, "tmpMsgSeq":Lcom/android/internal/telephony/LGUSmsUtils$MsgSequence;
    invoke-virtual {v3}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 888
    .local v2, "nkey":Ljava/lang/Integer;
    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "tmpMsgSeq":Lcom/android/internal/telephony/LGUSmsUtils$MsgSequence;
    check-cast v4, Lcom/android/internal/telephony/LGUSmsUtils$MsgSequence;

    .line 889
    .restart local v4    # "tmpMsgSeq":Lcom/android/internal/telephony/LGUSmsUtils$MsgSequence;
    if-nez v4, :cond_1

    move v5, v6

    .line 890
    goto :goto_0

    .line 892
    :cond_1
    iget v5, v4, Lcom/android/internal/telephony/LGUSmsUtils$MsgSequence;->mEos:I

    if-ne v5, v7, :cond_3

    .line 893
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v7

    .line 894
    goto :goto_0

    :cond_2
    move v5, v6

    .line 896
    goto :goto_0

    .line 899
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 900
    goto :goto_1

    .end local v2    # "nkey":Ljava/lang/Integer;
    :cond_4
    move v5, v6

    .line 901
    goto :goto_0
.end method

.method private makeCompleteText(Lcom/android/internal/telephony/cdma/SmsMessage;[[B)V
    .locals 6
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;
    .param p2, "pdus"    # [[B

    .prologue
    .line 790
    invoke-direct {p0}, Lcom/android/internal/telephony/LGUSmsUtils;->getSessionMap()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v5

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessioinId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/TreeMap;

    move-object v2, v4

    check-cast v2, Ljava/util/TreeMap;

    .line 792
    .local v2, "tSeqMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    if-nez v2, :cond_1

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    const/4 v3, 0x0

    .line 797
    .local v3, "tmpMsgSeq":Lcom/android/internal/telephony/LGUSmsUtils$MsgSequence;
    invoke-virtual {v2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 798
    .local v1, "nKey":Ljava/lang/Integer;
    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "tmpMsgSeq":Lcom/android/internal/telephony/LGUSmsUtils$MsgSequence;
    check-cast v3, Lcom/android/internal/telephony/LGUSmsUtils$MsgSequence;

    .line 799
    .restart local v3    # "tmpMsgSeq":Lcom/android/internal/telephony/LGUSmsUtils$MsgSequence;
    if-eqz v3, :cond_0

    .line 802
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v3, Lcom/android/internal/telephony/LGUSmsUtils$MsgSequence;->mPdu:[B

    aput-object v5, p2, v4

    .line 804
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v4

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessioinId:I

    if-eqz v4, :cond_0

    if-eqz v3, :cond_2

    iget v4, v3, Lcom/android/internal/telephony/LGUSmsUtils$MsgSequence;->mEos:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    goto :goto_0
.end method

.method private parseImsMsg([B)I
    .locals 8
    .param p1, "userData"    # [B

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 812
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseImsMsg(), CBS IMS_MSG userData[0]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 813
    new-instance v1, Landroid/content/Intent;

    const-string v2, " "

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 814
    .local v1, "intent":Landroid/content/Intent;
    aget-byte v2, p1, v4

    const/16 v3, 0x30

    if-ne v2, v3, :cond_1

    .line 815
    const-string v2, "order"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 816
    const-string v2, "com.lge.ims.enable"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const-string v2, "parseImsMsg(), CBS 0x30 "

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 824
    :cond_0
    :goto_0
    :try_start_0
    const-string v2, "contentfield"

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x1

    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    const-string v6, "KSC5601"

    invoke-direct {v3, p1, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 825
    const-string v2, "parseImsMsg(), CBS try "

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/LGUSmsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 831
    const-string v2, "parseImsMsg(), CBS     context.sendBroadcast "

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 832
    return v7

    .line 818
    :cond_1
    aget-byte v2, p1, v4

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    .line 819
    const-string v2, "order"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 820
    const-string v2, "com.lge.ims.enable"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const-string v2, "parseImsMsg(), CBS 0x31 "

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    goto :goto_0

    .line 826
    :catch_0
    move-exception v0

    .line 827
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 828
    const-string v2, "parseImsMsg(), CBS Exception "

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    goto :goto_1
.end method

.method private processCbsMessage(Lcom/android/internal/telephony/cdma/SmsMessage;[[B)I
    .locals 6
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;
    .param p2, "pdus"    # [[B

    .prologue
    .line 706
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteCompleteLmsMsg(), CBS parse star = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSmsEnvelope()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v5

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 707
    const/4 v2, 0x0

    .line 708
    .local v2, "pdu":[B
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v3

    .line 711
    .local v3, "userData":[B
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 716
    :goto_0
    const/16 v4, 0x2be

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSmsEnvelope()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v5

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    if-ne v4, v5, :cond_1

    .line 717
    const-string v4, "deleteCompleteLmsMsg(), CBS EMERGENCY_MSG "

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 722
    :cond_0
    if-nez v2, :cond_2

    .line 723
    const/4 v4, 0x1

    .line 737
    :goto_1
    return v4

    .line 712
    :catch_0
    move-exception v0

    .line 713
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 718
    .end local v0    # "e1":Ljava/lang/Exception;
    :cond_1
    const/16 v4, 0x7000

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSmsEnvelope()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v5

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    if-ne v4, v5, :cond_0

    .line 719
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/LGUSmsUtils;->parseImsMsg([B)I

    move-result v4

    goto :goto_1

    .line 727
    :cond_2
    const/4 v1, 0x0

    .local v1, "loop":I
    :goto_2
    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 728
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteCompleteLmsMsg(), userData["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 727
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 731
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteCompleteLmsMsg(), CBS session = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v5

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessioinId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 732
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteCompleteLmsMsg(), CBS eos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v5

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->endOfSession:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 733
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteCompleteLmsMsg(), CBS sessionSeq = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v5

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessionSeq:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 734
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteCompleteLmsMsg(), CBS Session Map = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/internal/telephony/LGUSmsUtils;->getSessionMap()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 737
    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/telephony/LGUSmsUtils;->getResultOfProcessCbsMsg(Lcom/android/internal/telephony/cdma/SmsMessage;[[B[B)I

    move-result v4

    goto/16 :goto_1
.end method

.method private processLmsMessage(Lcom/android/internal/telephony/SmsMessageBase;[[B)I
    .locals 17
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "pdus"    # [[B

    .prologue
    .line 312
    const-string v1, "processLmsMessage()"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 314
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v7

    .line 315
    .local v7, "pdu":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v16

    .line 316
    .local v16, "userData":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, "sourceMin":Ljava/lang/String;
    const/4 v1, 0x0

    aget-byte v4, v16, v1

    .line 318
    .local v4, "sessionId":I
    const/4 v1, 0x1

    aget-byte v1, v16, v1

    and-int/lit16 v1, v1, 0xf0

    shr-int/lit8 v5, v1, 0x4

    .line 319
    .local v5, "totalSegment":I
    const/4 v1, 0x1

    aget-byte v1, v16, v1

    and-int/lit8 v6, v1, 0xf

    .line 321
    .local v6, "currentSegment":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processLmsMessage(), sourceMin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processLmsMessage(), sessionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processLmsMessage(), totalSegment = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processLmsMessage(), currentSegment = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 325
    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v1, :cond_1

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processLmsMessage(), tid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleServiceId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 332
    :goto_0
    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v1, :cond_2

    move-object/from16 v1, p1

    .line 333
    check-cast v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x3

    if-gt v5, v1, :cond_0

    const/4 v1, 0x3

    if-le v6, v1, :cond_4

    .line 338
    :cond_0
    const-string v1, "processLmsMessage(), invalid LMS"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 339
    const/4 v1, 0x1

    .line 359
    :goto_1
    return v1

    .line 328
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processLmsMessage(), tid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v1, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v1, p1

    .line 342
    check-cast v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserData()[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    const/4 v1, 0x3

    if-gt v5, v1, :cond_3

    const/4 v1, 0x3

    if-le v6, v1, :cond_4

    .line 347
    :cond_3
    const-string v1, "processLmsMessage(), invalid LMS"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 348
    const/4 v1, 0x1

    goto :goto_1

    .line 351
    :cond_4
    const/4 v8, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/LGUSmsUtils;->checkLmsDuplicated(Lcom/android/internal/telephony/SmsMessageBase;Ljava/lang/String;III[B)Z

    move-result v1

    if-ne v8, v1, :cond_5

    .line 352
    const-string v1, "processLmsMessage(), LMS ???"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->i(Ljava/lang/String;)I

    .line 353
    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object v10, v3

    move v11, v4

    move v12, v6

    move v13, v5

    .line 357
    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/LGUSmsUtils;->deleteAllExpiredMsg(Lcom/android/internal/telephony/SmsMessageBase;Ljava/lang/String;III)V

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object v10, v3

    move v11, v4

    move v12, v6

    move v13, v5

    move-object v14, v7

    move-object/from16 v15, p2

    .line 359
    invoke-direct/range {v8 .. v15}, Lcom/android/internal/telephony/LGUSmsUtils;->checkCompleteMsg(Lcom/android/internal/telephony/SmsMessageBase;Ljava/lang/String;III[B[[B)I

    move-result v1

    goto :goto_1
.end method


# virtual methods
.method public handleCBSMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)I
    .locals 11
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0xa

    const/4 v6, 0x1

    .line 70
    new-array v4, v6, [[B

    .line 71
    .local v4, "pdus":[[B
    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v8

    aput-object v8, v4, v7

    .line 73
    new-array v4, v9, [[B

    .line 74
    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/LGUSmsUtils;->processCbsMessage(Lcom/android/internal/telephony/cdma/SmsMessage;[[B)I

    move-result v5

    .line 75
    .local v5, "ret":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 107
    .end local v5    # "ret":I
    :goto_0
    return v5

    .line 80
    .restart local v5    # "ret":I
    :cond_0
    const/4 v0, 0x0

    .line 81
    .local v0, "count":I
    const/4 v1, 0x0

    .line 82
    .local v1, "loop":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v9, :cond_1

    .line 83
    aget-object v7, v4, v1

    if-nez v7, :cond_2

    .line 87
    :cond_1
    move v0, v1

    .line 88
    new-array v2, v0, [[B

    .line 89
    .local v2, "newPuds":[[B
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    .line 90
    aget-object v7, v4, v1

    aput-object v7, v2, v1

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 82
    .end local v2    # "newPuds":[[B
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 92
    .restart local v2    # "newPuds":[[B
    :cond_3
    new-array v4, v0, [[B

    .line 93
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_4

    .line 94
    aget-object v7, v2, v1

    aput-object v7, v4, v1

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 98
    :cond_4
    const-string v7, "CdmaSmsLGUMessage"

    iget-object v8, p0, Lcom/android/internal/telephony/LGUSmsUtils;->mContext:Landroid/content/Context;

    invoke-static {v7, v8, p1, v4, v10}, Lcom/android/internal/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v7

    if-nez v7, :cond_5

    move v5, v6

    .line 99
    goto :goto_0

    .line 101
    :cond_5
    const-string v7, "CdmaSmsLGUMessage"

    iget-object v8, p0, Lcom/android/internal/telephony/LGUSmsUtils;->mContext:Landroid/content/Context;

    invoke-static {v7, v8, p1, v4, v10}, Lcom/android/internal/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v3

    .line 102
    .local v3, "operatorMsg":Lcom/lge/telephony/SmsOperatorBasicMessage;
    if-eqz v3, :cond_6

    .line 103
    iget-object v7, p0, Lcom/android/internal/telephony/LGUSmsUtils;->mInbound:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-interface {v3, v7}, Lcom/lge/telephony/SmsOperatorBasicMessage;->dispatch(Lcom/android/internal/telephony/InboundSmsHandler;)I

    :cond_6
    move v5, v6

    .line 107
    goto :goto_0
.end method

.method public handleLMSMessage(Lcom/android/internal/telephony/SmsMessageBase;Z)I
    .locals 13
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "isGsm"    # Z

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 111
    new-array v5, v10, [[B

    .line 112
    .local v5, "pdus":[[B
    const/4 v8, -0x1

    .line 114
    .local v8, "tid":I
    const/4 v7, 0x0

    .line 116
    .local v7, "sms":Lcom/android/internal/telephony/SmsMessageBase;
    if-ne p2, v10, :cond_0

    move-object v7, p1

    .line 117
    check-cast v7, Lcom/android/internal/telephony/gsm/SmsMessage;

    move-object v9, p1

    .line 118
    check-cast v9, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v8, v9, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 119
    check-cast p1, Lcom/android/internal/telephony/gsm/SmsMessage;

    .end local p1    # "smsb":Lcom/android/internal/telephony/SmsMessageBase;
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v9

    aput-object v9, v5, v11

    .line 130
    :goto_0
    invoke-static {v8}, Lcom/android/internal/telephony/LGUSmsUtils;->checkValidLmsMessage(I)Z

    move-result v9

    if-ne v10, v9, :cond_4

    .line 131
    const/4 v9, 0x3

    new-array v5, v9, [[B

    .line 132
    if-ne p2, v10, :cond_1

    move-object v9, v7

    .line 133
    check-cast v9, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v9

    aput-object v9, v5, v11

    .line 137
    :goto_1
    invoke-direct {p0, v7, v5}, Lcom/android/internal/telephony/LGUSmsUtils;->processLmsMessage(Lcom/android/internal/telephony/SmsMessageBase;[[B)I

    move-result v6

    .line 138
    .local v6, "ret":I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_2

    .line 166
    .end local v6    # "ret":I
    :goto_2
    return v6

    .restart local p1    # "smsb":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    move-object v7, p1

    .line 121
    check-cast v7, Lcom/android/internal/telephony/cdma/SmsMessage;

    move-object v9, p1

    .line 122
    check-cast v9, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleServiceId()I

    move-result v8

    .line 123
    check-cast p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    .end local p1    # "smsb":Lcom/android/internal/telephony/SmsMessageBase;
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v9

    aput-object v9, v5, v11

    goto :goto_0

    :cond_1
    move-object v9, v7

    .line 135
    check-cast v9, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v9

    aput-object v9, v5, v11

    goto :goto_1

    .line 143
    .restart local v6    # "ret":I
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/LGUSmsUtils;->getNumberOfLmsSegment([[B)I

    move-result v0

    .line 144
    .local v0, "count":I
    const/4 v1, 0x0

    .line 145
    .local v1, "loop":I
    new-array v2, v0, [[B

    .line 146
    .local v2, "newPuds":[[B
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_3

    .line 147
    aget-object v9, v5, v1

    aput-object v9, v2, v1

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 149
    :cond_3
    new-array v5, v0, [[B

    .line 150
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_4

    .line 151
    aget-object v9, v2, v1

    aput-object v9, v5, v1

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 155
    .end local v0    # "count":I
    .end local v1    # "loop":I
    .end local v2    # "newPuds":[[B
    .end local v6    # "ret":I
    :cond_4
    if-ne p2, v10, :cond_5

    const-string v3, "GsmSmsLGUMessage"

    .line 157
    .local v3, "operator":Ljava/lang/String;
    :goto_5
    iget-object v9, p0, Lcom/android/internal/telephony/LGUSmsUtils;->mContext:Landroid/content/Context;

    invoke-static {v3, v9, v7, v5, v12}, Lcom/android/internal/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v9

    if-nez v9, :cond_6

    move v6, v10

    .line 158
    goto :goto_2

    .line 155
    .end local v3    # "operator":Ljava/lang/String;
    :cond_5
    const-string v3, "CdmaSmsLGUMessage"

    goto :goto_5

    .line 160
    .restart local v3    # "operator":Ljava/lang/String;
    :cond_6
    iget-object v9, p0, Lcom/android/internal/telephony/LGUSmsUtils;->mContext:Landroid/content/Context;

    invoke-static {v3, v9, v7, v5, v12}, Lcom/android/internal/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v4

    .line 161
    .local v4, "operatorMsg":Lcom/lge/telephony/SmsOperatorBasicMessage;
    if-eqz v4, :cond_7

    .line 162
    iget-object v9, p0, Lcom/android/internal/telephony/LGUSmsUtils;->mInbound:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-interface {v4, v9}, Lcom/lge/telephony/SmsOperatorBasicMessage;->dispatch(Lcom/android/internal/telephony/InboundSmsHandler;)I

    :cond_7
    move v6, v10

    .line 166
    goto :goto_2
.end method
