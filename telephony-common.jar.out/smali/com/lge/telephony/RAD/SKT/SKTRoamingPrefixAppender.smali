.class public Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;
.super Ljava/lang/Object;
.source "SKTRoamingPrefixAppender.java"

# interfaces
.implements Lcom/lge/telephony/RAD/RoamingPrefixAppender;


# static fields
.field private static final DEBUGGABLE:Z

.field private static final LOG_TAG:Ljava/lang/String; = "SKTRoamingPrefixAppender"

.field private static roamingPrefixAppender:Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;


# instance fields
.field private isSetAutodial:Z

.field private mCtx:Landroid/content/Context;

.field private mRadDialMode:I

.field private m_nRadMode:I

.field private szContryNumber:Ljava/lang/String;

.field private szDialNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 35
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->DEBUGGABLE:Z

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->roamingPrefixAppender:Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;

    return-void

    :cond_0
    move v0, v1

    .line 35
    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-string v0, "+"

    iput-object v0, p0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    .line 86
    const-string v0, "82"

    iput-object v0, p0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->szContryNumber:Ljava/lang/String;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->isSetAutodial:Z

    .line 89
    iput v1, p0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->mRadDialMode:I

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->mCtx:Landroid/content/Context;

    .line 95
    iput v1, p0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->m_nRadMode:I

    .line 99
    const-string v0, "Context pCtx is null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    iput-object p1, p0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->mCtx:Landroid/content/Context;

    .line 101
    return-void
.end method

.method public static getRoamingPrefixAppender(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/content/Intent;)Lcom/lge/telephony/RAD/RoamingPrefixAppender;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 53
    :cond_0
    sget-object v0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->roamingPrefixAppender:Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;

    .line 72
    :goto_0
    return-object v0

    .line 57
    :cond_1
    sget-object v0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->roamingPrefixAppender:Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;

    if-nez v0, :cond_2

    .line 58
    new-instance v0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;

    invoke-direct {v0, p0}, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->roamingPrefixAppender:Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;

    .line 62
    :cond_2
    sget-object v0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->roamingPrefixAppender:Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;

    invoke-direct {v0, p1}, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->readSKTSetting(Landroid/content/ContentResolver;)Z

    .line 65
    sget-object v0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->roamingPrefixAppender:Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;

    invoke-direct {v0, p2}, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->setRadDialMode(Landroid/content/Intent;)V

    .line 69
    sget-object v0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->roamingPrefixAppender:Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;

    invoke-direct {v0, p2}, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->setRadMode(Landroid/content/Intent;)V

    .line 72
    sget-object v0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->roamingPrefixAppender:Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;

    goto :goto_0
.end method

.method private isRoaming()Z
    .locals 2

    .prologue
    .line 401
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 407
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    return v1
.end method

.method private varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg_format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 38
    const-string v0, "SKTRoamingPrefixAppender"

    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method

.method private readSKTSetting(Landroid/content/ContentResolver;)Z
    .locals 5
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 422
    const-string v1, "+"

    iput-object v1, p0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    .line 428
    invoke-static {p1}, Lcom/lge/telephony/RAD/RADSettings$Roaming;->getNatCode(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->szContryNumber:Ljava/lang/String;

    .line 433
    const-string v1, "skt_roaming_autodial"

    invoke-static {p1, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 435
    .local v0, "settingRad":I
    sget-boolean v1, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readSKTSetting() settingRad:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 439
    :cond_1
    iput-boolean v4, p0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->isSetAutodial:Z

    .line 449
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "szDialNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", szContryNumber ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->szContryNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSetAutodial ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->isSetAutodial:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    return v4

    .line 441
    :cond_2
    iput-boolean v3, p0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->isSetAutodial:Z

    goto :goto_0
.end method

.method private setRadDialMode(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 455
    const-string v0, "android.intent.extra.RAD_DIAL_MODE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->mRadDialMode:I

    .line 456
    return-void
.end method

.method private setRadMode(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 460
    const-string v0, "intent.extra.RAD_MODE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->m_nRadMode:I

    .line 461
    return-void
.end method


# virtual methods
.method public appendPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "pPhoneNum"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 256
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 257
    sget-boolean v6, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->DEBUGGABLE:Z

    if-eqz v6, :cond_0

    .line 258
    const-string v6, "empty phone number, no prefix"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-direct {p0, v6, v7}, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    :cond_0
    const/4 v5, 0x0

    .line 323
    :cond_1
    :goto_0
    return-object v5

    .line 263
    :cond_2
    const/4 v5, 0x0

    .line 264
    .local v5, "return_str":Ljava/lang/String;
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2}, Ljava/util/Formatter;-><init>()V

    .line 266
    .local v2, "f":Ljava/util/Formatter;
    iget v6, p0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->m_nRadMode:I

    if-ne v6, v10, :cond_c

    .line 281
    invoke-static {p1}, Lcom/lge/telephony/RAD/SKT/SKTPhoneNumberUtil;->isKoreaIntPrefixAdded(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 282
    sget-boolean v6, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->DEBUGGABLE:Z

    if-eqz v6, :cond_3

    .line 283
    const-string v6, "appendPrefix case 6 : start by korea international prefix"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-direct {p0, v6, v7}, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    :cond_3
    invoke-static {p1}, Lcom/lge/telephony/RAD/SKT/SKTPhoneNumberUtil;->removeKoreaIntPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 320
    :goto_1
    sget-boolean v6, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->DEBUGGABLE:Z

    if-eqz v6, :cond_1

    .line 321
    const-string v6, "appendPrefix() m_nRadMode : %d, pPhoneNum : %s, appendPrefix : %s"

    new-array v7, v12, [Ljava/lang/Object;

    iget v8, p0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->m_nRadMode:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    aput-object p1, v7, v10

    aput-object v5, v7, v11

    invoke-direct {p0, v6, v7}, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 288
    :cond_4
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-ne v6, v7, :cond_6

    .line 289
    sget-boolean v6, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->DEBUGGABLE:Z

    if-eqz v6, :cond_5

    .line 290
    const-string v6, "appendPrefix case 1 : start by 0"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-direct {p0, v6, v7}, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    :cond_5
    const-string v6, "%s%s%s"

    new-array v7, v12, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->szContryNumber:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v2, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 294
    :cond_6
    sget-boolean v6, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->DEBUGGABLE:Z

    if-eqz v6, :cond_7

    .line 295
    const-string v6, "appendPrefix case 2 : not start by 0"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-direct {p0, v6, v7}, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    :cond_7
    const/4 v3, 0x0

    .line 298
    .local v3, "isArsNumber":Z
    const/4 v6, 0x5

    new-array v0, v6, [Ljava/lang/String;

    const-string v6, "1544"

    aput-object v6, v0, v9

    const-string v6, "1577"

    aput-object v6, v0, v10

    const-string v6, "1588"

    aput-object v6, v0, v11

    const-string v6, "1599"

    aput-object v6, v0, v12

    const/4 v6, 0x4

    const-string v7, "1644"

    aput-object v7, v0, v6

    .line 299
    .local v0, "arsPrefix":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "count":I
    :goto_2
    array-length v6, v0

    if-ge v1, v6, :cond_8

    .line 300
    aget-object v6, v0, v1

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 301
    const/4 v3, 0x1

    .line 306
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 307
    .local v4, "nPhoneNumLen":I
    const/4 v6, 0x7

    if-eq v4, v6, :cond_9

    const/16 v6, 0x8

    if-ne v4, v6, :cond_b

    if-nez v3, :cond_b

    .line 308
    :cond_9
    const-string v6, "%s%s10%s"

    new-array v7, v12, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->szContryNumber:Ljava/lang/String;

    aput-object v8, v7, v10

    aput-object p1, v7, v11

    invoke-virtual {v2, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 299
    .end local v4    # "nPhoneNumLen":I
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 310
    .restart local v4    # "nPhoneNumLen":I
    :cond_b
    const-string v6, "%s%s%s"

    new-array v7, v12, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->szContryNumber:Ljava/lang/String;

    aput-object v8, v7, v10

    aput-object p1, v7, v11

    invoke-virtual {v2, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 314
    .end local v0    # "arsPrefix":[Ljava/lang/String;
    .end local v1    # "count":I
    .end local v3    # "isArsNumber":Z
    .end local v4    # "nPhoneNumLen":I
    :cond_c
    sget-boolean v6, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->DEBUGGABLE:Z

    if-eqz v6, :cond_d

    .line 315
    const-string v6, "appendPrefix case 3 : not RAD_MODE_KOR"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-direct {p0, v6, v7}, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    :cond_d
    const-string v6, "%s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object p1, v7, v9

    invoke-virtual {v2, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1
.end method

.method public isNeededToAddPrefix(Ljava/lang/String;)Z
    .locals 8
    .param p1, "pPhoneNum"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x2a

    const/16 v6, 0x23

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 106
    sget-boolean v4, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->DEBUGGABLE:Z

    if-eqz v4, :cond_0

    .line 107
    const-string v4, "empty phone number, no prefix"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-direct {p0, v4, v5}, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    :cond_0
    :goto_0
    return v3

    .line 113
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 117
    .local v2, "nPhoneNumLen":I
    invoke-direct {p0}, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->isRoaming()Z

    move-result v5

    if-nez v5, :cond_2

    .line 118
    sget-boolean v4, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->DEBUGGABLE:Z

    if-eqz v4, :cond_0

    .line 119
    const-string v4, "check SKT network - in SKT network, no prefix"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-direct {p0, v4, v5}, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 125
    :cond_2
    invoke-static {p1}, Lcom/lge/telephony/RAD/SKT/SKTPhoneNumberUtil;->isCustomerCenterNumberSkt(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {p1}, Lcom/lge/telephony/RAD/SKT/SKTPhoneNumberUtil;->isForeignAffairsTradeNumberSkt(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 199
    :cond_3
    sget-boolean v5, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->DEBUGGABLE:Z

    if-eqz v5, :cond_4

    .line 200
    const-string v5, "isNeededToAddPrefix() isSetAutodial : %b, mRadDialMode : %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-boolean v7, p0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->isSetAutodial:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v3

    iget v7, p0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->mRadDialMode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-direct {p0, v5, v6}, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    :cond_4
    iget-boolean v5, p0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->isSetAutodial:Z

    if-eqz v5, :cond_e

    .line 203
    iget v5, p0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->mRadDialMode:I

    packed-switch v5, :pswitch_data_0

    .line 216
    sget-boolean v5, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->DEBUGGABLE:Z

    if-eqz v5, :cond_5

    .line 217
    const-string v5, "case  1-3"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v5, v3}, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    move v3, v4

    .line 219
    goto :goto_0

    .line 130
    :cond_6
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 131
    sget-boolean v4, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->DEBUGGABLE:Z

    if-eqz v4, :cond_0

    .line 132
    const-string v4, "emergency phone number, no prefix"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-direct {p0, v4, v5}, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 138
    :cond_7
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 139
    .local v0, "ch":C
    if-eq v0, v7, :cond_8

    if-ne v0, v6, :cond_9

    .line 140
    :cond_8
    sget-boolean v5, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->DEBUGGABLE:Z

    if-eqz v5, :cond_0

    .line 141
    const-string v5, "check feature code(first char : *, #) s[0] = %c"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-direct {p0, v5, v4}, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 165
    :cond_9
    const/4 v1, 0x0

    .local v1, "nCount":I
    :goto_1
    if-ge v1, v2, :cond_c

    .line 166
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 167
    const/16 v5, 0x30

    if-lt v0, v5, :cond_a

    const/16 v5, 0x39

    if-le v0, v5, :cond_b

    :cond_a
    const/16 v5, 0x2b

    if-eq v0, v5, :cond_b

    const/16 v5, 0x70

    if-eq v0, v5, :cond_b

    const/16 v5, 0x50

    if-eq v0, v5, :cond_b

    const/16 v5, 0x77

    if-eq v0, v5, :cond_b

    const/16 v5, 0x57

    if-eq v0, v5, :cond_b

    if-eq v0, v7, :cond_b

    if-eq v0, v6, :cond_b

    .line 168
    sget-boolean v4, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->DEBUGGABLE:Z

    if-eqz v4, :cond_0

    .line 169
    const-string v4, "include non phone number, no prefix"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-direct {p0, v4, v5}, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 165
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 187
    :cond_c
    invoke-virtual {p0, p1}, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->isPrefixAddedNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 188
    sget-boolean v4, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->DEBUGGABLE:Z

    if-eqz v4, :cond_0

    .line 189
    const-string v4, "prefix is appended already"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-direct {p0, v4, v5}, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 205
    .end local v0    # "ch":C
    .end local v1    # "nCount":I
    :pswitch_0
    sget-boolean v5, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->DEBUGGABLE:Z

    if-eqz v5, :cond_d

    .line 206
    const-string v5, "case  1-1"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v5, v3}, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    move v3, v4

    .line 208
    goto/16 :goto_0

    .line 210
    :pswitch_1
    sget-boolean v4, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->DEBUGGABLE:Z

    if-eqz v4, :cond_0

    .line 211
    const-string v4, "case  1-2"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-direct {p0, v4, v5}, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 222
    :cond_e
    iget v5, p0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->mRadDialMode:I

    packed-switch v5, :pswitch_data_1

    .line 235
    sget-boolean v4, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->DEBUGGABLE:Z

    if-eqz v4, :cond_0

    .line 236
    const-string v4, "case  2-3"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-direct {p0, v4, v5}, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 224
    :pswitch_2
    sget-boolean v5, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->DEBUGGABLE:Z

    if-eqz v5, :cond_f

    .line 225
    const-string v5, "case  2-1"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v5, v3}, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    move v3, v4

    .line 227
    goto/16 :goto_0

    .line 229
    :pswitch_3
    sget-boolean v4, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->DEBUGGABLE:Z

    if-eqz v4, :cond_0

    .line 230
    const-string v4, "case  2-2"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-direct {p0, v4, v5}, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 222
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isPrefixAddedNumber(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pPhoneNum"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 330
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 331
    sget-boolean v3, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    .line 332
    const-string v3, "empty phone number, no prefix"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-direct {p0, v3, v4}, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    :cond_0
    :goto_0
    return v2

    .line 338
    :cond_1
    invoke-static {p1}, Lcom/lge/telephony/RAD/SKT/SKTPhoneNumberUtil;->isKoreaIntPrefixAdded(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 344
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 347
    .local v1, "nPhoneNumLen":I
    const/4 v0, 0x0

    .local v0, "nCount":I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 348
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_3

    .line 349
    sget-boolean v4, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->DEBUGGABLE:Z

    if-eqz v4, :cond_2

    .line 350
    const-string v4, "include international symbol \'+\'"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v4, v2}, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move v2, v3

    .line 352
    goto :goto_0

    .line 347
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 356
    :cond_4
    const-string v4, "00"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v3

    .line 357
    goto :goto_0

    .line 360
    :cond_5
    iget-object v4, p0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 361
    iget-object v4, p0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->szContryNumber:Ljava/lang/String;

    iget-object v5, p0, Lcom/lge/telephony/RAD/SKT/SKTRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 362
    goto :goto_0
.end method
