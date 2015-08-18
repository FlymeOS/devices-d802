.class Lcom/lge/telephony/utils/MatchingDigitsHelper$MatchingDigitsMechanism;
.super Ljava/lang/Object;
.source "MatchingDigitsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/telephony/utils/MatchingDigitsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MatchingDigitsMechanism"
.end annotation


# static fields
.field private static final DIGITEL:Ljava/lang/String; = "Digitel"

.field private static final MNC_DIGITEL:Ljava/lang/String; = "02"

.field private static final MNC_MOVILNET:Ljava/lang/String; = "06"

.field private static final MNC_MOVISTAR:Ljava/lang/String; = "04"

.field private static final MOVILNET:Ljava/lang/String; = "Movilnet"

.field private static final MOVISTAR:Ljava/lang/String; = "Movistar"

.field private static final PREFIXES_DIGITEL:Ljava/lang/String; = "412"

.field private static final PREFIXES_MOVILNET:Ljava/lang/String; = "416;426"

.field private static final PREFIXES_MOVISTAR:Ljava/lang/String; = "414;424"

.field private static final VENEZUELA_DEFAULT_MATCHING_NUMBER:I = 0xa

.field public static final VENEZUELA_SECONDARY_MATCH_NUMBER:I = 0x7

.field private static sCurrentMnc:Ljava/lang/String;

.field private static sIsvenezuelaMatching:Z

.field private static sMatchingDigitsNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, -0x1

    sput v0, Lcom/lge/telephony/utils/MatchingDigitsHelper$MatchingDigitsMechanism;->sMatchingDigitsNumber:I

    .line 151
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/telephony/utils/MatchingDigitsHelper$MatchingDigitsMechanism;->sIsvenezuelaMatching:Z

    .line 152
    const-string v0, ""

    sput-object v0, Lcom/lge/telephony/utils/MatchingDigitsHelper$MatchingDigitsMechanism;->sCurrentMnc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-direct {p0}, Lcom/lge/telephony/utils/MatchingDigitsHelper$MatchingDigitsMechanism;->getNumericOperator()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "mccmnc":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v7, :cond_0

    .line 168
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "mcc":Ljava/lang/String;
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "mnc":Ljava/lang/String;
    const-string v3, "734"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    sput-boolean v3, Lcom/lge/telephony/utils/MatchingDigitsHelper$MatchingDigitsMechanism;->sIsvenezuelaMatching:Z

    .line 171
    sget-boolean v3, Lcom/lge/telephony/utils/MatchingDigitsHelper$MatchingDigitsMechanism;->sIsvenezuelaMatching:Z

    if-eqz v3, :cond_0

    .line 172
    sput-object v2, Lcom/lge/telephony/utils/MatchingDigitsHelper$MatchingDigitsMechanism;->sCurrentMnc:Ljava/lang/String;

    .line 173
    const/16 v3, 0xa

    sput v3, Lcom/lge/telephony/utils/MatchingDigitsHelper$MatchingDigitsMechanism;->sMatchingDigitsNumber:I

    .line 174
    const-string v3, "MatchingDigitsMechanism"

    const-string v6, "Mcc:%s | Mnc:%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v5

    aput-object v2, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .end local v0    # "mcc":Ljava/lang/String;
    .end local v2    # "mnc":Ljava/lang/String;
    :cond_0
    return-void

    .restart local v0    # "mcc":Ljava/lang/String;
    .restart local v2    # "mnc":Ljava/lang/String;
    :cond_1
    move v3, v5

    .line 170
    goto :goto_0
.end method

.method private getNumericOperator()Ljava/lang/String;
    .locals 5

    .prologue
    .line 182
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v2

    .line 183
    .local v2, "subId":J
    const-string v1, "gsm.sim.operator.numeric"

    const-string v4, ""

    invoke-static {v1, v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "numeric":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method getCurrentCarrier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    sget-object v0, Lcom/lge/telephony/utils/MatchingDigitsHelper$MatchingDigitsMechanism;->sCurrentMnc:Ljava/lang/String;

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const-string v0, "Digitel"

    .line 206
    :goto_0
    return-object v0

    .line 200
    :cond_0
    sget-object v0, Lcom/lge/telephony/utils/MatchingDigitsHelper$MatchingDigitsMechanism;->sCurrentMnc:Ljava/lang/String;

    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    const-string v0, "Movistar"

    goto :goto_0

    .line 203
    :cond_1
    sget-object v0, Lcom/lge/telephony/utils/MatchingDigitsHelper$MatchingDigitsMechanism;->sCurrentMnc:Ljava/lang/String;

    const-string v1, "06"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    const-string v0, "Movilnet"

    goto :goto_0

    .line 206
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method getMatchingDigitsNumber()I
    .locals 1

    .prologue
    .line 189
    sget v0, Lcom/lge/telephony/utils/MatchingDigitsHelper$MatchingDigitsMechanism;->sMatchingDigitsNumber:I

    return v0
.end method

.method getOperatorPrefixes()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    sget-object v0, Lcom/lge/telephony/utils/MatchingDigitsHelper$MatchingDigitsMechanism;->sCurrentMnc:Ljava/lang/String;

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const-string v0, "412"

    .line 219
    :goto_0
    return-object v0

    .line 213
    :cond_0
    sget-object v0, Lcom/lge/telephony/utils/MatchingDigitsHelper$MatchingDigitsMechanism;->sCurrentMnc:Ljava/lang/String;

    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    const-string v0, "414;424"

    goto :goto_0

    .line 216
    :cond_1
    sget-object v0, Lcom/lge/telephony/utils/MatchingDigitsHelper$MatchingDigitsMechanism;->sCurrentMnc:Ljava/lang/String;

    const-string v1, "06"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    const-string v0, "416;426"

    goto :goto_0

    .line 219
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method isVenezuela()Z
    .locals 1

    .prologue
    .line 193
    sget-boolean v0, Lcom/lge/telephony/utils/MatchingDigitsHelper$MatchingDigitsMechanism;->sIsvenezuelaMatching:Z

    return v0
.end method

.method preparePhoneNumberForMatching(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 223
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    const-string v1, ""

    .line 240
    :cond_0
    :goto_0
    return-object v1

    .line 227
    :cond_1
    invoke-virtual {p0, p1}, Lcom/lge/telephony/utils/MatchingDigitsHelper$MatchingDigitsMechanism;->prepareReallyDialableNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 229
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 230
    const-string v1, ""

    goto :goto_0

    .line 233
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 234
    .local v0, "numberLength":I
    move-object v1, p1

    .line 236
    .local v1, "numberToQuery":Ljava/lang/String;
    sget v2, Lcom/lge/telephony/utils/MatchingDigitsHelper$MatchingDigitsMechanism;->sMatchingDigitsNumber:I

    if-le v0, v2, :cond_0

    .line 237
    sget v2, Lcom/lge/telephony/utils/MatchingDigitsHelper$MatchingDigitsMechanism;->sMatchingDigitsNumber:I

    sub-int v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method prepareReallyDialableNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 244
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 245
    const-string v4, ""

    .line 256
    :goto_0
    return-object v4

    .line 247
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 248
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 250
    .local v3, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 251
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 252
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 253
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 256
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
