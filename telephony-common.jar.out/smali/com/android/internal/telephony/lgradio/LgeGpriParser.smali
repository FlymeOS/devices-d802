.class public Lcom/android/internal/telephony/lgradio/LgeGpriParser;
.super Ljava/lang/Object;
.source "LgeGpriParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/lgradio/LgeGpriParser$GpriParserHandler;
    }
.end annotation


# static fields
.field public static final ATTR_NAME_COUNTRY:Ljava/lang/String; = "country"

.field public static final ATTR_NAME_GID:Ljava/lang/String; = "gid"

.field public static final ATTR_NAME_IMSI_RANGE:Ljava/lang/String; = "imsi"

.field public static final ATTR_NAME_KEY:Ljava/lang/String; = "name"

.field public static final ATTR_NAME_MCC:Ljava/lang/String; = "mcc"

.field public static final ATTR_NAME_MNC:Ljava/lang/String; = "mnc"

.field public static final ATTR_NAME_OPERATOR:Ljava/lang/String; = "operator"

.field public static final ATTR_NAME_SPN:Ljava/lang/String; = "spn"

.field public static final ELEMENT_NAME_ITEM:Ljava/lang/String; = "item"

.field public static final ELEMENT_NAME_PROFILE:Ljava/lang/String; = "profile"

.field public static final ELEMENT_NAME_PROFILES:Ljava/lang/String; = "profiles"

.field public static final ELEMENT_NAME_SIMINFO:Ljava/lang/String; = "siminfo"

.field private static final EVENT_GPRI_PARSER_COMPLETE:I = 0x1

.field public static final FILE_PATH_CUPSS_GPRI:Ljava/lang/String;

.field public static final FILE_PATH_GPRI_COTA:Ljava/lang/String; = "/data/shared/"

.field public static final FILE_PATH_GPRI_RADIO:Ljava/lang/String; = "radio/radio_gpri.xml"


# instance fields
.field private final DBG:Z

.field private final TAG:Ljava/lang/String;

.field private final VDBG:Z

.field private mGpriIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Lcom/android/internal/telephony/lgradio/LgeGpriParser$GpriParserHandler;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ro.lge.capp_cupss.rootdir"

    const-string v2, "/cust"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/config/radio_gpri.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/lgradio/LgeGpriParser;->FILE_PATH_CUPSS_GPRI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .param p1, "p"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v1, 0x1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgradio/LgeGpriParser;->DBG:Z

    .line 51
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgradio/LgeGpriParser;->VDBG:Z

    .line 52
    const-string v1, "LgGpriParser"

    iput-object v1, p0, Lcom/android/internal/telephony/lgradio/LgeGpriParser;->TAG:Ljava/lang/String;

    .line 77
    new-instance v1, Lcom/android/internal/telephony/lgradio/LgeGpriParser$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/lgradio/LgeGpriParser$1;-><init>(Lcom/android/internal/telephony/lgradio/LgeGpriParser;)V

    iput-object v1, p0, Lcom/android/internal/telephony/lgradio/LgeGpriParser;->mGpriIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    const-string v1, "LgGpriParser"

    const-string v2, "LgeGpriParser create"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iput-object p1, p0, Lcom/android/internal/telephony/lgradio/LgeGpriParser;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 92
    new-instance v1, Lcom/android/internal/telephony/lgradio/LgeGpriParser$GpriParserHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/lgradio/LgeGpriParser$GpriParserHandler;-><init>(Lcom/android/internal/telephony/lgradio/LgeGpriParser;Lcom/android/internal/telephony/lgradio/LgeGpriParser$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/lgradio/LgeGpriParser;->mHandler:Lcom/android/internal/telephony/lgradio/LgeGpriParser$GpriParserHandler;

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    .local v0, "gpriIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/android/internal/telephony/lgradio/LgeGpriParser;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/lgradio/LgeGpriParser;->mGpriIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    return-void
.end method

.method private Parse_GPRI(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 174
    const-string v7, ""

    .line 175
    .local v7, "result":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 176
    const-string v9, "LgGpriParser"

    const-string v10, "[GPRI_parse] parser is null"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :goto_0
    return-object v7

    .line 179
    :cond_0
    :try_start_0
    const-string v9, "profiles"

    invoke-static {p1, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 182
    :goto_1
    const-string v9, "LgGpriParser"

    const-string v10, "[GPRI_parse] start"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v9, "profiles"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 185
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 188
    :cond_1
    const-string v9, "profile"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 189
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 192
    :cond_2
    const-string v9, "siminfo"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 193
    const/4 v9, 0x0

    const-string v10, "mcc"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "mccValue":Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "mnc"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 195
    .local v5, "mncValue":Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "operator"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 196
    .local v6, "operatorValue":Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "country"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "countryValue":Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "gid"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "gidValue":Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "spn"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 200
    .local v8, "spnValue":Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "imsi"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "imsiValue":Ljava/lang/String;
    const-string v9, "LgGpriParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[GPRI_parse] TAG : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v9, "LgGpriParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[GPRI_parse] MCC : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v9, "LgGpriParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[GPRI_parse] MNC : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v9, "LgGpriParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[GPRI_parse] OPERATOR : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v9, "LgGpriParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[GPRI_parse] COUNTRY : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/lgradio/LgeGpriParser;->checkMccMncMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 210
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 211
    const-string v9, "LgGpriParser"

    const-string v10, "[GPRI_parse] checkMccMncMatches.. nextElement"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 237
    .end local v0    # "countryValue":Ljava/lang/String;
    .end local v2    # "gidValue":Ljava/lang/String;
    .end local v3    # "imsiValue":Ljava/lang/String;
    .end local v4    # "mccValue":Ljava/lang/String;
    .end local v5    # "mncValue":Ljava/lang/String;
    .end local v6    # "operatorValue":Ljava/lang/String;
    .end local v8    # "spnValue":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 238
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_0

    .line 215
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "countryValue":Ljava/lang/String;
    .restart local v2    # "gidValue":Ljava/lang/String;
    .restart local v3    # "imsiValue":Ljava/lang/String;
    .restart local v4    # "mccValue":Ljava/lang/String;
    .restart local v5    # "mncValue":Ljava/lang/String;
    .restart local v6    # "operatorValue":Ljava/lang/String;
    .restart local v8    # "spnValue":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 216
    const-string v9, "LgGpriParser"

    const-string v10, "[GPRI_parse] no mvno read_GPRI"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lgradio/LgeGpriParser;->read_GPRI(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    .line 230
    .end local v0    # "countryValue":Ljava/lang/String;
    .end local v2    # "gidValue":Ljava/lang/String;
    .end local v3    # "imsiValue":Ljava/lang/String;
    .end local v4    # "mccValue":Ljava/lang/String;
    .end local v5    # "mncValue":Ljava/lang/String;
    .end local v6    # "operatorValue":Ljava/lang/String;
    .end local v8    # "spnValue":Ljava/lang/String;
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    .line 236
    :goto_2
    const-string v9, "LgGpriParser"

    const-string v10, "[GPRI_parse] parsing complete"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 239
    :catch_1
    move-exception v1

    .line 240
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 218
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "countryValue":Ljava/lang/String;
    .restart local v2    # "gidValue":Ljava/lang/String;
    .restart local v3    # "imsiValue":Ljava/lang/String;
    .restart local v4    # "mccValue":Ljava/lang/String;
    .restart local v5    # "mncValue":Ljava/lang/String;
    .restart local v6    # "operatorValue":Ljava/lang/String;
    .restart local v8    # "spnValue":Ljava/lang/String;
    :cond_5
    :try_start_2
    invoke-direct {p0, v2, v8, v3}, Lcom/android/internal/telephony/lgradio/LgeGpriParser;->checkMvnoMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 219
    const-string v9, "LgGpriParser"

    const-string v10, "[GPRI_parse] mvno matched read_GPRI"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lgradio/LgeGpriParser;->read_GPRI(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    .line 221
    goto :goto_2

    .line 223
    :cond_6
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 224
    const-string v9, "LgGpriParser"

    const-string v10, "[GPRI_parse] mvno not matched.. nextElement"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 234
    .end local v0    # "countryValue":Ljava/lang/String;
    .end local v2    # "gidValue":Ljava/lang/String;
    .end local v3    # "imsiValue":Ljava/lang/String;
    .end local v4    # "mccValue":Ljava/lang/String;
    .end local v5    # "mncValue":Ljava/lang/String;
    .end local v6    # "operatorValue":Ljava/lang/String;
    .end local v8    # "spnValue":Ljava/lang/String;
    :cond_7
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/lgradio/LgeGpriParser;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/lgradio/LgeGpriParser;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/lgradio/LgeGpriParser;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method private checkMccMncMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x3

    const/4 v3, 0x0

    .line 279
    const-string v4, "gsm.sim.operator.numeric"

    const-wide/16 v6, 0x0

    const-string v5, ""

    invoke-static {v4, v6, v7, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "simNumeric":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_0

    .line 284
    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "simMcc":Ljava/lang/String;
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "simMnc":Ljava/lang/String;
    const-string v4, "LgGpriParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[checkMccMncMatches] simMcc : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " simMnc : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 293
    const-string v3, "LgGpriParser"

    const-string v4, "[checkMccMncMatches] true"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v3, 0x1

    .line 297
    .end local v0    # "simMcc":Ljava/lang/String;
    .end local v1    # "simMnc":Ljava/lang/String;
    :goto_0
    return v3

    .line 288
    :cond_0
    const-string v4, "LgGpriParser"

    const-string v5, "[checkMccMncMatches] invalid mcc mnc"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 296
    .restart local v0    # "simMcc":Ljava/lang/String;
    .restart local v1    # "simMnc":Ljava/lang/String;
    :cond_1
    const-string v4, "LgGpriParser"

    const-string v5, "[checkMccMncMatches] false"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkMvnoMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "gid"    # Ljava/lang/String;
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 302
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/lgradio/LgeGpriParser;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "gid"

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/PhoneBase;->checkMvnoMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    const-string v1, "LgGpriParser"

    const-string v2, "[checkMvnoMatches] gid true"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :goto_0
    return v0

    .line 305
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/lgradio/LgeGpriParser;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "spn"

    invoke-virtual {v1, v2, p2}, Lcom/android/internal/telephony/PhoneBase;->checkMvnoMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    const-string v1, "LgGpriParser"

    const-string v2, "[checkMvnoMatches] spn true"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 308
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/lgradio/LgeGpriParser;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "imsi"

    invoke-virtual {v1, v2, p3}, Lcom/android/internal/telephony/PhoneBase;->checkMvnoMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 309
    const-string v1, "LgGpriParser"

    const-string v2, "[checkMvnoMatches] imsi true"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 312
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMatchedGPRI()Ljava/lang/String;
    .locals 9

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "confFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 138
    .local v3, "in":Ljava/io/FileReader;
    const/4 v5, 0x0

    .line 139
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v6, ""

    .line 141
    .local v6, "result":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    .end local v0    # "confFile":Ljava/io/File;
    const-string v7, "/data/shared/"

    const-string v8, "radio/radio_gpri.xml"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .restart local v0    # "confFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 144
    new-instance v0, Ljava/io/File;

    .end local v0    # "confFile":Ljava/io/File;
    sget-object v7, Lcom/android/internal/telephony/lgradio/LgeGpriParser;->FILE_PATH_CUPSS_GPRI:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    .restart local v0    # "confFile":Ljava/io/File;
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 149
    const-string v7, "LgGpriParser"

    const-string v8, "[GPRI_parse] Do NOT load xml"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :goto_0
    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 170
    :cond_1
    :goto_1
    return-object v6

    .line 151
    :cond_2
    :try_start_2
    const-string v7, "LgGpriParser"

    const-string v8, "[GPRI_parse] Load xml"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    .end local v3    # "in":Ljava/io/FileReader;
    .local v4, "in":Ljava/io/FileReader;
    :try_start_3
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 154
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 155
    invoke-interface {v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 156
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/lgradio/LgeGpriParser;->Parse_GPRI(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v6

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileReader;
    .restart local v3    # "in":Ljava/io/FileReader;
    goto :goto_0

    .line 165
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 158
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 159
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 164
    if-eqz v3, :cond_1

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 165
    :catch_2
    move-exception v1

    .line 166
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 160
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 161
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 164
    if-eqz v3, :cond_1

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 165
    :catch_4
    move-exception v1

    .line 166
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 163
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 164
    :goto_4
    if-eqz v3, :cond_3

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 167
    :cond_3
    :goto_5
    throw v7

    .line 165
    :catch_5
    move-exception v1

    .line 166
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 163
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/FileReader;
    .restart local v4    # "in":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileReader;
    .restart local v3    # "in":Ljava/io/FileReader;
    goto :goto_4

    .line 160
    .end local v3    # "in":Ljava/io/FileReader;
    .restart local v4    # "in":Ljava/io/FileReader;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileReader;
    .restart local v3    # "in":Ljava/io/FileReader;
    goto :goto_3

    .line 158
    .end local v3    # "in":Ljava/io/FileReader;
    .restart local v4    # "in":Ljava/io/FileReader;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileReader;
    .restart local v3    # "in":Ljava/io/FileReader;
    goto :goto_2
.end method

.method private getNumericFormat()Ljava/lang/String;
    .locals 7

    .prologue
    .line 121
    const-string v3, "gsm.sim.operator.numeric"

    const-wide/16 v4, 0x0

    const-string v6, ""

    invoke-static {v3, v4, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "simNumeric":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    .line 124
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/16 v1, 0x8

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v1, v3, :cond_0

    .line 126
    const-string v3, "F"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v1    # "i":I
    :goto_1
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private read_GPRI(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    const-string v1, ""

    .line 253
    .local v1, "result":Ljava/lang/String;
    :goto_0
    const-string v5, "siminfo"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 254
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 257
    :cond_0
    :goto_1
    const-string v5, "item"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 259
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "tag":Ljava/lang/String;
    const-string v5, "LgGpriParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[GPRI_parse] TAG : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v5, 0x0

    const-string v6, "name"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 265
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 266
    .local v3, "type":I
    const/4 v5, 0x4

    if-ne v3, v5, :cond_1

    .line 267
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, "value":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    const-string v5, "LgGpriParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[GPRI_parse] KEY : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", VALUE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .end local v3    # "type":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 274
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "tag":Ljava/lang/String;
    :cond_2
    const-string v5, "LgGpriParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[GPRI_parse] Result : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-object v1
.end method


# virtual methods
.method public loadGPRIFromXml()V
    .locals 6

    .prologue
    .line 99
    const-string v2, "LgGpriParser"

    const-string v3, "[loadGPRIFromXml] *** start GPRI loading from xml"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v0, ""

    .line 102
    .local v0, "result":Ljava/lang/String;
    const-string v1, ""

    .line 103
    .local v1, "simNumeric":Ljava/lang/String;
    const-string v2, "persist.radio.gpri.parser"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 104
    invoke-direct {p0}, Lcom/android/internal/telephony/lgradio/LgeGpriParser;->getMatchedGPRI()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-direct {p0}, Lcom/android/internal/telephony/lgradio/LgeGpriParser;->getNumericFormat()Ljava/lang/String;

    move-result-object v1

    .line 106
    if-eqz v1, :cond_0

    .line 107
    const-string v2, "LgGpriParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[loadGPRIFromXml] *** setModemStringItem simNumeric= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v2, p0, Lcom/android/internal/telephony/lgradio/LgeGpriParser;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/internal/telephony/PhoneBase;->setModemStringItem(ILjava/lang/String;Landroid/os/Message;)V

    .line 110
    :cond_0
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 111
    const-string v2, "LgGpriParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[loadGPRIFromXml] *** setModemStringItem result= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v2, p0, Lcom/android/internal/telephony/lgradio/LgeGpriParser;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v3, 0x32

    iget-object v4, p0, Lcom/android/internal/telephony/lgradio/LgeGpriParser;->mHandler:Lcom/android/internal/telephony/lgradio/LgeGpriParser$GpriParserHandler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/lgradio/LgeGpriParser$GpriParserHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/internal/telephony/PhoneBase;->setModemStringItem(ILjava/lang/String;Landroid/os/Message;)V

    .line 118
    :cond_1
    :goto_0
    return-void

    .line 116
    :cond_2
    const-string v2, "LgGpriParser"

    const-string v3, "[loadGPRIFromXml] *** GPRI is already parsed.. skip"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
