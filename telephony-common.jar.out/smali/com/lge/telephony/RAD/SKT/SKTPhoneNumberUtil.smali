.class public Lcom/lge/telephony/RAD/SKT/SKTPhoneNumberUtil;
.super Ljava/lang/Object;
.source "SKTPhoneNumberUtil.java"


# static fields
.field private static final CALL_FEATURECODES_SKT:[Ljava/lang/String;

.field private static final CUSTOMER_CENTER_NUMBERS_SKT:[Ljava/lang/String;

.field public static final CUSTOMER_CENTER_NUMBER_TRANS_SKT:Ljava/lang/String; = "+82263439000"

.field private static final DBG:Z = false

.field private static final FOREIGN_AFFAIRS_TRADE_NUMBERS_SKT:[Ljava/lang/String;

.field public static final FOREIGN_AFFAIRS_TRADE_NUMBER_TRANS_SKT:Ljava/lang/String; = "+82232100404"

.field private static final KOREA_INT_PREFIX:[Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "SKTPhoneNumberUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "114"

    aput-object v1, v0, v3

    const-string v1, "010114"

    aput-object v1, v0, v4

    const-string v1, "011114"

    aput-object v1, v0, v5

    const-string v1, "017114"

    aput-object v1, v0, v6

    const-string v1, "0082114"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "+82114"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/telephony/RAD/SKT/SKTPhoneNumberUtil;->CUSTOMER_CENTER_NUMBERS_SKT:[Ljava/lang/String;

    .line 53
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "111"

    aput-object v1, v0, v3

    const-string v1, "112"

    aput-object v1, v0, v4

    const-string v1, "113"

    aput-object v1, v0, v5

    const-string v1, "117"

    aput-object v1, v0, v6

    const-string v1, "118"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "119"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "122"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "125"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/telephony/RAD/SKT/SKTPhoneNumberUtil;->FOREIGN_AFFAIRS_TRADE_NUMBERS_SKT:[Ljava/lang/String;

    .line 82
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "00700"

    aput-object v1, v0, v3

    const-string v1, "005"

    aput-object v1, v0, v4

    const-string v1, "002"

    aput-object v1, v0, v5

    const-string v1, "001"

    aput-object v1, v0, v6

    const-string v1, "00345"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "00365"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "00321"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/telephony/RAD/SKT/SKTPhoneNumberUtil;->KOREA_INT_PREFIX:[Ljava/lang/String;

    .line 142
    const/16 v0, 0x27

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*71"

    aput-object v1, v0, v3

    const-string v1, "*73"

    aput-object v1, v0, v4

    const-string v1, "**7890"

    aput-object v1, v0, v5

    const-string v1, "*90"

    aput-object v1, v0, v6

    const-string v1, "*23#"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "*230#"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "*72"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "*73"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "*51"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "*52"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "*50"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "*89"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "*32"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "*320"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "*88"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "***"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "1541"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "*680"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "*68"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "*77"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "*78"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "**7726"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "*22#"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "*80"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "*800"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "*56"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "*560"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "*58"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "*48"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "*480"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "*31"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "*310"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "*62"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "*61"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "*65"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "*63"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "##0565"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "**0303"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "##3355"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/telephony/RAD/SKT/SKTPhoneNumberUtil;->CALL_FEATURECODES_SKT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCallFeatureCodeAddedSkt(Ljava/lang/String;)Z
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v1

    .line 173
    :cond_1
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_1
    sget-object v2, Lcom/lge/telephony/RAD/SKT/SKTPhoneNumberUtil;->CALL_FEATURECODES_SKT:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 174
    sget-object v2, Lcom/lge/telephony/RAD/SKT/SKTPhoneNumberUtil;->CALL_FEATURECODES_SKT:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 175
    const/4 v1, 0x1

    goto :goto_0

    .line 173
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isCustomerCenterNumberSkt(Ljava/lang/String;)Z
    .locals 3
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v1

    .line 43
    :cond_1
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_1
    sget-object v2, Lcom/lge/telephony/RAD/SKT/SKTPhoneNumberUtil;->CUSTOMER_CENTER_NUMBERS_SKT:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 44
    sget-object v2, Lcom/lge/telephony/RAD/SKT/SKTPhoneNumberUtil;->CUSTOMER_CENTER_NUMBERS_SKT:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 45
    const/4 v1, 0x1

    goto :goto_0

    .line 43
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isForeignAffairsTradeNumberSkt(Ljava/lang/String;)Z
    .locals 3
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v1

    .line 71
    :cond_1
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_1
    sget-object v2, Lcom/lge/telephony/RAD/SKT/SKTPhoneNumberUtil;->FOREIGN_AFFAIRS_TRADE_NUMBERS_SKT:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 72
    sget-object v2, Lcom/lge/telephony/RAD/SKT/SKTPhoneNumberUtil;->FOREIGN_AFFAIRS_TRADE_NUMBERS_SKT:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    const/4 v1, 0x1

    goto :goto_0

    .line 71
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isKoreaIntPrefixAdded(Ljava/lang/String;)Z
    .locals 3
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v1

    .line 98
    :cond_1
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_1
    sget-object v2, Lcom/lge/telephony/RAD/SKT/SKTPhoneNumberUtil;->KOREA_INT_PREFIX:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 99
    sget-object v2, Lcom/lge/telephony/RAD/SKT/SKTPhoneNumberUtil;->KOREA_INT_PREFIX:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    const/4 v1, 0x1

    goto :goto_0

    .line 98
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 22
    const-string v0, "SKTPhoneNumberUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method

.method public static removeKoreaIntPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    .end local p0    # "phoneNumber":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 121
    .restart local p0    # "phoneNumber":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 122
    .local v1, "prefixLength":I
    const/4 v2, 0x0

    .line 124
    .local v2, "removedNumber":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_1
    sget-object v3, Lcom/lge/telephony/RAD/SKT/SKTPhoneNumberUtil;->KOREA_INT_PREFIX:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 125
    sget-object v3, Lcom/lge/telephony/RAD/SKT/SKTPhoneNumberUtil;->KOREA_INT_PREFIX:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 126
    sget-object v3, Lcom/lge/telephony/RAD/SKT/SKTPhoneNumberUtil;->KOREA_INT_PREFIX:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 131
    :cond_1
    if-lez v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    move-object p0, v2

    .line 137
    goto :goto_0

    .line 124
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 134
    :cond_3
    move-object v2, p0

    goto :goto_2
.end method
