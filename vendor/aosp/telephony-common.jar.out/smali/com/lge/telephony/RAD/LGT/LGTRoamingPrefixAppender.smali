.class public Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;
.super Ljava/lang/Object;
.source "LGTRoamingPrefixAppender.java"

# interfaces
.implements Lcom/lge/telephony/RAD/RoamingPrefixAppender;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LGTRoamingPrefixAppender"

.field private static roamingPrefixAppender:Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;


# instance fields
.field private isSetAutodial:Z

.field private mCtx:Landroid/content/Context;

.field private mRadDialMode:I

.field private szContryNumber:Ljava/lang/String;

.field private szDialNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->roamingPrefixAppender:Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, "00"

    iput-object v0, p0, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    .line 82
    const-string v0, "82"

    iput-object v0, p0, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->szContryNumber:Ljava/lang/String;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->isSetAutodial:Z

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->mRadDialMode:I

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->mCtx:Landroid/content/Context;

    .line 93
    const-string v0, "Context pCtx is null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    iput-object p1, p0, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->mCtx:Landroid/content/Context;

    .line 95
    return-void
.end method

.method private getLengthBeforePT(Ljava/lang/String;)I
    .locals 4
    .param p1, "pPhoneNum"    # Ljava/lang/String;

    .prologue
    .line 288
    const/4 v1, 0x0

    .line 290
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 292
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

    .line 303
    :cond_0
    return v1

    .line 300
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getRoamingPrefixAppender(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/content/Intent;)Lcom/lge/telephony/RAD/RoamingPrefixAppender;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 57
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 58
    :cond_0
    sget-object v0, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->roamingPrefixAppender:Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;

    .line 74
    :goto_0
    return-object v0

    .line 62
    :cond_1
    sget-object v0, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->roamingPrefixAppender:Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;

    if-nez v0, :cond_2

    .line 64
    new-instance v0, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;

    invoke-direct {v0, p0}, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->roamingPrefixAppender:Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;

    .line 68
    :cond_2
    sget-object v0, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->roamingPrefixAppender:Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;

    invoke-direct {v0, p1}, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->readLGTSetting(Landroid/content/ContentResolver;)Z

    .line 71
    sget-object v0, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->roamingPrefixAppender:Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;

    invoke-direct {v0, p2}, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->setRadDialMode(Landroid/content/Intent;)V

    .line 74
    sget-object v0, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->roamingPrefixAppender:Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;

    goto :goto_0
.end method

.method private isRoaming()Z
    .locals 3

    .prologue
    .line 325
    iget-object v1, p0, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->mCtx:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 327
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
    .line 42
    const-string v0, "LGTRoamingPrefixAppender"

    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method

.method private readLGTSetting(Landroid/content/ContentResolver;)Z
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 355
    invoke-static {p1}, Lcom/lge/telephony/RAD/RADSettings$Roaming;->getIntCode(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    .line 356
    invoke-static {p1}, Lcom/lge/telephony/RAD/RADSettings$Roaming;->getNatCode(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->szContryNumber:Ljava/lang/String;

    .line 357
    invoke-static {p1}, Lcom/lge/telephony/RAD/RADSettings$Roaming;->getAutoUpdate(Landroid/content/ContentResolver;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->isSetAutodial:Z

    .line 359
    const/4 v0, 0x1

    return v0
.end method

.method private setRadDialMode(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 365
    const-string v0, "android.intent.extra.RAD_DIAL_MODE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->mRadDialMode:I

    .line 366
    return-void
.end method


# virtual methods
.method public appendPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "pPhoneNum"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 221
    const/4 v1, 0x0

    .line 222
    .local v1, "return_str":Ljava/lang/String;
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 224
    .local v0, "f":Ljava/util/Formatter;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    const/4 v2, 0x0

    .line 248
    :goto_0
    return-object v2

    .line 227
    :cond_0
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_1

    .line 229
    const-string v2, "appendPrefix case 1 : start by 0"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    const-string v2, "%s%s%s"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->szContryNumber:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 246
    :goto_1
    const-string v2, "appendPrefix : %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-direct {p0, v2, v3}, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v1

    .line 248
    goto :goto_0

    .line 238
    :cond_1
    const-string v2, "appendPrefix case 2 : not start by 0"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    const-string v2, "%s%s%s"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->szContryNumber:Ljava/lang/String;

    aput-object v4, v3, v6

    aput-object p1, v3, v7

    invoke-virtual {v0, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public isNeededToAddPrefix(Ljava/lang/String;)Z
    .locals 7
    .param p1, "pPhoneNum"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x30

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v0

    .line 119
    :cond_1
    const-string v2, "check LGT network - in LGT network, no prefix : %b"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->isRoaming()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    invoke-direct {p0}, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->isRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    const-string v2, "pPhoneNum(%s).length = %d"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 135
    const-string v2, "check feature code(first char : *, #) s[0]=%c"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-eq v2, v3, :cond_0

    .line 150
    const-string v2, "first two char is \'00\'  s[0]=%c, s[1]=%c"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v6, :cond_0

    .line 167
    :cond_2
    const-string v2, "if prefix is appended two : %b"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->isPrefixAddedNumber(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    invoke-virtual {p0, p1}, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->isPrefixAddedNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 174
    const-string v2, "isSetAutodial : %b, mRadDialMode : %d"

    new-array v3, v5, [Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->isSetAutodial:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    iget v4, p0, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->mRadDialMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    iget-boolean v2, p0, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->isSetAutodial:Z

    if-eqz v2, :cond_3

    .line 178
    iget v2, p0, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->mRadDialMode:I

    packed-switch v2, :pswitch_data_0

    .line 187
    const-string v2, "case  1-3"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v2, v0}, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 188
    goto/16 :goto_0

    .line 180
    :pswitch_0
    const-string v2, "case  1-1"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v2, v0}, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 181
    goto/16 :goto_0

    .line 183
    :pswitch_1
    const-string v1, "case  1-2"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 193
    :cond_3
    iget v2, p0, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->mRadDialMode:I

    packed-switch v2, :pswitch_data_1

    .line 203
    const-string v1, "case  2-3"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 196
    :pswitch_2
    const-string v2, "case  2-1"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v2, v0}, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 197
    goto/16 :goto_0

    .line 199
    :pswitch_3
    const-string v1, "case  2-2"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 193
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isPrefixAddedNumber(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pPhoneNum"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 256
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    :cond_0
    :goto_0
    return v0

    .line 261
    :cond_1
    iget-object v1, p0, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->szContryNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->szDialNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    invoke-direct {p0, p1}, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->getLengthBeforePT(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/lge/telephony/RAD/LGT/LGTRoamingPrefixAppender;->getLengthBeforePT(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    .line 269
    const/4 v0, 0x1

    goto :goto_0
.end method
