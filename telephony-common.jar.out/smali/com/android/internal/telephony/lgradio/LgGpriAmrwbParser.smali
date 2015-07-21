.class public Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;
.super Ljava/lang/Object;
.source "LgGpriAmrwbParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser$AmrwbParserHandler;
    }
.end annotation


# static fields
.field public static final AMRWB_2G_OFF_3G_OFF:I = 0x5

.field public static final AMRWB_2G_OFF_3G_ON:I = 0xd

.field public static final AMRWB_2G_ON_3G_OFF:I = 0x7

.field public static final AMRWB_2G_ON_3G_ON:I = 0xf

.field public static final AMRWB_CODEC_PREF:I = 0x1ac2

.field public static AMRWB_DEFAULT:I = 0x0

.field public static final ATTR_2G_OFF_3G_OFF:Ljava/lang/String; = "5"

.field public static final ATTR_2G_OFF_3G_ON:Ljava/lang/String; = "d"

.field public static final ATTR_2G_ON_3G_OFF:Ljava/lang/String; = "7"

.field public static final ATTR_2G_ON_3G_ON:Ljava/lang/String; = "f"

.field public static final ATTR_AMRWB_CODEC_PREF:Ljava/lang/String; = "AMRWB_CODEC_PREF"

.field public static final ATTR_NAME_AMR_2G:Ljava/lang/String; = "AMR-WB 2G"

.field public static final ATTR_NAME_AMR_3G:Ljava/lang/String; = "AMR-WB 3G"

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

.field private static final EVENT_GPRI_AMRWB_CODEC_PREFERENCE:I = 0x2

.field private static final EVENT_GPRI_AMRWB_PARSER_COMPLETE:I = 0x1

.field public static final FILE_PATH_CUPSS_GPRI:Ljava/lang/String;

.field public static final FILE_PATH_GPRI_COTA:Ljava/lang/String; = "/data/shared/"

.field public static final FILE_PATH_GPRI_RADIO:Ljava/lang/String; = "radio/amrwb_gpri.xml"

.field public static final TAG:Ljava/lang/String; = "LgGpriAmrwbParser"

.field private static response:Ljava/lang/Object;


# instance fields
.field private final DBG:Z

.field private final VDBG:Z

.field private mGpriAmrwbIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser$AmrwbParserHandler;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;->AMRWB_DEFAULT:I

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ro.lge.capp_cupss.rootdir"

    const-string v2, "/cust"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/config/amrwb_gpri.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;->FILE_PATH_CUPSS_GPRI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .param p1, "p"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v1, 0x1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;->DBG:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;->VDBG:Z

    .line 100
    new-instance v1, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser$1;-><init>(Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;)V

    iput-object v1, p0, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;->mGpriAmrwbIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    const-string v1, "LgGpriAmrwbParser"

    const-string v2, "LgGpriAmrwbParser create"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iput-object p1, p0, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 116
    new-instance v1, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser$AmrwbParserHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser$AmrwbParserHandler;-><init>(Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;->mHandler:Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser$AmrwbParserHandler;

    .line 117
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 118
    .local v0, "gpriAmrwbIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;->mGpriAmrwbIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    return-void
.end method

.method private Parse_AMRInttoStr(I)Ljava/lang/String;
    .locals 1
    .param p1, "AMRvalue"    # I

    .prologue
    .line 330
    const-string v0, ""

    .line 332
    .local v0, "value":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 338
    const-string v0, "5"

    .line 341
    :goto_0
    return-object v0

    .line 334
    :sswitch_0
    const-string v0, "f"

    goto :goto_0

    .line 335
    :sswitch_1
    const-string v0, "d"

    goto :goto_0

    .line 336
    :sswitch_2
    const-string v0, "5"

    goto :goto_0

    .line 337
    :sswitch_3
    const-string v0, "7"

    goto :goto_0

    .line 332
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_2
        0x7 -> :sswitch_3
        0xd -> :sswitch_1
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method private Parse_AMRStrtoInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "AMRvalue"    # Ljava/lang/String;

    .prologue
    .line 315
    const/4 v0, 0x0

    .line 317
    .local v0, "value":I
    const-string v1, "f"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "F"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0F"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0f"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/16 v0, 0xf

    .line 323
    :goto_0
    return v0

    .line 318
    :cond_1
    const-string v1, "d"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "D"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0D"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0d"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/16 v0, 0xd

    goto :goto_0

    .line 319
    :cond_3
    const-string v1, "5"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "05"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const/4 v0, 0x5

    goto :goto_0

    .line 320
    :cond_5
    const-string v1, "7"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "07"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const/4 v0, 0x7

    goto :goto_0

    .line 321
    :cond_7
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private Parse_AMRWBGPRI(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 17
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 185
    const-string v12, ""

    .line 186
    .local v12, "result":Ljava/lang/String;
    const-string v2, ""

    .line 187
    .local v2, "amrwbdefault":Ljava/lang/String;
    const/4 v1, 0x0

    .line 188
    .local v1, "amrdefault":I
    const/4 v4, 0x0

    .line 189
    .local v4, "defaultvalue":I
    const-string v9, ""

    .line 191
    .local v9, "mccmncAmr":Ljava/lang/String;
    sget v14, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;->AMRWB_DEFAULT:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;->Parse_AMRInttoStr(I)Ljava/lang/String;

    move-result-object v2

    .line 192
    sget v4, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;->AMRWB_DEFAULT:I

    .line 194
    const-string v14, "LgGpriAmrwbParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[GPRI_AMRWBparse] TAG getModemStringItem: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "T:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;->Parse_AMRInttoStr(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 198
    if-nez p1, :cond_0

    .line 199
    const-string v14, "LgGpriAmrwbParser"

    const-string v15, "[GPRI_AMRWBparse] parser is null"

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :goto_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 258
    return-object v12

    .line 202
    :cond_0
    :try_start_0
    const-string v14, "profiles"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 205
    :cond_1
    :goto_1
    const-string v14, "LgGpriAmrwbParser"

    const-string v15, "[GPRI_AMRWBparse] start"

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string v14, "profiles"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 208
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 211
    :cond_2
    const-string v14, "profile"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 212
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 215
    :cond_3
    const-string v14, "siminfo"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 216
    const/4 v14, 0x0

    const-string v15, "mcc"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 217
    .local v8, "mccValue":Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "mnc"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 218
    .local v10, "mncValue":Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "operator"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 219
    .local v11, "operatorValue":Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "country"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, "countryValue":Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "gid"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 222
    .local v6, "gidValue":Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "spn"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 223
    .local v13, "spnValue":Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "imsi"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 225
    .local v7, "imsiValue":Ljava/lang/String;
    const-string v14, "LgGpriAmrwbParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[GPRI_AMRWBparse] TAG : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v14, "LgGpriAmrwbParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[GPRI_AMRWBparse] MCC : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v14, "LgGpriAmrwbParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[GPRI_AMRWBparse] MNC : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string v14, "LgGpriAmrwbParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[GPRI_AMRWBparse] OPERATOR : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v14, "LgGpriAmrwbParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[GPRI_AMRWBparse] COUNTRY : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;->read_AMRWBGPRI(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v9

    .line 234
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;->Parse_AMRInttoStr(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 237
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 242
    .end local v3    # "countryValue":Ljava/lang/String;
    .end local v6    # "gidValue":Ljava/lang/String;
    .end local v7    # "imsiValue":Ljava/lang/String;
    .end local v8    # "mccValue":Ljava/lang/String;
    .end local v10    # "mncValue":Ljava/lang/String;
    .end local v11    # "operatorValue":Ljava/lang/String;
    .end local v13    # "spnValue":Ljava/lang/String;
    :cond_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 248
    const-string v14, "LgGpriAmrwbParser"

    const-string v15, "[GPRI_parse] parsing complete"

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 249
    :catch_0
    move-exception v5

    .line 250
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_0

    .line 246
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_5
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 251
    :catch_1
    move-exception v5

    .line 252
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;->Parse_AMRStrtoInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getGPRIAMRWBList()Ljava/lang/String;
    .locals 10

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "confFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 149
    .local v3, "in":Ljava/io/FileReader;
    const/4 v5, 0x0

    .line 150
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v6, ""

    .line 152
    .local v6, "result":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    .end local v0    # "confFile":Ljava/io/File;
    const-string v7, "/data/shared/"

    const-string v8, "radio/amrwb_gpri.xml"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .restart local v0    # "confFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 155
    new-instance v0, Ljava/io/File;

    .end local v0    # "confFile":Ljava/io/File;
    sget-object v7, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;->FILE_PATH_CUPSS_GPRI:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .restart local v0    # "confFile":Ljava/io/File;
    :cond_0
    const-string v7, "LgGpriAmrwbParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getGPRIAMRWBList] *** loading from Path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 160
    const-string v7, "LgGpriAmrwbParser"

    const-string v8, "[GPRI_AMRWBparse] Do NOT load xml"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :goto_0
    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 181
    :cond_1
    :goto_1
    return-object v6

    .line 162
    :cond_2
    :try_start_2
    const-string v7, "LgGpriAmrwbParser"

    const-string v8, "[GPRI_AMRWBparse] Load xml"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    .end local v3    # "in":Ljava/io/FileReader;
    .local v4, "in":Ljava/io/FileReader;
    :try_start_3
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 165
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 166
    invoke-interface {v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 167
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;->Parse_AMRWBGPRI(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v6

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileReader;
    .restart local v3    # "in":Ljava/io/FileReader;
    goto :goto_0

    .line 176
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 169
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 170
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 175
    if-eqz v3, :cond_1

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 176
    :catch_2
    move-exception v1

    .line 177
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 171
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 172
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 175
    if-eqz v3, :cond_1

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 176
    :catch_4
    move-exception v1

    .line 177
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 174
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 175
    :goto_4
    if-eqz v3, :cond_3

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 178
    :cond_3
    :goto_5
    throw v7

    .line 176
    :catch_5
    move-exception v1

    .line 177
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 174
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/FileReader;
    .restart local v4    # "in":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileReader;
    .restart local v3    # "in":Ljava/io/FileReader;
    goto :goto_4

    .line 171
    .end local v3    # "in":Ljava/io/FileReader;
    .restart local v4    # "in":Ljava/io/FileReader;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileReader;
    .restart local v3    # "in":Ljava/io/FileReader;
    goto :goto_3

    .line 169
    .end local v3    # "in":Ljava/io/FileReader;
    .restart local v4    # "in":Ljava/io/FileReader;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileReader;
    .restart local v3    # "in":Ljava/io/FileReader;
    goto :goto_2
.end method

.method private read_AMRWBGPRI(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    .line 265
    const-string v4, ""

    .line 266
    .local v4, "result":Ljava/lang/String;
    const-string v0, ""

    .line 267
    .local v0, "AMR2GValue":Ljava/lang/String;
    const-string v1, ""

    .line 268
    .local v1, "AMR3GValue":Ljava/lang/String;
    const/4 v2, 0x0

    .line 270
    .local v2, "AMRcount":I
    :goto_0
    const-string v7, "siminfo"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 271
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 299
    .local v3, "key":Ljava/lang/String;
    .local v5, "tag":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 274
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "tag":Ljava/lang/String;
    :cond_1
    const-string v7, "item"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 276
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 278
    .restart local v5    # "tag":Ljava/lang/String;
    const-string v7, "LgGpriAmrwbParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[read_AMRWBGPRI] TAG : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v7, 0x0

    const-string v8, "name"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 282
    .restart local v3    # "key":Ljava/lang/String;
    if-eqz v3, :cond_4

    const-string v7, "AMR-WB 2G"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 283
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .line 284
    .local v6, "type":I
    if-ne v6, v10, :cond_2

    .line 285
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 286
    add-int/lit8 v2, v2, 0x1

    .line 298
    .end local v6    # "type":I
    :cond_2
    :goto_1
    const/4 v7, 0x2

    if-ne v2, v7, :cond_0

    .line 302
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "tag":Ljava/lang/String;
    :cond_3
    const-string v7, "1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v4, "f"

    .line 308
    :goto_2
    const-string v7, "LgGpriAmrwbParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[AMR_WB] Result : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-object v4

    .line 290
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v5    # "tag":Ljava/lang/String;
    :cond_4
    if-eqz v3, :cond_2

    const-string v7, "AMR-WB 3G"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 291
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .line 292
    .restart local v6    # "type":I
    if-ne v6, v10, :cond_2

    .line 293
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 294
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 303
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "type":I
    :cond_5
    const-string v7, "0"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v4, "d"

    goto :goto_2

    .line 304
    :cond_6
    const-string v7, "1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "0"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v4, "7"

    goto :goto_2

    .line 305
    :cond_7
    const-string v4, "5"

    goto :goto_2
.end method


# virtual methods
.method public GPRI_AMRWB_parser()V
    .locals 5

    .prologue
    .line 133
    const-string v1, "LgGpriAmrwbParser"

    const-string v2, "[loadGPRIAMRWBFromXml] *** start GPRI loading from xml"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v0, ""

    .line 137
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;->getGPRIAMRWBList()Ljava/lang/String;

    move-result-object v0

    .line 138
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    const-string v1, "LgGpriAmrwbParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[loadGPRIAMRWBFromXml] *** setModemStringItem result= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v1, p0, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v2, 0x1ac2

    iget-object v3, p0, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;->mHandler:Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser$AmrwbParserHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser$AmrwbParserHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemStringItem(ILjava/lang/String;Landroid/os/Message;)V

    .line 143
    :cond_0
    return-void
.end method

.method public loadGPRIAMRWBFromXml()V
    .locals 4

    .prologue
    .line 124
    const-string v0, "LgGpriAmrwbParser"

    const-string v1, "[loadGPRIAMRWBFromXml] *** Get Modem AMR WB default info"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v1, 0x1ac2

    iget-object v2, p0, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser;->mHandler:Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser$AmrwbParserHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/lgradio/LgGpriAmrwbParser$AmrwbParserHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->getGPRIItem(ILandroid/os/Message;)V

    .line 127
    return-void
.end method
