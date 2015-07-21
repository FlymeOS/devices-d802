.class public Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;
.super Ljava/lang/Object;
.source "LGTGlobalRoamingPrefixAppender.java"

# interfaces
.implements Lcom/lge/telephony/RAD/RoamingPrefixAppender;


# static fields
.field private static final DBG:Z = true

.field private static final DEBUGGABLE:Z

.field private static final DEFAULT_SZCOUNTRYCODE:Ljava/lang/String; = "82"

.field private static final DEFAULT_SZDIALCODE:Ljava/lang/String; = "+"

.field private static final LOG:Ljava/lang/String; = "LGTGlobalRoamingPrefixAppender"

.field private static roamingPrefixAppender:Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;


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

    .line 37
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->DEBUGGABLE:Z

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->roamingPrefixAppender:Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;

    return-void

    :cond_0
    move v0, v1

    .line 37
    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "+"

    iput-object v0, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    .line 43
    const-string v0, "82"

    iput-object v0, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->szContryNumber:Ljava/lang/String;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->isSetAutodial:Z

    .line 48
    iput v1, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->mRadDialMode:I

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->mCtx:Landroid/content/Context;

    .line 56
    iput v1, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->m_nRadMode:I

    .line 97
    const-string v0, "Context pCtx is null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    iput-object p1, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->mCtx:Landroid/content/Context;

    .line 99
    return-void
.end method

.method private getLengthBeforePT(Ljava/lang/String;)I
    .locals 4
    .param p1, "pPhoneNum"    # Ljava/lang/String;

    .prologue
    .line 448
    const/4 v1, 0x0

    .line 450
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 452
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x50

    if-eq v2, v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x57

    if-eq v2, v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x70

    if-eq v2, v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x77

    if-ne v2, v3, :cond_1

    .line 463
    :cond_0
    return v1

    .line 460
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getRoamingPrefixAppender(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/content/Intent;)Lcom/lge/telephony/RAD/RoamingPrefixAppender;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 72
    :cond_0
    sget-object v0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->roamingPrefixAppender:Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;

    .line 92
    :goto_0
    return-object v0

    .line 76
    :cond_1
    sget-object v0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->roamingPrefixAppender:Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;

    if-nez v0, :cond_2

    .line 78
    new-instance v0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;

    invoke-direct {v0, p0}, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->roamingPrefixAppender:Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;

    .line 82
    :cond_2
    sget-object v0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->roamingPrefixAppender:Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;

    invoke-direct {v0, p1}, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->readLGTSetting(Landroid/content/ContentResolver;)Z

    .line 85
    sget-object v0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->roamingPrefixAppender:Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;

    invoke-direct {v0, p2}, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->setRadDialMode(Landroid/content/Intent;)V

    .line 92
    sget-object v0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->roamingPrefixAppender:Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;

    goto :goto_0
.end method

.method private isRoaming()Z
    .locals 6

    .prologue
    .line 472
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 473
    .local v0, "isRoaming":Z
    const/4 v1, 0x0

    .line 474
    .local v1, "isUsimRoaming":Z
    const-string v3, "persist.radio.camped_mccmnc"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 477
    .local v2, "usimMccMnc":Ljava/lang/String;
    const-string v3, "LGTGlobalRoamingPrefixAppender"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRoaming = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", usimMccMnc ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const-string v3, "450"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 481
    const/4 v1, 0x1

    .line 483
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 484
    :cond_1
    const/4 v3, 0x1

    .line 486
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg_format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 534
    const-string v0, "LGTGlobalRoamingPrefixAppender"

    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return-void
.end method

.method private readLGTSetting(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 514
    const-string v0, "+"

    iput-object v0, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    .line 515
    invoke-static {p1}, Lcom/lge/telephony/RAD/RADSettings$Roaming;->getNatCode(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->szContryNumber:Ljava/lang/String;

    .line 516
    invoke-static {p1}, Lcom/lge/telephony/RAD/RADSettings$Roaming;->getAutoUpdate(Landroid/content/ContentResolver;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->isSetAutodial:Z

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "szDialNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", szContryNumber ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->szContryNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSetAutodial ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->isSetAutodial:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    const/4 v0, 0x1

    return v0
.end method

.method private setRadDialMode(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 527
    const-string v0, "android.intent.extra.RAD_DIAL_MODE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->mRadDialMode:I

    .line 528
    return-void
.end method


# virtual methods
.method public appendPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "pPhoneNum"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 298
    const/4 v1, 0x0

    .line 299
    .local v1, "return_str":Ljava/lang/String;
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 302
    .local v0, "f":Ljava/util/Formatter;
    iget-object v2, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->szContryNumber:Ljava/lang/String;

    .line 303
    .local v2, "tempCountry":Ljava/lang/String;
    iget v4, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->mRadDialMode:I

    if-ne v4, v6, :cond_0

    .line 304
    const-string v2, "82"

    .line 308
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->isNeededToAddPrefix(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, p1

    .line 408
    :goto_0
    return-object v4

    .line 311
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 312
    const-string v4, ""

    goto :goto_0

    .line 314
    :cond_2
    iget-object v4, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 316
    iget-object v4, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 317
    iget-object v4, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 325
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appendPrefixp() : Update pPhoneNum = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,m_nRadMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->m_nRadMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , tempCountry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-direct {p0, v4, v5}, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    invoke-static {p1}, Lcom/lge/telephony/RAD/LGT/LGTPhoneNumberUtil;->isKoreaIntPrefixAdded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 359
    const-string v4, "appendPrefix case (int prefix) : start by korea international prefix"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-direct {p0, v4, v5}, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    invoke-static {p1}, Lcom/lge/telephony/RAD/LGT/LGTPhoneNumberUtil;->removeKoreaIntPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 406
    :goto_1
    const-string v4, "appendPrefix : %s"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-direct {p0, v4, v5}, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v1

    .line 408
    goto :goto_0

    .line 364
    :cond_4
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-ne v4, v5, :cond_5

    .line 368
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appendPrefix case 1 : start by 0, szDialNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,tempCountry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-direct {p0, v4, v5}, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    const-string v4, "%s%s%s"

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    aput-object v6, v5, v7

    aput-object v2, v5, v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v0, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 374
    :cond_5
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_7

    .line 376
    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 377
    .local v3, "tempPhoneNum":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->isNeededToAddPrefix(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 380
    const-string v4, "appendPrefix case 3 : start by +CountryCode"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-direct {p0, v4, v5}, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    const-string v4, "%s%s"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    aput-object v6, v5, v7

    aput-object v3, v5, v8

    invoke-virtual {v0, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 387
    :cond_6
    const-string v4, "appendPrefix case 4 : start by +"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-direct {p0, v4, v5}, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    const-string v4, "%s%s%s"

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    aput-object v6, v5, v7

    aput-object v2, v5, v8

    aput-object v3, v5, v9

    invoke-virtual {v0, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 398
    .end local v3    # "tempPhoneNum":Ljava/lang/String;
    :cond_7
    const-string v4, "appendPrefix case 2 : not start by 0"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-direct {p0, v4, v5}, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    const-string v4, "%s%s%s"

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    aput-object v6, v5, v7

    aput-object v2, v5, v8

    aput-object p1, v5, v9

    invoke-virtual {v0, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method

.method public isNeededToAddPrefix(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pPhoneNum"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    const-string v2, "check LGT network - in LGT network, no prefix : %b"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->isRoaming()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    invoke-direct {p0}, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->isRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    invoke-static {p1}, Lcom/lge/telephony/RAD/LGT/LGTPhoneNumberUtil;->isCustomerCenterNumberLgt(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1}, Lcom/lge/telephony/RAD/LGT/LGTPhoneNumberUtil;->isForeignAffairsTradeNumberLgt(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 230
    :cond_2
    const-string v2, "isSetAutodial : %b, mRadDialMode : %d"

    new-array v3, v5, [Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->isSetAutodial:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    iget v4, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->mRadDialMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    iget-boolean v2, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->isSetAutodial:Z

    if-eqz v2, :cond_4

    .line 235
    iget v2, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->mRadDialMode:I

    packed-switch v2, :pswitch_data_0

    .line 259
    const-string v2, "case  1-3"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v2, v0}, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 261
    goto :goto_0

    .line 152
    :cond_3
    const-string v2, "pPhoneNum(%s).length = %d"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 162
    const-string v2, "check feature code(first char : *, #) s[0]=%c"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-eq v2, v3, :cond_0

    .line 194
    const-string v2, "if prefix is appended two : %b"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->isPrefixAddedNumber(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    invoke-virtual {p0, p1}, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->isPrefixAddedNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_0

    .line 238
    :pswitch_0
    const-string v2, "case  1-1"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v2, v0}, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 240
    goto/16 :goto_0

    .line 244
    :pswitch_1
    const-string v1, "case  1-2"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 251
    :pswitch_2
    const-string v2, "case  1-4"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v2, v0}, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 253
    goto/16 :goto_0

    .line 264
    :cond_4
    iget v2, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->mRadDialMode:I

    packed-switch v2, :pswitch_data_1

    .line 288
    const-string v1, "case  2-3"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 267
    :pswitch_3
    const-string v2, "case  2-1"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v2, v0}, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 269
    goto/16 :goto_0

    .line 273
    :pswitch_4
    const-string v1, "case  2-2"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 280
    :pswitch_5
    const-string v2, "case  1-4"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v2, v0}, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 282
    goto/16 :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 264
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isPrefixAddedNumber(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pPhoneNum"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 416
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    :cond_0
    :goto_0
    return v0

    .line 421
    :cond_1
    iget-object v1, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->szContryNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/lge/telephony/RAD/LGT/LGTGlobalRoamingPrefixAppender;->szContryNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    .line 432
    const/4 v0, 0x1

    goto :goto_0
.end method
