.class public Lcom/android/internal/telephony/PlmnListParser;
.super Ljava/lang/Object;
.source "PlmnListParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PlmnListParser$PlmnData;
    }
.end annotation


# static fields
.field private static final ATTR_GID:Ljava/lang/String; = "gid"

.field private static final ATTR_IMSI:Ljava/lang/String; = "imsi"

.field private static final ATTR_LONG_NAME:Ljava/lang/String; = "long_name"

.field private static final ATTR_MCC:Ljava/lang/String; = "mcc"

.field private static final ATTR_MNC:Ljava/lang/String; = "mnc"

.field private static final ATTR_SHORT_NAME:Ljava/lang/String; = "short_name"

.field private static final ATTR_SPN:Ljava/lang/String; = "spn"

.field private static final CUPSS_DIR:Ljava/lang/String;

.field private static final CUPSS_MCC_MNC_PLMNS_FILE:Ljava/lang/String; = "/config/plmns-mcc%s-mnc%s.xml"

.field private static final CUPSS_MCC_PLMNS_FILE:Ljava/lang/String; = "/config/plmns-mcc%s.xml"

.field private static final CUPSS_PLMNS_FILE:Ljava/lang/String; = "/config/plmns.xml"

.field private static final ELEMENT_NETWORK:Ljava/lang/String; = "network"

.field private static final ELEMENT_PLMNS:Ljava/lang/String; = "plmns"

.field private static final ELEMENT_SIM:Ljava/lang/String; = "siminfo"

.field private static final LOG_TAG:Ljava/lang/String; = "PlmnListParser"

.field private static final PLMNS_FILE:Ljava/lang/String; = "etc/plmns.xml"

.field private static mInstance:Lcom/android/internal/telephony/PlmnListParser;

.field private static mIsSimAvailable:Z

.field private static mPlmnMCC:Ljava/lang/String;

.field private static mPlmnMNC:Ljava/lang/String;

.field private static mPlmnMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/PlmnListParser$PlmnData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    const-string v0, "ro.lge.capp_cupss.rootdir"

    const-string v1, "/cust"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/PlmnListParser;->CUPSS_DIR:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/PlmnListParser;->mIsSimAvailable:Z

    .line 63
    sput-object v2, Lcom/android/internal/telephony/PlmnListParser;->mInstance:Lcom/android/internal/telephony/PlmnListParser;

    .line 64
    sput-object v2, Lcom/android/internal/telephony/PlmnListParser;->mPlmnMap:Ljava/util/Map;

    .line 65
    sput-object v2, Lcom/android/internal/telephony/PlmnListParser;->mPlmnMCC:Ljava/lang/String;

    .line 66
    sput-object v2, Lcom/android/internal/telephony/PlmnListParser;->mPlmnMNC:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/PlmnListParser;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/internal/telephony/PlmnListParser;->mInstance:Lcom/android/internal/telephony/PlmnListParser;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/android/internal/telephony/PlmnListParser;

    invoke-direct {v0}, Lcom/android/internal/telephony/PlmnListParser;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PlmnListParser;->mInstance:Lcom/android/internal/telephony/PlmnListParser;

    .line 92
    sget-object v0, Lcom/android/internal/telephony/PlmnListParser;->mInstance:Lcom/android/internal/telephony/PlmnListParser;

    invoke-direct {v0}, Lcom/android/internal/telephony/PlmnListParser;->parsePlmnsList()V

    .line 95
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/PlmnListParser;->mIsSimAvailable:Z

    if-nez v0, :cond_1

    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    sget-object v0, Lcom/android/internal/telephony/PlmnListParser;->mInstance:Lcom/android/internal/telephony/PlmnListParser;

    invoke-direct {v0}, Lcom/android/internal/telephony/PlmnListParser;->parsePlmnsList()V

    .line 98
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/PlmnListParser;->mIsSimAvailable:Z

    .line 101
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PlmnListParser;->mInstance:Lcom/android/internal/telephony/PlmnListParser;

    return-object v0
.end method

.method private isCorrectImsi(Ljava/lang/String;)Z
    .locals 3
    .param p1, "candi"    # Ljava/lang/String;

    .prologue
    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, "i":I
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 307
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    if-eq v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x32

    if-eq v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x33

    if-eq v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x34

    if-eq v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x35

    if-eq v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x36

    if-eq v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x37

    if-eq v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x38

    if-eq v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-ne v1, v2, :cond_1

    .line 306
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    :cond_1
    const/4 v1, 0x0

    .line 322
    :goto_1
    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private isImsiMatch(Ljava/lang/String;)Z
    .locals 6
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 279
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "simImsi":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-nez v2, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v3

    .line 283
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 284
    .local v1, "length":I
    const/4 v0, 0x0

    .line 285
    .local v0, "index":I
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PlmnListParser;->isCorrectImsi(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PlmnListParser;->isCorrectImsi(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 287
    :cond_2
    const-string v4, "PlmnListParser"

    const-string v5, "IMSI information fail : IMSI information is malformed!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 290
    :cond_3
    :goto_1
    sub-int v4, v1, v0

    if-lez v4, :cond_5

    .line 291
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x78

    if-ne v4, v5, :cond_0

    .line 293
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 298
    :cond_5
    const-string v3, "PlmnListParser"

    const-string v4, "IMSI matches!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private isMatchingSimProfile(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "mcc"    # Ljava/lang/String;
    .param p3, "mnc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 249
    const-string v8, "gsm.sim.operator.numeric"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "simOperator":Ljava/lang/String;
    new-instance v8, Lcom/lge/uicc/LGUiccCard;

    invoke-direct {v8}, Lcom/lge/uicc/LGUiccCard;-><init>()V

    invoke-virtual {v8}, Lcom/lge/uicc/LGUiccCard;->getGid1()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "simGid":Ljava/lang/String;
    const-string v8, "gsm.sim.operator.alpha"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "simSpn":Ljava/lang/String;
    const-string v8, "READY"

    const-string v9, "gsm.sim.state"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 255
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x5

    if-lt v8, v9, :cond_3

    const-string v8, "siminfo"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 257
    const-string v8, "imsi"

    invoke-interface {p1, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, "xmlImsi":Ljava/lang/String;
    const-string v8, "gid"

    invoke-interface {p1, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "xmlGid":Ljava/lang/String;
    const-string v8, "spn"

    invoke-interface {p1, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, "xmlSpn":Ljava/lang/String;
    const-string v8, "PlmnListParser"

    const-string v9, "Check SIM matches!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const-string v8, "PlmnListParser"

    const-string v9, "SIM GID = %s, SIM IMSI = %s, SIM SPN = %s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v4, v10, v7

    aput-object v3, v10, v6

    const/4 v11, 0x2

    aput-object v5, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_0
    if-eqz v2, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/PlmnListParser;->isImsiMatch(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    if-nez v3, :cond_3

    if-nez v5, :cond_3

    if-nez v4, :cond_3

    .line 275
    .end local v3    # "xmlGid":Ljava/lang/String;
    .end local v4    # "xmlImsi":Ljava/lang/String;
    .end local v5    # "xmlSpn":Ljava/lang/String;
    :cond_2
    :goto_0
    return v6

    :cond_3
    move v6, v7

    goto :goto_0
.end method

.method private loadPlmnData(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/telephony/PlmnListParser$PlmnData;
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 182
    const-string v1, "network"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 184
    const-string v1, "mcc"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "mcc":Ljava/lang/String;
    const-string v1, "mnc"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, "mnc":Ljava/lang/String;
    const-string v1, "long_name"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, "longName":Ljava/lang/String;
    const-string v1, "short_name"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 188
    .local v5, "shortName":Ljava/lang/String;
    sput-object v2, Lcom/android/internal/telephony/PlmnListParser;->mPlmnMCC:Ljava/lang/String;

    .line 189
    sput-object v3, Lcom/android/internal/telephony/PlmnListParser;->mPlmnMNC:Ljava/lang/String;

    .line 190
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 191
    .local v8, "depth":I
    const-string v1, "PlmnListParser"

    const-string v11, "Getting depth"

    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    :goto_0
    invoke-static {p1, v8}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    const-string v1, "PlmnListParser"

    const-string v11, "MVNO SIM Profile Detected!!"

    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v1, "siminfo"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    const-string v1, "mcc"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 197
    .local v9, "simMcc":Ljava/lang/String;
    const-string v1, "mnc"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 199
    .local v10, "simMnc":Ljava/lang/String;
    invoke-direct {p0, p1, v9, v10}, Lcom/android/internal/telephony/PlmnListParser;->isMatchingSimProfile(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    const-string v1, "long_name"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 201
    .local v6, "altLongName":Ljava/lang/String;
    const-string v1, "short_name"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 202
    .local v7, "altShortName":Ljava/lang/String;
    move-object v4, v6

    .line 203
    move-object v5, v7

    goto :goto_0

    .line 207
    .end local v6    # "altLongName":Ljava/lang/String;
    .end local v7    # "altShortName":Ljava/lang/String;
    .end local v9    # "simMcc":Ljava/lang/String;
    .end local v10    # "simMnc":Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/PlmnListParser$PlmnData;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PlmnListParser$PlmnData;-><init>(Lcom/android/internal/telephony/PlmnListParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .end local v2    # "mcc":Ljava/lang/String;
    .end local v3    # "mnc":Ljava/lang/String;
    .end local v4    # "longName":Ljava/lang/String;
    .end local v5    # "shortName":Ljava/lang/String;
    .end local v8    # "depth":I
    :cond_2
    return-object v0
.end method

.method private parsePlmnsList()V
    .locals 9

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/internal/telephony/PlmnListParser;->resolveBestPlmnFile()Ljava/io/File;

    move-result-object v4

    .line 134
    .local v4, "plmnFile":Ljava/io/File;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    const/4 v5, 0x0

    .line 144
    .local v5, "reader":Ljava/io/FileReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .end local v5    # "reader":Ljava/io/FileReader;
    .local v6, "reader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 147
    .local v1, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 148
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 150
    const-string v7, "plmns"

    invoke-static {v3, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 154
    :goto_1
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 156
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/PlmnListParser;->loadPlmnData(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/telephony/PlmnListParser$PlmnData;

    move-result-object v2

    .line 158
    .local v2, "item":Lcom/android/internal/telephony/PlmnListParser$PlmnData;
    if-eqz v2, :cond_3

    .line 160
    sget-object v7, Lcom/android/internal/telephony/PlmnListParser;->mPlmnMap:Ljava/util/Map;

    if-nez v7, :cond_2

    .line 161
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lcom/android/internal/telephony/PlmnListParser;->mPlmnMap:Ljava/util/Map;

    .line 164
    :cond_2
    sget-object v7, Lcom/android/internal/telephony/PlmnListParser;->mPlmnMap:Ljava/util/Map;

    iget-object v8, v2, Lcom/android/internal/telephony/PlmnListParser$PlmnData;->numeric:Ljava/lang/String;

    invoke-interface {v7, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 169
    .end local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2    # "item":Lcom/android/internal/telephony/PlmnListParser$PlmnData;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    move-object v5, v6

    .line 170
    .end local v6    # "reader":Ljava/io/FileReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :goto_2
    :try_start_2
    const-string v7, "PlmnListParser"

    const-string v8, "Could not find plmns file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    if-eqz v5, :cond_0

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v7

    goto :goto_0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v2    # "item":Lcom/android/internal/telephony/PlmnListParser$PlmnData;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :cond_3
    if-eqz v6, :cond_5

    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_0

    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_2
    move-exception v7

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_0

    .line 172
    .end local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2    # "item":Lcom/android/internal/telephony/PlmnListParser$PlmnData;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string v7, "PlmnListParser"

    const-string v8, "Exception while parsing plmns file"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 176
    if-eqz v5, :cond_0

    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    :catch_4
    move-exception v7

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v5, :cond_4

    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_5
    throw v7

    :catch_5
    move-exception v8

    goto :goto_5

    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_4

    .line 172
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_6
    move-exception v0

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_3

    .line 169
    :catch_7
    move-exception v0

    goto :goto_2

    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v2    # "item":Lcom/android/internal/telephony/PlmnListParser$PlmnData;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :cond_5
    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_0
.end method

.method private resolveBestPlmnFile()Ljava/io/File;
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 215
    const-string v8, "gsm.sim.operator.numeric"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 217
    .local v7, "networkOperator":Ljava/lang/String;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x5

    if-lt v8, v9, :cond_1

    .line 218
    invoke-virtual {v7, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "mcc":Ljava/lang/String;
    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 222
    .local v6, "mnc":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/internal/telephony/PlmnListParser;->CUPSS_DIR:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/config/plmns-mcc%s-mnc%s.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v1, v9, v10

    aput-object v6, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, "mccmncfileName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    .local v4, "mccmncFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 243
    .end local v1    # "mcc":Ljava/lang/String;
    .end local v4    # "mccmncFile":Ljava/io/File;
    .end local v5    # "mccmncfileName":Ljava/lang/String;
    .end local v6    # "mnc":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 229
    .restart local v1    # "mcc":Ljava/lang/String;
    .restart local v4    # "mccmncFile":Ljava/io/File;
    .restart local v5    # "mccmncfileName":Ljava/lang/String;
    .restart local v6    # "mnc":Ljava/lang/String;
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/internal/telephony/PlmnListParser;->CUPSS_DIR:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/config/plmns-mcc%s.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, "mccfileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    .local v2, "mccFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v4, v2

    .line 232
    goto :goto_0

    .line 237
    .end local v1    # "mcc":Ljava/lang/String;
    .end local v2    # "mccFile":Ljava/io/File;
    .end local v3    # "mccfileName":Ljava/lang/String;
    .end local v4    # "mccmncFile":Ljava/io/File;
    .end local v5    # "mccmncfileName":Ljava/lang/String;
    .end local v6    # "mnc":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/internal/telephony/PlmnListParser;->CUPSS_DIR:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/config/plmns.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, "cupssFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v4, v0

    .line 239
    goto :goto_0

    .line 243
    :cond_2
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, "etc/plmns.xml"

    invoke-direct {v4, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getLongName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "numeric"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PlmnListParser;->isPlmnAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    sget-object v1, Lcom/android/internal/telephony/PlmnListParser;->mPlmnMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PlmnListParser$PlmnData;

    iget-object v0, v1, Lcom/android/internal/telephony/PlmnListParser$PlmnData;->longName:Ljava/lang/String;

    .line 111
    .local v0, "longName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    const-string v1, "PlmnListParser"

    const-string v2, "Found the long name %s for numeric %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v0    # "longName":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShortName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "numeric"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PlmnListParser;->isPlmnAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    sget-object v1, Lcom/android/internal/telephony/PlmnListParser;->mPlmnMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PlmnListParser$PlmnData;

    iget-object v0, v1, Lcom/android/internal/telephony/PlmnListParser$PlmnData;->shortName:Ljava/lang/String;

    .line 122
    .local v0, "shortName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    const-string v1, "PlmnListParser"

    const-string v2, "Found the short name %s for numeric %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v0    # "shortName":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlmnAvailable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "numeric"    # Ljava/lang/String;

    .prologue
    .line 105
    sget-object v0, Lcom/android/internal/telephony/PlmnListParser;->mPlmnMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PlmnListParser;->mPlmnMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PlmnListParser;->mPlmnMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
