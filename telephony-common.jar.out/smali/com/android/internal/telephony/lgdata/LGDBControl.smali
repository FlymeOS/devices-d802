.class public Lcom/android/internal/telephony/lgdata/LGDBControl;
.super Ljava/lang/Object;
.source "LGDBControl.java"


# static fields
.field private static APN_INDEX:I = 0x0

.field private static AUTH_TYPE_INDEX:I = 0x0

.field private static BEARER_INDEX:I = 0x0

.field private static CARRIER_ENABLED_INDEX:I = 0x0

.field private static ID_INDEX:I = 0x0

.field private static INACTIVITETIMER_INDEX:I = 0x0

.field private static IP_INDEX:I = 0x0

.field static final LOG_TAG:Ljava/lang/String; = "LGDBControl"

.field private static MAX_CONNS_INDEX:I = 0x0

.field private static MAX_CONNS_TIME_INDEX:I = 0x0

.field private static MCC_INDEX:I = 0x0

.field private static MMSC_INDEX:I = 0x0

.field private static MMSPORT_INDEX:I = 0x0

.field private static MMSPROXY_INDEX:I = 0x0

.field private static MNC_INDEX:I = 0x0

.field private static NAME_INDEX:I = 0x0

.field private static NUMERIC_INDEX:I = 0x0

.field private static PASSWORD_INDEX:I = 0x0

.field private static PORT_INDEX:I = 0x0

.field private static PROXY_INDEX:I = 0x0

.field private static final QUERY_WHERE_CLAUSE:Ljava/lang/String; = "_id=?"

.field private static SERVER_INDEX:I

.field private static SYSPROP_NETWORK_CODE_SPRINT:Ljava/lang/String;

.field private static SYSPROP_NETWORK_CODE_VZW:Ljava/lang/String;

.field private static TYPE_INDEX:I

.field private static USER_INDEX:I

.field private static WAIT_TIME_INDEX:I

.field private static mUri:Landroid/net/Uri;

.field public static mfeatureset:Ljava/lang/String;

.field private static networkOperator:Ljava/lang/String;

.field private static sProjection:[Ljava/lang/String;

.field private static sVzwProjection:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x12

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    .line 49
    const-string v0, "310120"

    sput-object v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->SYSPROP_NETWORK_CODE_SPRINT:Ljava/lang/String;

    .line 51
    const-string v0, "311480"

    sput-object v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->SYSPROP_NETWORK_CODE_VZW:Ljava/lang/String;

    .line 53
    const-string v0, "ro.afwdata.LGfeatureset"

    const-string v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->mfeatureset:Ljava/lang/String;

    .line 54
    sput v4, Lcom/android/internal/telephony/lgdata/LGDBControl;->ID_INDEX:I

    .line 55
    sput v5, Lcom/android/internal/telephony/lgdata/LGDBControl;->NAME_INDEX:I

    .line 56
    sput v6, Lcom/android/internal/telephony/lgdata/LGDBControl;->APN_INDEX:I

    .line 57
    sput v7, Lcom/android/internal/telephony/lgdata/LGDBControl;->PROXY_INDEX:I

    .line 58
    const/4 v0, 0x4

    sput v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->PORT_INDEX:I

    .line 59
    const/4 v0, 0x5

    sput v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->USER_INDEX:I

    .line 60
    const/4 v0, 0x6

    sput v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->SERVER_INDEX:I

    .line 61
    const/4 v0, 0x7

    sput v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->PASSWORD_INDEX:I

    .line 62
    const/16 v0, 0x8

    sput v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->MMSC_INDEX:I

    .line 63
    const/16 v0, 0x9

    sput v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->MCC_INDEX:I

    .line 64
    const/16 v0, 0xa

    sput v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->MNC_INDEX:I

    .line 65
    const/16 v0, 0xb

    sput v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->NUMERIC_INDEX:I

    .line 66
    const/16 v0, 0xc

    sput v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->MMSPROXY_INDEX:I

    .line 67
    const/16 v0, 0xd

    sput v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->MMSPORT_INDEX:I

    .line 68
    const/16 v0, 0xe

    sput v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->AUTH_TYPE_INDEX:I

    .line 69
    const/16 v0, 0xf

    sput v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->TYPE_INDEX:I

    .line 70
    const/16 v0, 0x10

    sput v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->IP_INDEX:I

    .line 71
    const/16 v0, 0x11

    sput v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->BEARER_INDEX:I

    .line 73
    sput v3, Lcom/android/internal/telephony/lgdata/LGDBControl;->INACTIVITETIMER_INDEX:I

    .line 77
    sput v3, Lcom/android/internal/telephony/lgdata/LGDBControl;->CARRIER_ENABLED_INDEX:I

    .line 81
    const/16 v0, 0x13

    sput v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->MAX_CONNS_INDEX:I

    .line 82
    const/16 v0, 0x14

    sput v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->MAX_CONNS_TIME_INDEX:I

    .line 83
    const/16 v0, 0x15

    sput v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->WAIT_TIME_INDEX:I

    .line 86
    const-string v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->mUri:Landroid/net/Uri;

    .line 91
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v5

    const-string v1, "apn"

    aput-object v1, v0, v6

    const-string v1, "proxy"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "authtype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "bearer"

    aput-object v2, v0, v1

    const-string v1, "inactivetimer"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->sProjection:[Ljava/lang/String;

    .line 117
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v5

    const-string v1, "apn"

    aput-object v1, v0, v6

    const-string v1, "proxy"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "authtype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "roaming_protocol"

    aput-object v2, v0, v1

    const-string v1, "bearer"

    aput-object v1, v0, v3

    const/16 v1, 0x13

    const-string v2, "carrier_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "max_conns"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "max_conns_time"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "wait_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->sVzwProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/LGDBControl;->mContext:Landroid/content/Context;

    .line 149
    sget-object v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->mfeatureset:Ljava/lang/String;

    const-string v1, "SPCSBASE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->SYSPROP_NETWORK_CODE_SPRINT:Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    .line 152
    const-string v0, "LGDBControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! SPCSBASE networkOperator :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_0
    return-void

    .line 155
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->mfeatureset:Ljava/lang/String;

    const-string v1, "VZWBASE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    sget-object v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->SYSPROP_NETWORK_CODE_VZW:Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    .line 158
    const-string v0, "LGDBControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! VZWBASE networkOperator :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 163
    :cond_1
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    .line 164
    const-string v0, "LGDBControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! NOT SPCSBASE, networkOperator :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getVzwLTEApnFromDb(Landroid/content/Context;I)Ljava/lang/String;
    .locals 14
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "row"    # I

    .prologue
    .line 1285
    const/4 v10, 0x0

    .line 1288
    .local v10, "mCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1289
    .local v7, "cr":Landroid/content/ContentResolver;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1293
    .local v3, "where":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->sVzwProjection:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1296
    if-nez v10, :cond_1

    .line 1298
    const-string v0, "LGDBControl"

    const-string v1, " Cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1299
    const/4 v13, 0x0

    .line 1358
    if-eqz v10, :cond_0

    .line 1359
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .end local v3    # "where":Ljava/lang/String;
    .end local v7    # "cr":Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return-object v13

    .line 1302
    .restart local v3    # "where":Ljava/lang/String;
    .restart local v7    # "cr":Landroid/content/ContentResolver;
    :cond_1
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1303
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1304
    .local v6, "count":I
    const-string v0, "LGDBControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "now in the db for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \'s count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    if-gt v6, p1, :cond_2

    .line 1308
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1309
    const-string v13, "0"
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1358
    if-eqz v10, :cond_0

    .line 1359
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1311
    :cond_2
    :try_start_2
    invoke-interface {v10, p1}, Landroid/database/Cursor;->move(I)Z

    .line 1313
    const-string v0, "_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1314
    .local v9, "key":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1315
    .local v12, "pos":I
    const-string v0, "LGDBControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "your pos"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    const-string v11, "LTE|EHRPD"

    .line 1319
    .local v11, "myBearer":Ljava/lang/String;
    const-string v0, "bearer"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "14"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1321
    const-string v11, "LTE"

    .line 1328
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "apn"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "proxy"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "port"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "user"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "password"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "server"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mmsc"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mmsproxy"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mmsport"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "authtype"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "protocol"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "roaming_protocol"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "carrier_enabled"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bearer"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "max_conns"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "max_conns_time"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wait_time"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1349
    .local v13, "result":Ljava/lang/String;
    const-string v0, "LGDBControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getting info is !! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1358
    if-eqz v10, :cond_0

    .line 1359
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1323
    .end local v13    # "result":Ljava/lang/String;
    :cond_4
    :try_start_3
    const-string v0, "bearer"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "13"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1325
    const-string v11, "EHRPD"
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 1352
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "count":I
    .end local v7    # "cr":Landroid/content/ContentResolver;
    .end local v9    # "key":Ljava/lang/String;
    .end local v11    # "myBearer":Ljava/lang/String;
    .end local v12    # "pos":I
    :catch_0
    move-exception v8

    .line 1354
    .local v8, "e":Ljava/lang/IllegalStateException;
    :try_start_4
    const-string v0, "LGDBControl"

    const-string v1, "IllegalStateException getVzwLTEApnFromDb"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1355
    const/4 v13, 0x0

    .line 1358
    if-eqz v10, :cond_0

    .line 1359
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1358
    .end local v8    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_5

    .line 1359
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private queryApnValues(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "item"    # Ljava/lang/String;

    .prologue
    .line 1569
    const/4 v11, 0x0

    .line 1571
    .local v11, "mCursor":Landroid/database/Cursor;
    const-string v0, "LGDBControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryApnValues - networkOperator : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1580
    .local v4, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LGDBControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDBControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/internal/telephony/lgdata/LGDBControl;->sVzwProjection:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1582
    if-nez v11, :cond_1

    .line 1584
    const-string v0, "LGDBControl"

    const-string v1, " Cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1585
    const/4 v12, 0x0

    .line 1614
    if-eqz v11, :cond_0

    .line 1615
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .end local v4    # "where":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v12

    .line 1588
    .restart local v4    # "where":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1589
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1590
    .local v7, "count":I
    const-string v0, "LGDBControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "now in the db for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \'s count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v7, :cond_3

    .line 1595
    const-string v0, "type"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/lgdata/LGDBControl;->isEqualApnType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1597
    invoke-interface {v11, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1598
    .local v10, "index":I
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1599
    .local v12, "result":Ljava/lang/String;
    const-string v0, "LGDBControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1614
    if-eqz v11, :cond_0

    .line 1615
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1603
    .end local v10    # "index":I
    .end local v12    # "result":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1592
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1606
    :cond_3
    const/4 v12, 0x0

    .line 1614
    if-eqz v11, :cond_0

    .line 1615
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1608
    .end local v4    # "where":Ljava/lang/String;
    .end local v7    # "count":I
    .end local v9    # "i":I
    :catch_0
    move-exception v8

    .line 1610
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v0, "LGDBControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception queryApnValues - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1611
    const/4 v12, 0x0

    .line 1614
    if-eqz v11, :cond_0

    .line 1615
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1614
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_4

    .line 1615
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static updateApnDBForVZW(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 24
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "Set_id"    # I

    .prologue
    .line 1168
    const-string v2, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telephony/TelephonyManager;

    .line 1171
    .local v15, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    const-string v2, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 1173
    .local v18, "parm":[Ljava/lang/String;
    const-string v2, "LGDBControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parm length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, v18

    array-length v2, v0

    if-ge v11, v2, :cond_0

    .line 1177
    const-string v2, "LGDBControl"

    aget-object v3, v18, v11

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1180
    :cond_0
    const-string v16, "0"

    .line 1181
    .local v16, "mcc":Ljava/lang/String;
    const-string v17, "0"

    .line 1183
    .local v17, "mnc":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_3

    .line 1185
    :cond_1
    const-string v2, "LGDBControl"

    const-string v3, "[updateApnDBupdateApnDB]home oper is bad. error "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    const/4 v2, 0x0

    .line 1278
    :cond_2
    :goto_1
    return v2

    .line 1189
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    .line 1191
    .local v13, "length":I
    const/4 v2, 0x5

    if-ge v13, v2, :cond_4

    .line 1193
    const-string v2, "LGDBControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "home oper is bad. error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    const/4 v2, 0x0

    goto :goto_1

    .line 1197
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 1198
    sget-object v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 1200
    const-string v2, "LGDBControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM Info reading Success "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    const/4 v14, 0x0

    .line 1206
    .local v14, "mCursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1209
    .local v6, "where":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/lgdata/LGDBControl;->sVzwProjection:[Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1211
    if-nez v14, :cond_5

    .line 1213
    const-string v2, "LGDBControl"

    const-string v3, " Cursor is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1214
    const/4 v2, 0x0

    .line 1277
    if-eqz v14, :cond_2

    .line 1278
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1217
    :cond_5
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1218
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1220
    .local v9, "count":I
    move/from16 v0, p2

    if-ge v9, v0, :cond_6

    .line 1222
    const-string v2, "LGDBControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set id is bad id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1224
    const/4 v2, 0x0

    .line 1277
    if-eqz v14, :cond_2

    .line 1278
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1227
    :cond_6
    :try_start_2
    move/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/database/Cursor;->move(I)Z

    .line 1229
    const-string v2, "_id"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1231
    .local v12, "key":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 1232
    .local v19, "pos":I
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v19

    int-to-long v4, v0

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    .line 1234
    .local v22, "url":Landroid/net/Uri;
    const-string v2, "LGDBControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateApnDBForVZW]numeric : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    const-string v2, "LGDBControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateApnDBForVZW]your pos "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    const-string v2, "type"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1238
    .local v21, "type":Ljava/lang/String;
    const-string v2, "LGDBControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateApnDBForVZW] Key is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 1242
    .local v23, "values":Landroid/content/ContentValues;
    const-string v2, "name"

    const/4 v3, 0x0

    aget-object v3, v18, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    const-string v2, "apn"

    const/4 v3, 0x1

    aget-object v3, v18, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    const-string v2, "proxy"

    const/4 v3, 0x2

    aget-object v3, v18, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    const-string v2, "port"

    const/4 v3, 0x3

    aget-object v3, v18, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    const-string v2, "user"

    const/4 v3, 0x4

    aget-object v3, v18, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    const-string v2, "password"

    const/4 v3, 0x5

    aget-object v3, v18, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    const-string v2, "server"

    const/4 v3, 0x6

    aget-object v3, v18, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    const-string v2, "mmsc"

    const/4 v3, 0x7

    aget-object v3, v18, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    const-string v2, "mmsproxy"

    const/16 v3, 0x8

    aget-object v3, v18, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    const-string v2, "mmsport"

    const/16 v3, 0x9

    aget-object v3, v18, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    const-string v2, "mcc"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    const-string v2, "mnc"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    const-string v2, "authtype"

    const/16 v3, 0xa

    aget-object v3, v18, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    const-string v2, "type"

    const/16 v3, 0xb

    aget-object v3, v18, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    const-string v2, "protocol"

    const/16 v3, 0xc

    aget-object v3, v18, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    const-string v2, "roaming_protocol"

    const/16 v3, 0xd

    aget-object v3, v18, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    const-string v2, "carrier_enabled"

    const/16 v3, 0xe

    aget-object v3, v18, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    const-string v2, "bearer"

    const/16 v3, 0xf

    aget-object v3, v18, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    const-string v2, "max_conns"

    const/16 v3, 0x10

    aget-object v3, v18, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    const-string v2, "max_conns_time"

    const/16 v3, 0x11

    aget-object v3, v18, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    const-string v2, "wait_time"

    const/16 v3, 0x12

    aget-object v3, v18, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    const-string v2, "numeric"

    sget-object v3, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 1268
    .local v20, "result":I
    const-string v2, "LGDBControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Rows Success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1270
    const/4 v2, 0x1

    .line 1277
    if-eqz v14, :cond_2

    .line 1278
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1272
    .end local v6    # "where":Ljava/lang/String;
    .end local v9    # "count":I
    .end local v12    # "key":Ljava/lang/String;
    .end local v19    # "pos":I
    .end local v20    # "result":I
    .end local v21    # "type":Ljava/lang/String;
    .end local v22    # "url":Landroid/net/Uri;
    .end local v23    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v10

    .line 1274
    .local v10, "e":Ljava/lang/IllegalStateException;
    const/4 v2, 0x0

    .line 1277
    if-eqz v14, :cond_2

    .line 1278
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1277
    .end local v10    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v2

    if-eqz v14, :cond_7

    .line 1278
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2
.end method

.method private updateApnValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 20
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "item"    # Ljava/lang/String;
    .param p3, "values"    # Ljava/lang/String;

    .prologue
    .line 1495
    const/4 v15, 0x0

    .line 1497
    .local v15, "mCursor":Landroid/database/Cursor;
    const-string v4, "LGDBControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateApnValues - networkOperator : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 1504
    .local v18, "setValues":Landroid/content/ContentValues;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "numeric=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1508
    .local v8, "where":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/internal/telephony/lgdata/LGDBControl;->sVzwProjection:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "_id"

    invoke-static/range {v4 .. v10}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1510
    if-nez v15, :cond_1

    .line 1512
    const-string v4, "LGDBControl"

    const-string v5, " Cursor is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1513
    const/4 v4, 0x0

    .line 1559
    if-eqz v15, :cond_0

    .line 1560
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .end local v8    # "where":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 1516
    .restart local v8    # "where":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1517
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 1518
    .local v11, "count":I
    const-string v4, "LGDBControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "now in the db for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \'s count is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v11, :cond_4

    .line 1522
    const-string v4, "type"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/lgdata/LGDBControl;->isEqualApnType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1524
    const-string v4, "_id"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1525
    .local v14, "key":Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 1527
    .local v16, "pos":I
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v16

    int-to-long v6, v0

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 1529
    .local v19, "url":Landroid/net/Uri;
    const-string v4, "LGDBControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current pos : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mCursor.getPosition : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v15}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    .line 1535
    .local v17, "result":I
    const-string v4, "LGDBControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", item : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", result : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1537
    if-gtz v17, :cond_2

    .line 1539
    const/4 v4, 0x0

    .line 1559
    if-eqz v15, :cond_0

    .line 1560
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1543
    :cond_2
    const/4 v4, 0x1

    .line 1559
    if-eqz v15, :cond_0

    .line 1560
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1548
    .end local v14    # "key":Ljava/lang/String;
    .end local v16    # "pos":I
    .end local v17    # "result":I
    .end local v19    # "url":Landroid/net/Uri;
    :cond_3
    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1520
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 1551
    :cond_4
    const/4 v4, 0x0

    .line 1559
    if-eqz v15, :cond_0

    .line 1560
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1553
    .end local v8    # "where":Ljava/lang/String;
    .end local v11    # "count":I
    .end local v13    # "i":I
    :catch_0
    move-exception v12

    .line 1555
    .local v12, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v4, "LGDBControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception setApnValues - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1556
    const/4 v4, 0x0

    .line 1559
    if-eqz v15, :cond_0

    .line 1560
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1559
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v15, :cond_5

    .line 1560
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4
.end method


# virtual methods
.method public backupAPN(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apnBackup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 667
    const/4 v3, 0x0

    .line 668
    .local v3, "fApnWriter":Ljava/io/FileWriter;
    const/4 v6, 0x0

    .line 672
    .local v6, "outApnFile":Ljava/io/BufferedWriter;
    if-nez p2, :cond_5

    .line 674
    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    new-instance v8, Ljava/lang/String;

    const-string v9, "/persist-lg/LGE_RC/apn_backup"

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    .end local v3    # "fApnWriter":Ljava/io/FileWriter;
    .local v4, "fApnWriter":Ljava/io/FileWriter;
    :try_start_1
    new-instance v7, Ljava/io/BufferedWriter;

    invoke-direct {v7, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 676
    .end local v6    # "outApnFile":Ljava/io/BufferedWriter;
    .local v7, "outApnFile":Ljava/io/BufferedWriter;
    :try_start_2
    const-string v1, ""

    .line 678
    .local v1, "buffer":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v8, 0x9

    if-ge v5, v8, :cond_4

    .line 680
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0, v5, v8, v9}, Lcom/android/internal/telephony/lgdata/LGDBControl;->getAPNString(IZZ)Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, "APNValue":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 684
    const-string v8, "APN Backup"

    const-string v9, "APNValue is NULL"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 707
    if-eqz v7, :cond_0

    .line 708
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->flush()V

    .line 709
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V

    .line 711
    :cond_0
    if-eqz v4, :cond_1

    .line 712
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V

    .line 713
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V

    :cond_1
    move-object v6, v7

    .end local v7    # "outApnFile":Ljava/io/BufferedWriter;
    .restart local v6    # "outApnFile":Ljava/io/BufferedWriter;
    move-object v3, v4

    .line 716
    .end local v0    # "APNValue":Ljava/lang/String;
    .end local v1    # "buffer":Ljava/lang/String;
    .end local v4    # "fApnWriter":Ljava/io/FileWriter;
    .end local v5    # "i":I
    .restart local v3    # "fApnWriter":Ljava/io/FileWriter;
    :cond_2
    :goto_1
    return-void

    .line 687
    .end local v3    # "fApnWriter":Ljava/io/FileWriter;
    .end local v6    # "outApnFile":Ljava/io/BufferedWriter;
    .restart local v0    # "APNValue":Ljava/lang/String;
    .restart local v1    # "buffer":Ljava/lang/String;
    .restart local v4    # "fApnWriter":Ljava/io/FileWriter;
    .restart local v5    # "i":I
    .restart local v7    # "outApnFile":Ljava/io/BufferedWriter;
    :cond_3
    :try_start_3
    const-string v8, "0"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 689
    const-string v8, "APN Backup"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Backup APN table : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " None"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    .end local v0    # "APNValue":Ljava/lang/String;
    :cond_4
    invoke-virtual {v7, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 695
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->flush()V

    .line 696
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 697
    const/4 v6, 0x0

    .line 698
    .end local v7    # "outApnFile":Ljava/io/BufferedWriter;
    .restart local v6    # "outApnFile":Ljava/io/BufferedWriter;
    :try_start_4
    const-string v8, "APN Backup"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Backup APN table! "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v3, v4

    .line 707
    .end local v1    # "buffer":Ljava/lang/String;
    .end local v4    # "fApnWriter":Ljava/io/FileWriter;
    .end local v5    # "i":I
    .restart local v3    # "fApnWriter":Ljava/io/FileWriter;
    :cond_5
    if-eqz v6, :cond_6

    .line 708
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    .line 709
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V

    .line 711
    :cond_6
    if-eqz v3, :cond_2

    .line 712
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    .line 713
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    goto :goto_1

    .line 692
    .end local v3    # "fApnWriter":Ljava/io/FileWriter;
    .end local v6    # "outApnFile":Ljava/io/BufferedWriter;
    .restart local v0    # "APNValue":Ljava/lang/String;
    .restart local v1    # "buffer":Ljava/lang/String;
    .restart local v4    # "fApnWriter":Ljava/io/FileWriter;
    .restart local v5    # "i":I
    .restart local v7    # "outApnFile":Ljava/io/BufferedWriter;
    :cond_7
    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " 1,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v1

    .line 678
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 701
    .end local v0    # "APNValue":Ljava/lang/String;
    .end local v1    # "buffer":Ljava/lang/String;
    .end local v4    # "fApnWriter":Ljava/io/FileWriter;
    .end local v5    # "i":I
    .end local v7    # "outApnFile":Ljava/io/BufferedWriter;
    .restart local v3    # "fApnWriter":Ljava/io/FileWriter;
    .restart local v6    # "outApnFile":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v2

    .line 703
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_6
    const-string v8, "APN Backup"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Backup APN table"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 707
    if-eqz v6, :cond_8

    .line 708
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    .line 709
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V

    .line 711
    :cond_8
    if-eqz v3, :cond_2

    .line 712
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    .line 713
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    goto/16 :goto_1

    .line 707
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v6, :cond_9

    .line 708
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    .line 709
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V

    .line 711
    :cond_9
    if-eqz v3, :cond_a

    .line 712
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    .line 713
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    :cond_a
    throw v8

    .line 707
    .end local v3    # "fApnWriter":Ljava/io/FileWriter;
    .restart local v4    # "fApnWriter":Ljava/io/FileWriter;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fApnWriter":Ljava/io/FileWriter;
    .restart local v3    # "fApnWriter":Ljava/io/FileWriter;
    goto :goto_3

    .end local v3    # "fApnWriter":Ljava/io/FileWriter;
    .end local v6    # "outApnFile":Ljava/io/BufferedWriter;
    .restart local v4    # "fApnWriter":Ljava/io/FileWriter;
    .restart local v7    # "outApnFile":Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "outApnFile":Ljava/io/BufferedWriter;
    .restart local v6    # "outApnFile":Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4    # "fApnWriter":Ljava/io/FileWriter;
    .restart local v3    # "fApnWriter":Ljava/io/FileWriter;
    goto :goto_3

    .line 701
    .end local v3    # "fApnWriter":Ljava/io/FileWriter;
    .restart local v4    # "fApnWriter":Ljava/io/FileWriter;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4    # "fApnWriter":Ljava/io/FileWriter;
    .restart local v3    # "fApnWriter":Ljava/io/FileWriter;
    goto :goto_2

    .end local v3    # "fApnWriter":Ljava/io/FileWriter;
    .end local v6    # "outApnFile":Ljava/io/BufferedWriter;
    .restart local v4    # "fApnWriter":Ljava/io/FileWriter;
    .restart local v7    # "outApnFile":Ljava/io/BufferedWriter;
    :catch_2
    move-exception v2

    move-object v6, v7

    .end local v7    # "outApnFile":Ljava/io/BufferedWriter;
    .restart local v6    # "outApnFile":Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4    # "fApnWriter":Ljava/io/FileWriter;
    .restart local v3    # "fApnWriter":Ljava/io/FileWriter;
    goto :goto_2
.end method

.method public backupAPN(Ljava/lang/String;)V
    .locals 12
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 720
    if-eqz p1, :cond_1

    .line 722
    const/4 v3, 0x0

    .line 723
    .local v3, "fApnWriter":Ljava/io/FileWriter;
    const/4 v7, 0x0

    .line 726
    .local v7, "outApnFile":Ljava/io/BufferedWriter;
    :try_start_0
    const-string v6, "/persist-lg/LGE_RC/"

    .line 727
    .local v6, "mFilePath":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 728
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    .end local v3    # "fApnWriter":Ljava/io/FileWriter;
    .local v4, "fApnWriter":Ljava/io/FileWriter;
    :try_start_1
    new-instance v8, Ljava/io/BufferedWriter;

    invoke-direct {v8, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 730
    .end local v7    # "outApnFile":Ljava/io/BufferedWriter;
    .local v8, "outApnFile":Ljava/io/BufferedWriter;
    :try_start_2
    const-string v1, ""

    .line 732
    .local v1, "buffer":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v9, 0x9

    if-ge v5, v9, :cond_3

    .line 734
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {p0, v5, v9, v10}, Lcom/android/internal/telephony/lgdata/LGDBControl;->getAPNString(IZZ)Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, "APNValue":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 738
    const-string v9, "APN Backup"

    const-string v10, "APNValue is NULL"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 760
    if-eqz v8, :cond_0

    .line 761
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V

    .line 762
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V

    .line 764
    :cond_0
    if-eqz v4, :cond_1

    .line 765
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V

    .line 766
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V

    .line 770
    .end local v0    # "APNValue":Ljava/lang/String;
    .end local v1    # "buffer":Ljava/lang/String;
    .end local v4    # "fApnWriter":Ljava/io/FileWriter;
    .end local v5    # "i":I
    .end local v6    # "mFilePath":Ljava/lang/String;
    .end local v8    # "outApnFile":Ljava/io/BufferedWriter;
    :cond_1
    :goto_1
    return-void

    .line 741
    .restart local v0    # "APNValue":Ljava/lang/String;
    .restart local v1    # "buffer":Ljava/lang/String;
    .restart local v4    # "fApnWriter":Ljava/io/FileWriter;
    .restart local v5    # "i":I
    .restart local v6    # "mFilePath":Ljava/lang/String;
    .restart local v8    # "outApnFile":Ljava/io/BufferedWriter;
    :cond_2
    :try_start_3
    const-string v9, "0"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 743
    const-string v9, "APN Backup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " Backup APN table : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " None"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    .end local v0    # "APNValue":Ljava/lang/String;
    :cond_3
    invoke-virtual {v8, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 749
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V

    .line 750
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 751
    const/4 v7, 0x0

    .line 752
    .end local v8    # "outApnFile":Ljava/io/BufferedWriter;
    .restart local v7    # "outApnFile":Ljava/io/BufferedWriter;
    :try_start_4
    const-string v9, "APN Backup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Backup APN table! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 760
    if-eqz v7, :cond_4

    .line 761
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->flush()V

    .line 762
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V

    .line 764
    :cond_4
    if-eqz v4, :cond_1

    .line 765
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V

    .line 766
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V

    goto :goto_1

    .line 746
    .end local v7    # "outApnFile":Ljava/io/BufferedWriter;
    .restart local v0    # "APNValue":Ljava/lang/String;
    .restart local v8    # "outApnFile":Ljava/io/BufferedWriter;
    :cond_5
    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " 1,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v1

    .line 732
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 754
    .end local v0    # "APNValue":Ljava/lang/String;
    .end local v1    # "buffer":Ljava/lang/String;
    .end local v4    # "fApnWriter":Ljava/io/FileWriter;
    .end local v5    # "i":I
    .end local v6    # "mFilePath":Ljava/lang/String;
    .end local v8    # "outApnFile":Ljava/io/BufferedWriter;
    .restart local v3    # "fApnWriter":Ljava/io/FileWriter;
    .restart local v7    # "outApnFile":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v2

    .line 756
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_6
    const-string v9, "APN Backup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Backup APN table"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 760
    if-eqz v7, :cond_6

    .line 761
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->flush()V

    .line 762
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V

    .line 764
    :cond_6
    if-eqz v3, :cond_1

    .line 765
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    .line 766
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    goto/16 :goto_1

    .line 760
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v7, :cond_7

    .line 761
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->flush()V

    .line 762
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V

    .line 764
    :cond_7
    if-eqz v3, :cond_8

    .line 765
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    .line 766
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    :cond_8
    throw v9

    .line 760
    .end local v3    # "fApnWriter":Ljava/io/FileWriter;
    .restart local v4    # "fApnWriter":Ljava/io/FileWriter;
    .restart local v6    # "mFilePath":Ljava/lang/String;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "fApnWriter":Ljava/io/FileWriter;
    .restart local v3    # "fApnWriter":Ljava/io/FileWriter;
    goto :goto_3

    .end local v3    # "fApnWriter":Ljava/io/FileWriter;
    .end local v7    # "outApnFile":Ljava/io/BufferedWriter;
    .restart local v4    # "fApnWriter":Ljava/io/FileWriter;
    .restart local v8    # "outApnFile":Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v9

    move-object v7, v8

    .end local v8    # "outApnFile":Ljava/io/BufferedWriter;
    .restart local v7    # "outApnFile":Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4    # "fApnWriter":Ljava/io/FileWriter;
    .restart local v3    # "fApnWriter":Ljava/io/FileWriter;
    goto :goto_3

    .line 754
    .end local v3    # "fApnWriter":Ljava/io/FileWriter;
    .restart local v4    # "fApnWriter":Ljava/io/FileWriter;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4    # "fApnWriter":Ljava/io/FileWriter;
    .restart local v3    # "fApnWriter":Ljava/io/FileWriter;
    goto :goto_2

    .end local v3    # "fApnWriter":Ljava/io/FileWriter;
    .end local v7    # "outApnFile":Ljava/io/BufferedWriter;
    .restart local v4    # "fApnWriter":Ljava/io/FileWriter;
    .restart local v8    # "outApnFile":Ljava/io/BufferedWriter;
    :catch_2
    move-exception v2

    move-object v7, v8

    .end local v8    # "outApnFile":Ljava/io/BufferedWriter;
    .restart local v7    # "outApnFile":Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4    # "fApnWriter":Ljava/io/FileWriter;
    .restart local v3    # "fApnWriter":Ljava/io/FileWriter;
    goto :goto_2
.end method

.method public checkApnUpdate(I)Z
    .locals 10
    .param p1, "Set_id"    # I

    .prologue
    const/4 v9, 0x0

    .line 1123
    const/4 v8, 0x0

    .line 1125
    .local v8, "mCursor":Landroid/database/Cursor;
    const-string v0, "LGDBControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkId networkOperator :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1133
    .local v4, "where":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LGDBControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDBControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/internal/telephony/lgdata/LGDBControl;->sVzwProjection:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1134
    if-nez v8, :cond_2

    .line 1136
    const-string v0, "LGDBControl"

    const-string v1, " Cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1159
    if-eqz v8, :cond_0

    .line 1160
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v9

    :cond_1
    :goto_0
    return v0

    .line 1139
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1140
    invoke-interface {v8, p1}, Landroid/database/Cursor;->move(I)Z

    .line 1141
    const-string v0, "type"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "type"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "admin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1144
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1145
    const/4 v0, 0x1

    .line 1159
    if-eqz v8, :cond_1

    .line 1160
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1149
    :cond_4
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1159
    if-eqz v8, :cond_5

    .line 1160
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    move v0, v9

    goto :goto_0

    .line 1153
    :catch_0
    move-exception v7

    .line 1155
    .local v7, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v0, "LGDBControl"

    const-string v1, "IllegalStateException checkApnUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1159
    if-eqz v8, :cond_6

    .line 1160
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    move v0, v9

    goto :goto_0

    .line 1159
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_7

    .line 1160
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method public checkId(I)Z
    .locals 9
    .param p1, "Set_id"    # I

    .prologue
    .line 215
    const-string v0, "LGDBControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkId networkOperator :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LGDBControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->sProjection:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 223
    .local v8, "mCursor":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 225
    const-string v0, "LGDBControl"

    const-string v1, " Cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v0, 0x0

    .line 241
    :goto_0
    return v0

    .line 229
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 230
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 232
    .local v6, "count":I
    if-gt v6, p1, :cond_1

    .line 234
    const-string v0, "LGDBControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting num is bigger than real num so make dummy  mCursor.count :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    sub-int v0, p1, v6

    if-gt v7, v0, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LGDBControl;->makedummy()Z

    .line 235
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 240
    .end local v7    # "i":I
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 241
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAPNString(I)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1100
    const-string v0, "LGDBControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! get APN Called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LGDBControl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/lgdata/LGDBControl;->getVzwLTEApnFromDb(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAPNString(IZ)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I
    .param p2, "dummy"    # Z

    .prologue
    .line 170
    const-string v0, "LGDBControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! get APN Called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LGDBControl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/internal/telephony/lgdata/LGDBControl;->getSpLTEApnFromDb(Landroid/content/Context;IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAPNString(IZZ)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I
    .param p2, "dummy"    # Z
    .param p3, "restoreAPNorBackupAPN"    # Z

    .prologue
    .line 181
    const-string v0, "LGDBControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! get APN Called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v0, "LGDBControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! get APN Called restoreAPNorBackupApn is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LGDBControl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/telephony/lgdata/LGDBControl;->getSpLTEApnFromDb(Landroid/content/Context;IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAPNStringforSYSPROP(IZ)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I
    .param p2, "dummy"    # Z

    .prologue
    .line 176
    const-string v0, "LGDBControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! get APN Called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LGDBControl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/internal/telephony/lgdata/LGDBControl;->getSpLTEApnFromDbSYSPROP(Landroid/content/Context;IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAPNType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 302
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/String;

    .line 303
    .local v0, "apnTypeTemp":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 304
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 305
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 306
    aget-object v2, v0, v1

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    const-string v2, "LGDBControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAPNType(expect default):: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    aget-object p1, v0, v1

    .line 313
    .end local v1    # "i":I
    .end local p1    # "apnType":Ljava/lang/String;
    :goto_1
    return-object p1

    .line 305
    .restart local v1    # "i":I
    .restart local p1    # "apnType":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    .end local v1    # "i":I
    :cond_1
    const-string v2, "LGDBControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAPNType :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getApnValues(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "item"    # Ljava/lang/String;

    .prologue
    .line 1368
    const/4 v1, 0x0

    .line 1370
    .local v1, "result":Ljava/lang/String;
    const-string v3, "_id"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "apn"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "max_conns"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "max_conns_time"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "wait_time"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1376
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/lgdata/LGDBControl;->queryApnValues(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1377
    const-string v3, "LGDBControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getApn type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " column is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " result is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1416
    :goto_0
    return-object v0

    .line 1380
    :cond_1
    const-string v3, "protocol"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1382
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/lgdata/LGDBControl;->queryApnValues(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1384
    .local v0, "ip":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1385
    const-string v3, "IP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1386
    const-string v0, "IPV4"

    .line 1395
    :cond_2
    :goto_1
    const-string v3, "LGDBControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getApn type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " column is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " result is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1387
    :cond_3
    const-string v3, "IPV6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1388
    const-string v0, "IPV6"

    goto :goto_1

    .line 1389
    :cond_4
    const-string v3, "IPV4V6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1390
    const-string v0, "IPV4 and IPV6"

    goto :goto_1

    .line 1392
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 1398
    .end local v0    # "ip":Ljava/lang/String;
    :cond_6
    const-string v3, "carrier_enabled"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1400
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/lgdata/LGDBControl;->queryApnValues(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1402
    .local v2, "status":Ljava/lang/String;
    if-eqz v2, :cond_7

    .line 1403
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1404
    const-string v2, "true"

    .line 1412
    :cond_7
    :goto_2
    const-string v3, "LGDBControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getApn type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " column is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " result is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 1413
    goto/16 :goto_0

    .line 1405
    :cond_8
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1406
    const-string v2, "false"

    goto :goto_2

    .line 1408
    :cond_9
    const/4 v2, 0x0

    goto :goto_2

    .line 1416
    .end local v2    # "status":Ljava/lang/String;
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public getMMSInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "numeric"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 415
    const-string v8, ""

    .line 417
    .local v8, "result":Ljava/lang/String;
    const-string v3, "type LIKE \'%default%\' OR type LIKE \'%mms%\'"

    .line 419
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LGDBControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->sProjection:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 424
    .local v7, "mCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 425
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 426
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 427
    sget v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->NUMERIC_INDEX:I

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 428
    .local v6, "dbNumeric":Ljava/lang/String;
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->BEARER_INDEX:I

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/android/internal/telephony/lgdata/LGDBControl;->MMSC_INDEX:I

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/lgdata/LGDBControl;->MMSPROXY_INDEX:I

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/lgdata/LGDBControl;->MMSPORT_INDEX:I

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 434
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 436
    .end local v6    # "dbNumeric":Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 438
    :cond_2
    const-string v0, "LGDBControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMMSInfo info is !! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-object v8
.end method

.method public getSpLTEApnFromDb(Landroid/content/Context;IZZ)Ljava/lang/String;
    .locals 16
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "row"    # I
    .param p3, "dummy"    # Z
    .param p4, "restoreAPNorBackupAPN"    # Z

    .prologue
    .line 904
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 906
    .local v9, "cr":Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numeric=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 910
    .local v4, "where":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/internal/telephony/lgdata/LGDBControl;->sProjection:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 913
    .local v12, "mCursor":Landroid/database/Cursor;
    if-nez v12, :cond_0

    .line 915
    const-string v1, "LGDBControl"

    const-string v2, " Cursor is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const/4 v15, 0x0

    .line 996
    :goto_0
    return-object v15

    .line 918
    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 919
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 920
    .local v8, "count":I
    const-string v1, "LGDBControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "now in the db for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \'s count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    move/from16 v0, p2

    if-gt v8, v0, :cond_1

    .line 924
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 925
    const-string v15, "0"

    goto :goto_0

    .line 927
    :cond_1
    move/from16 v0, p2

    invoke-interface {v12, v0}, Landroid/database/Cursor;->move(I)Z

    .line 929
    sget v1, Lcom/android/internal/telephony/lgdata/LGDBControl;->ID_INDEX:I

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 930
    .local v11, "key":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 931
    .local v14, "pos":I
    const-string v1, "LGDBControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "your pos"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    sget v1, Lcom/android/internal/telephony/lgdata/LGDBControl;->TYPE_INDEX:I

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Dummy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget v1, Lcom/android/internal/telephony/lgdata/LGDBControl;->TYPE_INDEX:I

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dummy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_3

    .line 936
    const-string v1, "LGDBControl"

    const-string v2, "[DATA] Dummy APN return 0"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    const-string v15, "0"

    goto/16 :goto_0

    .line 941
    :cond_3
    const-string v13, "LTE|EHRPD"

    .line 942
    .local v13, "myBearer":Ljava/lang/String;
    sget v1, Lcom/android/internal/telephony/lgdata/LGDBControl;->BEARER_INDEX:I

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "14"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 944
    const-string v13, "LTE"

    .line 958
    :cond_4
    :goto_1
    const/4 v10, 0x0

    .line 959
    .local v10, "inactivityTime":I
    sget-object v1, Lcom/android/internal/telephony/lgdata/LGDBControl;->mfeatureset:Ljava/lang/String;

    const-string v2, "SPCSBASE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 961
    sget v1, Lcom/android/internal/telephony/lgdata/LGDBControl;->INACTIVITETIMER_INDEX:I

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 962
    const-string v1, "LGDBControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[bycho]inactivitytime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_5
    sget v1, Lcom/android/internal/telephony/lgdata/LGDBControl;->TYPE_INDEX:I

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LGDBControl;->getAPNType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 968
    .local v7, "apnType":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->APN_INDEX:I

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->IP_INDEX:I

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->AUTH_TYPE_INDEX:I

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->USER_INDEX:I

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->PASSWORD_INDEX:I

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->NAME_INDEX:I

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 984
    .local v15, "result":Ljava/lang/String;
    if-eqz p4, :cond_6

    .line 986
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->MMSC_INDEX:I

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->MMSPROXY_INDEX:I

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->MMSPORT_INDEX:I

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 990
    const-string v1, "LGDBControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getting info is !! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    :cond_6
    const-string v1, "LGDBControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getting info is !! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 946
    .end local v7    # "apnType":Ljava/lang/String;
    .end local v10    # "inactivityTime":I
    .end local v15    # "result":Ljava/lang/String;
    :cond_7
    sget v1, Lcom/android/internal/telephony/lgdata/LGDBControl;->BEARER_INDEX:I

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "13"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 948
    const-string v13, "EHRPD"

    goto/16 :goto_1

    .line 951
    :cond_8
    sget v1, Lcom/android/internal/telephony/lgdata/LGDBControl;->BEARER_INDEX:I

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 953
    const-string v13, "GSM"

    goto/16 :goto_1
.end method

.method public getSpLTEApnFromDbSYSPROP(Landroid/content/Context;IZZ)Ljava/lang/String;
    .locals 19
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "row"    # I
    .param p3, "dummy"    # Z
    .param p4, "restoreAPNorBackupAPN"    # Z

    .prologue
    .line 1002
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 1004
    .local v12, "cr":Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numeric=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1008
    .local v4, "where":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/internal/telephony/lgdata/LGDBControl;->sProjection:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1011
    .local v15, "mCursor":Landroid/database/Cursor;
    if-nez v15, :cond_0

    .line 1013
    const-string v1, "LGDBControl"

    const-string v2, " Cursor is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const/16 v18, 0x0

    .line 1094
    :goto_0
    return-object v18

    .line 1016
    :cond_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1017
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 1018
    .local v11, "count":I
    const-string v1, "LGDBControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "now in the db for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \'s count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    move/from16 v0, p2

    if-gt v11, v0, :cond_1

    .line 1022
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1023
    const-string v18, "0"

    goto :goto_0

    .line 1025
    :cond_1
    move/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/database/Cursor;->move(I)Z

    .line 1027
    sget v1, Lcom/android/internal/telephony/lgdata/LGDBControl;->ID_INDEX:I

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1028
    .local v14, "key":Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 1029
    .local v17, "pos":I
    const-string v1, "LGDBControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "your pos"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    sget v1, Lcom/android/internal/telephony/lgdata/LGDBControl;->TYPE_INDEX:I

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Dummy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget v1, Lcom/android/internal/telephony/lgdata/LGDBControl;->TYPE_INDEX:I

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dummy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_3

    .line 1033
    const-string v1, "LGDBControl"

    const-string v2, "[DATA] Dummy APN return 0"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    const-string v18, "0"

    goto/16 :goto_0

    .line 1037
    :cond_3
    const-string v16, "LTE|EHRPD"

    .line 1038
    .local v16, "myBearer":Ljava/lang/String;
    sget v1, Lcom/android/internal/telephony/lgdata/LGDBControl;->BEARER_INDEX:I

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "14"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1040
    const-string v16, "LTE"

    .line 1051
    :cond_4
    :goto_1
    const/4 v13, 0x0

    .line 1052
    .local v13, "inactivityTime":I
    sget-object v1, Lcom/android/internal/telephony/lgdata/LGDBControl;->mfeatureset:Ljava/lang/String;

    const-string v2, "SPCSBASE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1054
    sget v1, Lcom/android/internal/telephony/lgdata/LGDBControl;->INACTIVITETIMER_INDEX:I

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1055
    const-string v1, "LGDBControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[bycho]inactivitytime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :cond_5
    sget v1, Lcom/android/internal/telephony/lgdata/LGDBControl;->TYPE_INDEX:I

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LGDBControl;->getAPNType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1059
    .local v8, "apnType":Ljava/lang/String;
    move-object v10, v8

    .line 1062
    .local v10, "convApnType":Ljava/lang/String;
    const-string v1, "default"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1063
    const-string v10, "internet"

    .line 1070
    :cond_6
    :goto_2
    sget v1, Lcom/android/internal/telephony/lgdata/LGDBControl;->IP_INDEX:I

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1072
    .local v7, "apnProtocol":Ljava/lang/String;
    move-object v9, v7

    .line 1073
    .local v9, "convApnProtocol":Ljava/lang/String;
    const-string v1, "IPV4V6"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1074
    const-string v9, "IPv4v6"

    .line 1081
    :cond_7
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->APN_INDEX:I

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->AUTH_TYPE_INDEX:I

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->USER_INDEX:I

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->PASSWORD_INDEX:I

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1092
    .local v18, "result":Ljava/lang/String;
    const-string v1, "LGDBControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getting info is !! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1042
    .end local v7    # "apnProtocol":Ljava/lang/String;
    .end local v8    # "apnType":Ljava/lang/String;
    .end local v9    # "convApnProtocol":Ljava/lang/String;
    .end local v10    # "convApnType":Ljava/lang/String;
    .end local v13    # "inactivityTime":I
    .end local v18    # "result":Ljava/lang/String;
    :cond_8
    sget v1, Lcom/android/internal/telephony/lgdata/LGDBControl;->BEARER_INDEX:I

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "13"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1044
    const-string v16, "EHRPD"

    goto/16 :goto_1

    .line 1046
    :cond_9
    sget v1, Lcom/android/internal/telephony/lgdata/LGDBControl;->BEARER_INDEX:I

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1048
    const-string v16, "GSM"

    goto/16 :goto_1

    .line 1064
    .restart local v8    # "apnType":Ljava/lang/String;
    .restart local v10    # "convApnType":Ljava/lang/String;
    .restart local v13    # "inactivityTime":I
    :cond_a
    const-string v1, "dun"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1065
    const-string v10, "pam"

    goto/16 :goto_2

    .line 1066
    :cond_b
    const-string v1, "fota"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1067
    const-string v10, "ota"

    goto/16 :goto_2

    .line 1075
    .restart local v7    # "apnProtocol":Ljava/lang/String;
    .restart local v9    # "convApnProtocol":Ljava/lang/String;
    :cond_c
    const-string v1, "IP"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1076
    const-string v9, "IPv4"

    goto/16 :goto_3

    .line 1077
    :cond_d
    const-string v1, "IPV6"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1078
    const-string v9, "IPv6"

    goto/16 :goto_3
.end method

.method public isEqualApnType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "db"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1463
    new-array v0, v3, [Ljava/lang/String;

    .line 1465
    .local v0, "apnTypeTemp":[Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 1467
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1469
    array-length v4, v0

    if-le v4, v2, :cond_2

    .line 1471
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 1473
    aget-object v4, v0, v1

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1475
    const-string v3, "LGDBControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "there are more than 1 type, isEqualApnType = true, found : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    .end local v1    # "i":I
    :goto_1
    return v2

    .line 1471
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 1480
    goto :goto_1

    .line 1484
    .end local v1    # "i":I
    :cond_2
    const-string v2, "LGDBControl"

    const-string v3, "there is only 1 type"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_3
    move v2, v3

    .line 1489
    goto :goto_1
.end method

.method public makedummy()Z
    .locals 12

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v7, 0x0

    .line 247
    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/LGDBControl;->mContext:Landroid/content/Context;

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 249
    .local v2, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    const-string v3, "0"

    .line 250
    .local v3, "mcc":Ljava/lang/String;
    const-string v4, "0"

    .line 252
    .local v4, "mnc":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v11, :cond_1

    .line 254
    :cond_0
    const-string v8, "LGDBControl"

    const-string v9, "[makedummy]home oper is bad. error "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :goto_0
    return v7

    .line 259
    :cond_1
    sget-object v8, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    .line 261
    .local v1, "length":I
    if-ge v1, v11, :cond_2

    .line 263
    const-string v8, "LGDBControl"

    const-string v9, "[makedummy]home oper is bad. error, length<5 "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 267
    :cond_2
    sget-object v8, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    invoke-virtual {v8, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 268
    sget-object v8, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    invoke-virtual {v8, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 270
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 272
    .local v6, "values":Landroid/content/ContentValues;
    const-string v8, "type"

    const-string v9, "Dummy"

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v8, "apn"

    const-string v9, "dummy"

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v8, "protocol"

    const-string v9, "IPV4V6"

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v8, "bearer"

    const-string v9, "0"

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v8, "authtype"

    const-string v9, "0"

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v8, "user"

    const-string v9, "ncc"

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v8, "password"

    const-string v9, "ncc"

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v8, "name"

    const-string v9, "none"

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v8, "mcc"

    invoke-virtual {v6, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v8, "mnc"

    invoke-virtual {v6, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v8, "numeric"

    sget-object v9, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/LGDBControl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 287
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v8, Lcom/android/internal/telephony/lgdata/LGDBControl;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 289
    .local v5, "result":Landroid/net/Uri;
    if-nez v5, :cond_3

    .line 291
    const-string v8, "LGDBControl"

    const-string v9, "make dummy fail"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 296
    :cond_3
    const-string v7, "LGDBControl"

    const-string v8, "make dummy success"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method public restoreAPNs()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 774
    const/4 v9, 0x0

    new-array v8, v9, [Ljava/lang/String;

    .line 775
    .local v8, "intiDBs":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 776
    .local v3, "fApnReader":Ljava/io/FileReader;
    const/4 v6, 0x0

    .line 780
    .local v6, "inApnFile":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    const-string v9, "/persist-lg/LGE_RC/apn_backup"

    invoke-direct {v4, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 781
    .end local v3    # "fApnReader":Ljava/io/FileReader;
    .local v4, "fApnReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 784
    .end local v6    # "inApnFile":Ljava/io/BufferedReader;
    .local v7, "inApnFile":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 785
    .local v0, "buffer":Ljava/lang/String;
    const-string v9, "LGDBControl"

    const-string v10, "!!!!![restoreAPNs]LGFactoryReset"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    if-eqz v0, :cond_5

    .line 789
    const-string v9, "LGDBControl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "!!!!![restoreAPNs]LGFactoryReset buffer :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const-string v9, " "

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 791
    const-string v9, "LGDBControl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "!!!!!LGFactoryReset intiDBs.length : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    array-length v9, v8

    if-lez v9, :cond_3

    .line 795
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    array-length v9, v8

    if-ge v5, v9, :cond_0

    .line 797
    add-int/lit8 v9, v5, -0x1

    aget-object v10, v8, v5

    const/4 v11, 0x1

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/internal/telephony/lgdata/LGDBControl;->setAPNString(ILjava/lang/String;Z)Z

    .line 795
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 799
    :cond_0
    const-string v9, "LGDBControl"

    const-string v10, "!!!!!LGFactoryReset: Restore APN table!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    .end local v5    # "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 811
    const/4 v6, 0x0

    .line 812
    .end local v7    # "inApnFile":Ljava/io/BufferedReader;
    .restart local v6    # "inApnFile":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 813
    const/4 v3, 0x0

    .line 815
    .end local v4    # "fApnReader":Ljava/io/FileReader;
    .restart local v3    # "fApnReader":Ljava/io/FileReader;
    :try_start_4
    new-instance v2, Ljava/io/File;

    const-string v9, "/persist-lg/LGE_RC/apn_backup"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 816
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 818
    sget-object v9, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/lgdata/LGDBControl;->setMMSType(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 827
    if-eqz v6, :cond_1

    .line 828
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 830
    :cond_1
    if-eqz v3, :cond_2

    .line 831
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 834
    .end local v0    # "buffer":Ljava/lang/String;
    .end local v2    # "f":Ljava/io/File;
    :cond_2
    :goto_2
    return-void

    .line 803
    .end local v3    # "fApnReader":Ljava/io/FileReader;
    .end local v6    # "inApnFile":Ljava/io/BufferedReader;
    .restart local v0    # "buffer":Ljava/lang/String;
    .restart local v4    # "fApnReader":Ljava/io/FileReader;
    .restart local v7    # "inApnFile":Ljava/io/BufferedReader;
    :cond_3
    :try_start_5
    const-string v9, "LGDBControl"

    const-string v10, "!!!!!!No Backup APNs apn num 0 "

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 821
    .end local v0    # "buffer":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v6, v7

    .end local v7    # "inApnFile":Ljava/io/BufferedReader;
    .restart local v6    # "inApnFile":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 823
    .end local v4    # "fApnReader":Ljava/io/FileReader;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "fApnReader":Ljava/io/FileReader;
    :goto_3
    :try_start_6
    const-string v9, "LGDBControl"

    const-string v10, "!!!!!!No Backup APNs: Do not need to apn backup"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 827
    if-eqz v6, :cond_4

    .line 828
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 830
    :cond_4
    if-eqz v3, :cond_2

    .line 831
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    goto :goto_2

    .line 808
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "fApnReader":Ljava/io/FileReader;
    .end local v6    # "inApnFile":Ljava/io/BufferedReader;
    .restart local v0    # "buffer":Ljava/lang/String;
    .restart local v4    # "fApnReader":Ljava/io/FileReader;
    .restart local v7    # "inApnFile":Ljava/io/BufferedReader;
    :cond_5
    :try_start_7
    const-string v9, "LGDBControl"

    const-string v10, "buffer is NULL"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 827
    .end local v0    # "buffer":Ljava/lang/String;
    :catchall_0
    move-exception v9

    move-object v6, v7

    .end local v7    # "inApnFile":Ljava/io/BufferedReader;
    .restart local v6    # "inApnFile":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fApnReader":Ljava/io/FileReader;
    .restart local v3    # "fApnReader":Ljava/io/FileReader;
    :goto_4
    if-eqz v6, :cond_6

    .line 828
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 830
    :cond_6
    if-eqz v3, :cond_7

    .line 831
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    :cond_7
    throw v9

    .line 827
    :catchall_1
    move-exception v9

    goto :goto_4

    .end local v3    # "fApnReader":Ljava/io/FileReader;
    .restart local v4    # "fApnReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v9

    move-object v3, v4

    .end local v4    # "fApnReader":Ljava/io/FileReader;
    .restart local v3    # "fApnReader":Ljava/io/FileReader;
    goto :goto_4

    .line 821
    :catch_1
    move-exception v1

    goto :goto_3

    .end local v3    # "fApnReader":Ljava/io/FileReader;
    .restart local v4    # "fApnReader":Ljava/io/FileReader;
    :catch_2
    move-exception v1

    move-object v3, v4

    .end local v4    # "fApnReader":Ljava/io/FileReader;
    .restart local v3    # "fApnReader":Ljava/io/FileReader;
    goto :goto_3
.end method

.method public restoreAPNs(Ljava/lang/String;)V
    .locals 12
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 838
    const/4 v9, 0x0

    new-array v7, v9, [Ljava/lang/String;

    .line 839
    .local v7, "intiDBs":[Ljava/lang/String;
    const-string v8, "/persist-lg/LGE_RC/"

    .line 840
    .local v8, "mFilePath":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 842
    const/4 v2, 0x0

    .line 843
    .local v2, "fApnReader":Ljava/io/FileReader;
    const/4 v5, 0x0

    .line 846
    .local v5, "inApnFile":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 847
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 848
    .end local v2    # "fApnReader":Ljava/io/FileReader;
    .local v3, "fApnReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 851
    .end local v5    # "inApnFile":Ljava/io/BufferedReader;
    .local v6, "inApnFile":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 852
    .local v0, "buffer":Ljava/lang/String;
    const-string v9, "LGDBControl"

    const-string v10, "!!!!![restoreAPNs]LGFactoryReset"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    if-eqz v0, :cond_5

    .line 856
    const-string v9, "LGDBControl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " !!!!![restoreAPNs]LGFactoryReset buffer :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    const-string v9, " "

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 858
    const-string v9, "LGDBControl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "!!!!!LGFactoryReset intiDBs.length : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    array-length v9, v7

    if-lez v9, :cond_3

    .line 862
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    array-length v9, v7

    if-ge v4, v9, :cond_0

    .line 864
    add-int/lit8 v9, v4, -0x1

    aget-object v10, v7, v4

    const/4 v11, 0x1

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/internal/telephony/lgdata/LGDBControl;->setAPNString(ILjava/lang/String;Z)Z

    .line 862
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 866
    :cond_0
    const-string v9, "LGDBControl"

    const-string v10, "!!!!!LGFactoryReset: Restore APN table!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    .end local v4    # "i":I
    :goto_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 878
    const/4 v5, 0x0

    .line 881
    .end local v6    # "inApnFile":Ljava/io/BufferedReader;
    .restart local v5    # "inApnFile":Ljava/io/BufferedReader;
    :try_start_3
    sget-object v9, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/lgdata/LGDBControl;->setMMSType(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 890
    if-eqz v5, :cond_1

    .line 891
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 893
    :cond_1
    if-eqz v3, :cond_2

    .line 894
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 898
    .end local v0    # "buffer":Ljava/lang/String;
    .end local v3    # "fApnReader":Ljava/io/FileReader;
    .end local v5    # "inApnFile":Ljava/io/BufferedReader;
    :cond_2
    :goto_2
    return-void

    .line 870
    .restart local v0    # "buffer":Ljava/lang/String;
    .restart local v3    # "fApnReader":Ljava/io/FileReader;
    .restart local v6    # "inApnFile":Ljava/io/BufferedReader;
    :cond_3
    :try_start_4
    const-string v9, "LGDBControl"

    const-string v10, "!!!!!!No Backup APNs apn num 0 "

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 884
    .end local v0    # "buffer":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v5, v6

    .end local v6    # "inApnFile":Ljava/io/BufferedReader;
    .restart local v5    # "inApnFile":Ljava/io/BufferedReader;
    move-object v2, v3

    .line 886
    .end local v3    # "fApnReader":Ljava/io/FileReader;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "fApnReader":Ljava/io/FileReader;
    :goto_3
    :try_start_5
    const-string v9, "LGDBControl"

    const-string v10, "!!!!!!No Backup APNs: Do not need to apn backup"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 890
    if-eqz v5, :cond_4

    .line 891
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 893
    :cond_4
    if-eqz v2, :cond_2

    .line 894
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    goto :goto_2

    .line 875
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "fApnReader":Ljava/io/FileReader;
    .end local v5    # "inApnFile":Ljava/io/BufferedReader;
    .restart local v0    # "buffer":Ljava/lang/String;
    .restart local v3    # "fApnReader":Ljava/io/FileReader;
    .restart local v6    # "inApnFile":Ljava/io/BufferedReader;
    :cond_5
    :try_start_6
    const-string v9, "LGDBControl"

    const-string v10, "buffer is NULL"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 890
    .end local v0    # "buffer":Ljava/lang/String;
    :catchall_0
    move-exception v9

    move-object v5, v6

    .end local v6    # "inApnFile":Ljava/io/BufferedReader;
    .restart local v5    # "inApnFile":Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3    # "fApnReader":Ljava/io/FileReader;
    .restart local v2    # "fApnReader":Ljava/io/FileReader;
    :goto_4
    if-eqz v5, :cond_6

    .line 891
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 893
    :cond_6
    if-eqz v2, :cond_7

    .line 894
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    :cond_7
    throw v9

    .line 890
    :catchall_1
    move-exception v9

    goto :goto_4

    .end local v2    # "fApnReader":Ljava/io/FileReader;
    .restart local v3    # "fApnReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v9

    move-object v2, v3

    .end local v3    # "fApnReader":Ljava/io/FileReader;
    .restart local v2    # "fApnReader":Ljava/io/FileReader;
    goto :goto_4

    .line 884
    :catch_1
    move-exception v1

    goto :goto_3

    .end local v2    # "fApnReader":Ljava/io/FileReader;
    .restart local v3    # "fApnReader":Ljava/io/FileReader;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "fApnReader":Ljava/io/FileReader;
    .restart local v2    # "fApnReader":Ljava/io/FileReader;
    goto :goto_3
.end method

.method public setAPNString(ILjava/lang/String;)Z
    .locals 4
    .param p1, "id"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 189
    const-string v1, "LGDBControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!! set APN Called "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lgdata/LGDBControl;->checkId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    const-string v1, "LGDBControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!! set APN Called "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "return false "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDBControl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p2, p1, v0}, Lcom/android/internal/telephony/lgdata/LGDBControl;->updateApnDB(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public setAPNString(ILjava/lang/String;Z)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "restoreAPNorBackupAPN"    # Z

    .prologue
    .line 201
    const-string v0, "LGDBControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! set APN Called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v0, "LGDBControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! set APN Called restoreAPNorBackupApn is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lgdata/LGDBControl;->checkId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    const-string v0, "LGDBControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! set APN Called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "return false "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v0, 0x0

    .line 209
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LGDBControl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/android/internal/telephony/lgdata/LGDBControl;->updateApnDB(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public setApnValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "item"    # Ljava/lang/String;
    .param p3, "values"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1421
    const/4 v0, 0x0

    .line 1423
    .local v0, "result":Z
    if-nez p3, :cond_1

    .line 1424
    const-string v2, "LGDBControl"

    const-string v3, "Return false because values is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    :cond_0
    :goto_0
    return v1

    .line 1428
    :cond_1
    const-string v2, "apn"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "carrier_enabled"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "max_conns"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "max_conns_time"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "wait_time"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1434
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/lgdata/LGDBControl;->updateApnValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1435
    const-string v1, "LGDBControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setApn type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " values is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1436
    goto :goto_0

    .line 1438
    :cond_3
    const-string v2, "protocol"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1440
    if-eqz p3, :cond_4

    .line 1441
    const-string v1, "IPv4"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1442
    const-string p3, "IP"

    .line 1452
    :cond_4
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/lgdata/LGDBControl;->updateApnValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1453
    const-string v1, "LGDBControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setApn type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " column is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1454
    goto/16 :goto_0

    .line 1443
    :cond_5
    const-string v1, "IPv6"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1444
    const-string p3, "IPV6"

    goto :goto_1

    .line 1445
    :cond_6
    const-string v1, "IPv4 and IPv6"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "IPv4v6"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1446
    :cond_7
    const-string p3, "IPV4V6"

    goto :goto_1

    .line 1448
    :cond_8
    const-string p3, "IPV4V6"

    goto :goto_1
.end method

.method public setMMSInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "MMSC"    # Ljava/lang/String;
    .param p3, "MMCProxy"    # Ljava/lang/String;
    .param p4, "MMSPort"    # Ljava/lang/String;

    .prologue
    .line 363
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 364
    .local v15, "values":Landroid/content/ContentValues;
    if-eqz p2, :cond_0

    .line 365
    const-string v2, "mmsc"

    move-object/from16 v0, p2

    invoke-virtual {v15, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_0
    if-eqz p3, :cond_1

    .line 368
    const-string v2, "mmsproxy"

    move-object/from16 v0, p3

    invoke-virtual {v15, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_1
    if-eqz p4, :cond_2

    .line 371
    const-string v2, "mmsport"

    move-object/from16 v0, p4

    invoke-virtual {v15, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :cond_2
    const/4 v13, 0x0

    .line 377
    .local v13, "retrunval":Z
    const-string v5, "type LIKE \'%default%\' OR type LIKE \'%mms%\'"

    .line 379
    .local v5, "where":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->mfeatureset:Ljava/lang/String;

    const-string v3, "VZWBASE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 380
    const-string v5, "type LIKE \'%mms%\'"

    .line 382
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/lgdata/LGDBControl;->sProjection:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 387
    .local v10, "mCursor":Landroid/database/Cursor;
    const-string v2, "LGDBControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMMSInfo where is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 389
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 390
    .local v12, "recordCount":I
    const-string v2, "LGDBControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMMSInfo recordCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 392
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_6

    .line 393
    sget v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->NUMERIC_INDEX:I

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 394
    .local v8, "dbNumeric":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 395
    sget v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->MMSC_INDEX:I

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->MMSPROXY_INDEX:I

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->MMSPORT_INDEX:I

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 397
    const-string v2, "LGDBControl"

    const-string v3, "setMMSInfo no change"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_4
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 399
    :cond_5
    sget v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->ID_INDEX:I

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 400
    .local v9, "key":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 401
    .local v11, "pos":I
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v6, v11

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 402
    .local v14, "url":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v14, v15, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 403
    const/4 v13, 0x1

    .line 404
    const-string v2, "LGDBControl"

    const-string v3, "setMMSInfo update apn"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 409
    .end local v8    # "dbNumeric":Ljava/lang/String;
    .end local v9    # "key":Ljava/lang/String;
    .end local v11    # "pos":I
    .end local v14    # "url":Landroid/net/Uri;
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 411
    .end local v12    # "recordCount":I
    :cond_7
    return v13
.end method

.method public setMMSType(Ljava/lang/String;)V
    .locals 17
    .param p1, "numeric"    # Ljava/lang/String;

    .prologue
    .line 316
    sget-object v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->mfeatureset:Ljava/lang/String;

    const-string v3, "SPCSBASE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 317
    const-string v2, "LGDBControl"

    const-string v3, "setMMSType isMMSType only work SPCSBASE TODO...temp"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 324
    .local v16, "values":Landroid/content/ContentValues;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric =\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND type LIKE \'%default%\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 326
    .local v5, "where":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/lgdata/LGDBControl;->sProjection:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 331
    .local v13, "mCursor":Landroid/database/Cursor;
    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 332
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 333
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_5

    .line 334
    const/4 v11, 0x0

    .line 335
    .local v11, "isMMSType":Z
    const/4 v2, 0x0

    new-array v9, v2, [Ljava/lang/String;

    .line 336
    .local v9, "apnTypeTemp":[Ljava/lang/String;
    sget v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->TYPE_INDEX:I

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 337
    .local v8, "apnType":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 338
    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 339
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    array-length v2, v9

    if-ge v10, v2, :cond_3

    .line 340
    const-string v2, "LGDBControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apnType :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v9, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    aget-object v2, v9, v10

    const-string v3, "mms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 342
    const/4 v11, 0x1

    .line 339
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 346
    .end local v10    # "i":I
    :cond_3
    const-string v2, "LGDBControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMMSType isMMSType :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    if-nez v11, :cond_4

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 349
    const-string v2, "type"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    sget v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->ID_INDEX:I

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 351
    .local v12, "key":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 352
    .local v14, "pos":I
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v6, v14

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    .line 353
    .local v15, "url":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/lgdata/LGDBControl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 354
    const-string v2, "LGDBControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMMSType :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    .end local v12    # "key":Ljava/lang/String;
    .end local v14    # "pos":I
    .end local v15    # "url":Landroid/net/Uri;
    :cond_4
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 358
    .end local v8    # "apnType":Ljava/lang/String;
    .end local v9    # "apnTypeTemp":[Ljava/lang/String;
    .end local v11    # "isMMSType":Z
    :cond_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1625
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "LGDBControl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1626
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateAPNString(ILjava/lang/String;)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 1106
    const-string v0, "LGDBControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! set APN Called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LGDBControl;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p1}, Lcom/android/internal/telephony/lgdata/LGDBControl;->updateApnDBForVZW(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public updateApnDB(Landroid/content/Context;Ljava/lang/String;IZ)Z
    .locals 21
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "Set_id"    # I
    .param p4, "restoreAPNorBackupAPN"    # Z

    .prologue
    .line 444
    const-string v2, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 446
    .local v13, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    const-string v2, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 448
    .local v16, "parm":[Ljava/lang/String;
    const-string v2, "LGDBControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parm length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, v16

    array-length v2, v0

    if-ge v9, v2, :cond_0

    .line 452
    const-string v2, "LGDBControl"

    aget-object v3, v16, v9

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 455
    :cond_0
    const-string v14, "0"

    .line 456
    .local v14, "mcc":Ljava/lang/String;
    const-string v15, "0"

    .line 458
    .local v15, "mnc":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    .line 460
    :cond_1
    const-string v2, "LGDBControl"

    const-string v3, "[updateApnDBupdateApnDB]home oper is bad. error "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 v2, 0x0

    .line 661
    :goto_1
    return v2

    .line 464
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    .line 466
    .local v11, "length":I
    const/4 v2, 0x5

    if-ge v11, v2, :cond_3

    .line 468
    const-string v2, "LGDBControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "home oper is bad. error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/4 v2, 0x0

    goto :goto_1

    .line 472
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 473
    sget-object v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 475
    const-string v2, "LGDBControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM Info reading Success "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 485
    .local v5, "where":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/lgdata/LGDBControl;->sProjection:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 488
    .local v12, "mCursor":Landroid/database/Cursor;
    if-nez v12, :cond_4

    .line 490
    const-string v2, "LGDBControl"

    const-string v3, " Cursor is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 494
    :cond_4
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 495
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 498
    .local v8, "count":I
    move/from16 v0, p3

    if-ge v8, v0, :cond_5

    .line 500
    const-string v2, "LGDBControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set id is bad id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 502
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 505
    :cond_5
    move/from16 v0, p3

    invoke-interface {v12, v0}, Landroid/database/Cursor;->move(I)Z

    .line 507
    sget v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->ID_INDEX:I

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 508
    .local v10, "key":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 509
    .local v17, "pos":I
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v17

    int-to-long v6, v0

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 511
    .local v19, "url":Landroid/net/Uri;
    const-string v2, "LGDBControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "numeric : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const-string v2, "LGDBControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "your pos "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 516
    .local v20, "values":Landroid/content/ContentValues;
    const/4 v2, 0x0

    aget-object v2, v16, v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 518
    const-string v2, "LGDBControl"

    const-string v3, "[updateApnDB]parm[0].equals(1)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const/4 v2, 0x1

    aget-object v2, v16, v2

    const-string v3, "ota"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 521
    const-string v2, "type"

    const-string v3, "fota"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v2, "LGDBControl"

    const-string v3, "Telephony.Carriers.TYPE:: ota ->fota  "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :goto_2
    const-string v2, "apn"

    const/4 v3, 0x2

    aget-object v3, v16, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const/4 v2, 0x3

    aget-object v2, v16, v2

    const-string v3, "IPV4V6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 544
    const-string v2, "protocol"

    const-string v3, "IPV4V6"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    :goto_3
    const/4 v2, 0x5

    aget-object v2, v16, v2

    const-string v3, "LTE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 562
    const-string v2, "bearer"

    const-string v3, "14"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    :goto_4
    sget-object v2, Lcom/android/internal/telephony/lgdata/LGDBControl;->mfeatureset:Ljava/lang/String;

    const-string v3, "SPCSBASE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 580
    const-string v2, "inactivetimer"

    const/4 v3, 0x4

    aget-object v3, v16, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    :cond_6
    if-eqz p4, :cond_7

    .line 586
    move-object/from16 v0, v16

    array-length v2, v0

    const/16 v3, 0xc

    if-le v2, v3, :cond_7

    .line 587
    const-string v2, "mmsc"

    const/16 v3, 0xa

    aget-object v3, v16, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v2, "mmsproxy"

    const/16 v3, 0xb

    aget-object v3, v16, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v2, "mmsport"

    const/16 v3, 0xc

    aget-object v3, v16, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string v2, "LGDBControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS backup MMSC "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    aget-object v4, v16, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const-string v2, "LGDBControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS backup MMSPROXY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xb

    aget-object v4, v16, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const-string v2, "LGDBControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS backup MMSPORT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xc

    aget-object v4, v16, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_7
    const-string v2, "authtype"

    const/4 v3, 0x6

    aget-object v3, v16, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v2, "user"

    const/4 v3, 0x7

    aget-object v3, v16, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v2, "password"

    const/16 v3, 0x8

    aget-object v3, v16, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string v2, "name"

    const/4 v3, 0x1

    aget-object v3, v16, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string v2, "mcc"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string v2, "mnc"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v2, "numeric"

    sget-object v3, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .line 659
    .local v18, "result":I
    const-string v2, "LGDBControl"

    const-string v3, "updata success : "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 661
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 524
    .end local v18    # "result":I
    :cond_8
    const/4 v2, 0x1

    aget-object v2, v16, v2

    const-string v3, "internet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 526
    const-string v2, "type"

    const-string v3, "default"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string v2, "LGDBControl"

    const-string v3, "Telephony.Carriers.TYPE:: internet ->default  "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 529
    :cond_9
    const/4 v2, 0x1

    aget-object v2, v16, v2

    const-string v3, "pam"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 531
    const-string v2, "type"

    const-string v3, "dun"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string v2, "LGDBControl"

    const-string v3, "Telephony.Carriers.TYPE:: pam ->dun"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 536
    :cond_a
    const-string v2, "type"

    const/4 v3, 0x1

    aget-object v3, v16, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 546
    :cond_b
    const/4 v2, 0x3

    aget-object v2, v16, v2

    const-string v3, "IPV4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x3

    aget-object v2, v16, v2

    const-string v3, "IP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 548
    :cond_c
    const-string v2, "protocol"

    const-string v3, "IP"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 550
    :cond_d
    const/4 v2, 0x3

    aget-object v2, v16, v2

    const-string v3, "IPV6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 552
    const-string v2, "protocol"

    const-string v3, "IPV6"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 556
    :cond_e
    const-string v2, "protocol"

    const-string v3, "IPV4V6"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 564
    :cond_f
    const/4 v2, 0x5

    aget-object v2, v16, v2

    const-string v3, "EHRPD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 566
    const-string v2, "bearer"

    const-string v3, "13"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 568
    :cond_10
    const/4 v2, 0x5

    aget-object v2, v16, v2

    const-string v3, "GSM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 570
    const-string v2, "bearer"

    const-string v3, "3"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 574
    :cond_11
    const-string v2, "bearer"

    const-string v3, "0"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 631
    :cond_12
    const/4 v2, 0x0

    aget-object v2, v16, v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 633
    const-string v2, "LGDBControl"

    const-string v3, "[bycho,updateApnDB]parm[0].equals(0)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const-string v2, "type"

    const-string v3, "Dummy"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v2, "apn"

    const-string v3, "dummy"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string v2, "protocol"

    const-string v3, "IPV4V6"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v2, "bearer"

    const-string v3, "0"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v2, "authtype"

    const-string v3, "1"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const-string v2, "user"

    const-string v3, "ncc"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v2, "password"

    const-string v3, "ncc"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string v2, "name"

    const-string v3, "none"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const-string v2, "mcc"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const-string v2, "mnc"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string v2, "numeric"

    sget-object v3, Lcom/android/internal/telephony/lgdata/LGDBControl;->networkOperator:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string v2, "LGDBControl"

    const-string v3, "delete success "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 651
    :cond_13
    const-string v2, "LGDBControl"

    const-string v3, "[bycho,updateApnDB]parm[0] else"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 653
    const/4 v2, 0x0

    goto/16 :goto_1
.end method
