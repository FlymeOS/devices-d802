.class public Lcom/android/server/location/LgeGpsConstants;
.super Ljava/lang/Object;
.source "LgeGpsConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;
    }
.end annotation


# static fields
.field private static final AGLO_S:Ljava/lang/String; = "aglo"

.field private static final A_GLONASS_POS_PROTOCOL_SELECT_M:I = 0x200

.field public static Accuracythres:I = 0x0

.field public static AglonassPosProtocolSelect:I = 0x0

.field private static final CAPABILITES_M:I = 0x400

.field private static final CAPA_S:Ljava/lang/String; = "capa"

.field private static final COUNTRY_S:Ljava/lang/String; = "country"

.field public static Capabilites:I = 0x0

.field private static final DCOUNTRY_S:Ljava/lang/String; = "dcountry"

.field private static final DEBUG:Z = true

.field private static final HOST_S:Ljava/lang/String; = "host"

.field private static INTEGRATED_SW:Ljava/lang/String; = null

.field public static IntermediatePos:I = 0x0

.field private static LGE_GNSS_CONF_FILE:Ljava/lang/String; = null

.field private static final LGE_GNSS_CONF_PATH:Ljava/lang/String; = "etc/gnss-conf.xml"

.field private static final LPP_PROFILE_M:I = 0x80

.field private static final LPP_S:Ljava/lang/String; = "lpp"

.field public static LppProfile:I = 0x0

.field private static final MCC_S:Ljava/lang/String; = "mcc"

.field private static final MNC_S:Ljava/lang/String; = "mnc"

.field public static MaskValue:I = 0x0

.field private static final NUMERIC_S:Ljava/lang/String; = "numeric"

.field public static NmeaProvider:I = 0x0

.field public static Numeric:Ljava/lang/String; = null

.field private static final OPERATOR_S:Ljava/lang/String; = "operator"

.field private static PERSIST_NTCODE_MCCMNC_LIST:Ljava/lang/String; = null

.field private static final PORT_S:Ljava/lang/String; = "port"

.field private static final POS_S:Ljava/lang/String; = "pos"

.field private static PROPERTIES_FILE:Ljava/lang/String; = null

.field public static PositionMethod:I = 0x0

.field private static final REGION_S:Ljava/lang/String; = "region"

.field private static final SBP_ENABLED:Ljava/lang/String; = "1"

.field private static final SUPL_VER_M:I = 0x8

.field public static SuplHost:Ljava/lang/String; = null

.field public static SuplPort:I = 0x0

.field public static SuplTLS:I = 0x0

.field public static SuplVersion:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LgeGpsConstants"

.field private static TARGET_COUNTRY:Ljava/lang/String; = null

.field private static TARGET_DCOUNTRY:Ljava/lang/String; = null

.field private static TARGET_OPERATOR:Ljava/lang/String; = null

.field private static TARGET_REGION:Ljava/lang/String; = null

.field private static final TLS_S:Ljava/lang/String; = "tls"

.field private static final VER_S:Ljava/lang/String; = "ver"

.field private static mGpsIntConfMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mGpsStrConfMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mLgeContext:Landroid/content/Context;

.field private static mUserAgent:Ljava/lang/String;

.field private static final xml_params:[Ljava/lang/String;


# instance fields
.field public contentValues:Landroid/content/ContentValues;

.field private mGPSSoundPlayer:Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;

.field private mSoundOn:Z

.field public mTracking:Z

.field private mVibratorOn:Z

.field public mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 78
    const-string v5, "/etc/gps.conf"

    sput-object v5, Lcom/android/server/location/LgeGpsConstants;->PROPERTIES_FILE:Ljava/lang/String;

    .line 79
    const-string v5, "/data/ext_gps.conf"

    sput-object v5, Lcom/android/server/location/LgeGpsConstants;->LGE_GNSS_CONF_FILE:Ljava/lang/String;

    .line 80
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/android/server/location/LgeGpsConstants;->mGpsIntConfMap:Ljava/util/HashMap;

    .line 81
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/android/server/location/LgeGpsConstants;->mGpsStrConfMap:Ljava/util/HashMap;

    .line 84
    const-string v5, "ro.build.target_operator"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/server/location/LgeGpsConstants;->TARGET_OPERATOR:Ljava/lang/String;

    .line 85
    const-string v5, "ro.build.target_country"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/server/location/LgeGpsConstants;->TARGET_COUNTRY:Ljava/lang/String;

    .line 86
    const-string v5, "ro.build.target_region"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/server/location/LgeGpsConstants;->TARGET_REGION:Ljava/lang/String;

    .line 87
    const-string v5, "ro.build.default_country"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/server/location/LgeGpsConstants;->TARGET_DCOUNTRY:Ljava/lang/String;

    .line 88
    const-string v5, "ro.build.sbp"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/server/location/LgeGpsConstants;->INTEGRATED_SW:Ljava/lang/String;

    .line 92
    const-string v5, "persist.sys.mccmnc-list"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/server/location/LgeGpsConstants;->PERSIST_NTCODE_MCCMNC_LIST:Ljava/lang/String;

    .line 144
    const/16 v5, 0xf

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "operator"

    aput-object v6, v5, v8

    const/4 v6, 0x1

    const-string v7, "country"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "region"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "dcountry"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "mcc"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "mnc"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "numeric"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "ver"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "host"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "port"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "tls"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    const-string v7, "lpp"

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string v7, "pos"

    aput-object v7, v5, v6

    const/16 v6, 0xd

    const-string v7, "aglo"

    aput-object v7, v5, v6

    const/16 v6, 0xe

    const-string v7, "capa"

    aput-object v7, v5, v6

    sput-object v5, Lcom/android/server/location/LgeGpsConstants;->xml_params:[Ljava/lang/String;

    .line 169
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 170
    .local v1, "mLgeProperties":Ljava/util/Properties;
    sget-object v5, Lcom/android/server/location/LgeGpsConstants;->PROPERTIES_FILE:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/android/server/location/LgeGpsConstants;->readFile(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 171
    sget-object v5, Lcom/android/server/location/LgeGpsConstants;->mGpsStrConfMap:Ljava/util/HashMap;

    const-string v6, "LgeSuplServerHost"

    const-string v7, "SUPL_HOST"

    invoke-virtual {v1, v7, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v5, Lcom/android/server/location/LgeGpsConstants;->mGpsIntConfMap:Ljava/util/HashMap;

    const-string v6, "PositionMode"

    const-string v7, "LGE_GPS_POSITION_MODE"

    invoke-static {v1, v7}, Lcom/android/server/location/LgeGpsConstants;->getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v5, Lcom/android/server/location/LgeGpsConstants;->mGpsIntConfMap:Ljava/util/HashMap;

    const-string v6, "LgeSuplServerPort"

    const-string v7, "SUPL_PORT"

    invoke-static {v1, v7}, Lcom/android/server/location/LgeGpsConstants;->getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v5, Lcom/android/server/location/LgeGpsConstants;->mGpsIntConfMap:Ljava/util/HashMap;

    const-string v6, "LgeTlsMode"

    const-string v7, "LGE_TLS_MODE"

    invoke-static {v1, v7}, Lcom/android/server/location/LgeGpsConstants;->getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v5, Lcom/android/server/location/LgeGpsConstants;->mGpsIntConfMap:Ljava/util/HashMap;

    const-string v6, "LgeSuplType"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v5, "VENDOR"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, "strVendorName":Ljava/lang/String;
    const-string v5, "NTP_SERVER"

    invoke-virtual {v1, v5, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "strDefaultNtpServer":Ljava/lang/String;
    const-string v5, "EWIFI"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 184
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NTP_SERVER_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/server/location/LgeGpsConstants;->TARGET_COUNTRY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, "strNtpServer":Ljava/lang/String;
    const-string v5, "LgeGpsConstants"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[WIFI] Get property from NTP_SERVER_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/location/LgeGpsConstants;->TARGET_COUNTRY:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_0
    sget-object v5, Lcom/android/server/location/LgeGpsConstants;->mGpsStrConfMap:Ljava/util/HashMap;

    const-string v6, "VendorName"

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v5, Lcom/android/server/location/LgeGpsConstants;->mGpsStrConfMap:Ljava/util/HashMap;

    const-string v6, "NtpServer"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v5, "LgeGpsConstants"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NTP Server Address: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v0, Lcom/android/server/location/LgeGpsConstants;

    invoke-direct {v0}, Lcom/android/server/location/LgeGpsConstants;-><init>()V

    .line 204
    .local v0, "GpsConstants":Lcom/android/server/location/LgeGpsConstants;
    invoke-direct {v0}, Lcom/android/server/location/LgeGpsConstants;->setAgpsConfigParamsFromXml()V

    .line 207
    .end local v0    # "GpsConstants":Lcom/android/server/location/LgeGpsConstants;
    .end local v2    # "strDefaultNtpServer":Ljava/lang/String;
    .end local v3    # "strNtpServer":Ljava/lang/String;
    .end local v4    # "strVendorName":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/server/location/LgeGpsConstants;->initializeXTRAUserAgent()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/server/location/LgeGpsConstants;->mUserAgent:Ljava/lang/String;

    .line 209
    return-void

    .line 187
    .restart local v2    # "strDefaultNtpServer":Ljava/lang/String;
    .restart local v4    # "strVendorName":Ljava/lang/String;
    :cond_1
    const-string v5, "1"

    sget-object v6, Lcom/android/server/location/LgeGpsConstants;->INTEGRATED_SW:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 189
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NTP_SERVER_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/server/location/LgeGpsConstants;->TARGET_REGION:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 190
    .restart local v3    # "strNtpServer":Ljava/lang/String;
    const-string v5, "LgeGpsConstants"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SBP Enabled] Get property from NTP_SERVER_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/location/LgeGpsConstants;->TARGET_REGION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    .end local v3    # "strNtpServer":Ljava/lang/String;
    :cond_2
    move-object v3, v2

    .line 194
    .restart local v3    # "strNtpServer":Ljava/lang/String;
    const-string v5, "LgeGpsConstants"

    const-string v6, "Get property from NTP_SERVER"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean v0, p0, Lcom/android/server/location/LgeGpsConstants;->mSoundOn:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/server/location/LgeGpsConstants;->mVibratorOn:Z

    .line 74
    iput-boolean v0, p0, Lcom/android/server/location/LgeGpsConstants;->mTracking:Z

    .line 162
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LgeGpsConstants;->contentValues:Landroid/content/ContentValues;

    .line 504
    return-void
.end method

.method private getAgpsConfigParamsFromXml(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 9
    .param p1, "numeric"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 688
    const-string v5, "LgeGpsConstants"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ENTER getAgpsConfigParamsFromXml() : numeric - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const/4 v1, 0x0

    .line 693
    .local v1, "confparser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "etc/gnss-conf.xml"

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 694
    .local v0, "confFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 696
    .local v2, "confreader":Ljava/io/FileReader;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    .end local v2    # "confreader":Ljava/io/FileReader;
    .local v3, "confreader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 698
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 699
    const-string v5, "GNSSCONF"

    invoke-static {v1, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 712
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    :goto_0
    move-object v2, v3

    .end local v3    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    :cond_1
    :goto_1
    return-object v8

    .line 704
    :catch_0
    move-exception v4

    .line 706
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v5, "LgeGpsConstants"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File not found: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 712
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_1

    .line 708
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v4

    .line 709
    .local v4, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string v5, "LgeGpsConstants"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while parsing \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 712
    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_3
    move-exception v5

    goto :goto_1

    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_2
    :goto_5
    throw v5

    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v3    # "confreader":Ljava/io/FileReader;
    :catch_4
    move-exception v5

    goto :goto_0

    .end local v3    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    :catch_5
    move-exception v6

    goto :goto_5

    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v3    # "confreader":Ljava/io/FileReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    goto :goto_4

    .line 708
    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v3    # "confreader":Ljava/io/FileReader;
    :catch_6
    move-exception v4

    move-object v2, v3

    .end local v3    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    goto :goto_3

    .line 704
    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v3    # "confreader":Ljava/io/FileReader;
    :catch_7
    move-exception v4

    move-object v2, v3

    .end local v3    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    goto :goto_2
.end method

.method private static getCarrierName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 368
    const-string v2, "ro.cdma.home.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "mCarrierNumeric":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 371
    .local v1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "310120"

    const-string v3, "Sprint"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string v2, "311490"

    const-string v3, "Virgin"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string v2, "311870"

    const-string v3, "Boost"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v2, "312530"

    const-string v3, "SprPre"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_0
    return-object v2

    :cond_0
    const-string v2, "Wholesale"

    goto :goto_0
.end method

.method private static getDateString()Ljava/lang/String;
    .locals 13

    .prologue
    .line 383
    new-instance v8, Ljava/util/StringTokenizer;

    const-string v9, "ro.build.date"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 384
    .local v8, "stok":Ljava/util/StringTokenizer;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, "mDay":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 386
    .local v3, "mMonth":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "mDate":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 388
    .local v6, "mTime":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 389
    .local v5, "mStandardTime":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 391
    .local v7, "mYear":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 393
    .local v4, "mParsedDate":Ljava/lang/StringBuffer;
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    const-string v9, "_"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 397
    .local v2, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "Jan"

    const-string v10, "01"

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "Feb"

    const-string v10, "02"

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "Mar"

    const-string v10, "03"

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "Apr"

    const-string v10, "04"

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "May"

    const-string v10, "05"

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "Jun"

    const-string v10, "06"

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string v9, "Jul"

    const-string v10, "07"

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "Aug"

    const-string v10, "08"

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "Sep"

    const-string v10, "09"

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "Oct"

    const-string v10, "10"

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "Nov"

    const-string v10, "11"

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "Dec"

    const-string v10, "12"

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 400
    const-string v9, "_"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 402
    const-string v9, "%02d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public static getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I
    .locals 6
    .param p0, "prop"    # Ljava/util/Properties;
    .param p1, "confname"    # Ljava/lang/String;

    .prologue
    .line 326
    const-string v3, "1"

    invoke-virtual {p0, p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, "sParam":Ljava/lang/String;
    const/4 v1, 0x0

    .line 328
    .local v1, "iParam":I
    if-eqz v2, :cond_0

    .line 330
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 335
    :cond_0
    :goto_0
    return v1

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "LgeGpsConstants"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to parse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v6, 0x0

    .line 842
    const-string v7, "PARAM"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    move-object v2, v6

    .line 861
    :goto_0
    return-object v2

    .line 845
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 847
    .local v2, "map":Landroid/content/ContentValues;
    const-string v7, "mcc"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 848
    .local v3, "mcc":Ljava/lang/String;
    const-string v7, "mnc"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 849
    .local v4, "mnc":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 851
    .local v5, "numeric":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v7, Lcom/android/server/location/LgeGpsConstants;->xml_params:[Ljava/lang/String;

    array-length v7, v7

    if-ge v1, v7, :cond_2

    .line 852
    sget-object v7, Lcom/android/server/location/LgeGpsConstants;->xml_params:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 853
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 855
    sget-object v7, Lcom/android/server/location/LgeGpsConstants;->xml_params:[Ljava/lang/String;

    aget-object v7, v7, v1

    sget-object v8, Lcom/android/server/location/LgeGpsConstants;->xml_params:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-interface {p1, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    :cond_1
    const-string v7, "LgeGpsConstants"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRow() Param: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/server/location/LgeGpsConstants;->xml_params:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  Element: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 859
    .end local v0    # "element":Ljava/lang/String;
    :cond_2
    const-string v6, "numeric"

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getXTRAUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    sget-object v0, Lcom/android/server/location/LgeGpsConstants;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method private static initializeXTRAUserAgent()Ljava/lang/String;
    .locals 5

    .prologue
    .line 343
    sget-object v2, Lcom/android/server/location/LgeGpsConstants;->mGpsStrConfMap:Ljava/util/HashMap;

    const-string v3, "VendorName"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 344
    .local v1, "mVendorName":Ljava/lang/String;
    const-string v2, "SPR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 345
    const-string v0, "Android"

    .line 362
    :goto_0
    return-object v0

    .line 348
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/location/LgeGpsConstants;->getCarrierName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "LG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ro.board.platform"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "LTE-CDMA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ro.lge.swversion"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Android"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/location/LgeGpsConstants;->getDateString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "mUserAgent":Ljava/lang/String;
    const-string v2, "LgeGpsConstants"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gpsOneXTRA HTTP User-Agent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private insertAddingDefaults(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "row"    # Landroid/content/ContentValues;

    .prologue
    .line 824
    const-string v0, "numeric"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "numeric"

    const-string v1, "0x20000"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    :cond_0
    const-string v0, "host"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "host"

    const-string v1, "supl.google.com"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    :cond_1
    const-string v0, "port"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "port"

    const-string v1, "7275"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    :cond_2
    const-string v0, "tls"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "tls"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    :cond_3
    const-string v0, "lpp"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "lpp"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    :cond_4
    const-string v0, "pos"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "pos"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    :cond_5
    const-string v0, "aglo"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "aglo"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    :cond_6
    const-string v0, "capa"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "capa"

    const-string v1, "0x33"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    :cond_7
    return-void
.end method

.method public static loadIntConfig(Ljava/lang/String;)I
    .locals 4
    .param p0, "intconf"    # Ljava/lang/String;

    .prologue
    .line 233
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 235
    .local v0, "mExtProperties":Ljava/util/Properties;
    sget-object v1, Lcom/android/server/location/LgeGpsConstants;->LGE_GNSS_CONF_FILE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/location/LgeGpsConstants;->readFile(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    sget-object v1, Lcom/android/server/location/LgeGpsConstants;->mGpsIntConfMap:Ljava/util/HashMap;

    const-string v2, "PositionMode"

    const-string v3, "LGE_GPS_POSITION_MODE"

    invoke-static {v0, v3}, Lcom/android/server/location/LgeGpsConstants;->getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v1, Lcom/android/server/location/LgeGpsConstants;->mGpsIntConfMap:Ljava/util/HashMap;

    const-string v2, "LgeSuplType"

    const-string v3, "SUPL_TYPE"

    invoke-static {v0, v3}, Lcom/android/server/location/LgeGpsConstants;->getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v1, Lcom/android/server/location/LgeGpsConstants;->mGpsIntConfMap:Ljava/util/HashMap;

    const-string v2, "LgeSuplServerPort"

    const-string v3, "SUPL_PORT"

    invoke-static {v0, v3}, Lcom/android/server/location/LgeGpsConstants;->getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v1, Lcom/android/server/location/LgeGpsConstants;->mGpsIntConfMap:Ljava/util/HashMap;

    const-string v2, "LgeTlsMode"

    const-string v3, "LGE_TLS_MODE"

    invoke-static {v0, v3}, Lcom/android/server/location/LgeGpsConstants;->getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v1, "LgeGpsConstants"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ext_gps.conf - posMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "LGE_GPS_POSITION_MODE"

    invoke-static {v0, v3}, Lcom/android/server/location/LgeGpsConstants;->getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LgeSuplType= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SUPL_TYPE"

    invoke-static {v0, v3}, Lcom/android/server/location/LgeGpsConstants;->getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LgeSuplServerPort= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SUPL_PORT"

    invoke-static {v0, v3}, Lcom/android/server/location/LgeGpsConstants;->getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LgeTlsMode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "LGE_TLS_MODE"

    invoke-static {v0, v3}, Lcom/android/server/location/LgeGpsConstants;->getParamFromProp(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :goto_0
    sget-object v1, Lcom/android/server/location/LgeGpsConstants;->mGpsIntConfMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 242
    :cond_0
    const-string v1, "LgeGpsConstants"

    const-string v2, "Can\'t find \'ext_gps.conf\'!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static loadStrConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "strconf"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 221
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 223
    .local v0, "mExtProperties":Ljava/util/Properties;
    sget-object v1, Lcom/android/server/location/LgeGpsConstants;->LGE_GNSS_CONF_FILE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/location/LgeGpsConstants;->readFile(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    sget-object v1, Lcom/android/server/location/LgeGpsConstants;->mGpsStrConfMap:Ljava/util/HashMap;

    const-string v2, "LgeSuplServerHost"

    const-string v3, "SUPL_HOST"

    invoke-virtual {v0, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v1, "LgeGpsConstants"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ext_gps.conf - LgeSuplServerHost = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SUPL_HOST"

    invoke-virtual {v0, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_0
    sget-object v1, Lcom/android/server/location/LgeGpsConstants;->mGpsStrConfMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 226
    :cond_0
    const-string v1, "LgeGpsConstants"

    const-string v2, "Can\'t find \'ext_gps.conf\'!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private matchStatus(Landroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 12
    .param p1, "row"    # Landroid/content/ContentValues;
    .param p2, "numeric"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 770
    sget-object v9, Lcom/android/server/location/LgeGpsConstants;->INTEGRATED_SW:Ljava/lang/String;

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 772
    .local v0, "bIsIntegratedSW":Z
    sget-object v9, Lcom/android/server/location/LgeGpsConstants;->TARGET_DCOUNTRY:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v7, :cond_0

    move v6, v7

    .line 775
    .local v6, "bIsValidDefaultCountry":Z
    :goto_0
    sget-object v9, Lcom/android/server/location/LgeGpsConstants;->TARGET_OPERATOR:Ljava/lang/String;

    const-string v10, "operator"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 776
    .local v4, "bIsMatchedTargetOperator":Z
    sget-object v9, Lcom/android/server/location/LgeGpsConstants;->TARGET_COUNTRY:Ljava/lang/String;

    const-string v10, "country"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 777
    .local v2, "bIsMatchedTargetCountry":Z
    sget-object v9, Lcom/android/server/location/LgeGpsConstants;->TARGET_REGION:Ljava/lang/String;

    const-string v10, "region"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 778
    .local v5, "bIsMatchedTargetRegion":Z
    sget-object v9, Lcom/android/server/location/LgeGpsConstants;->PERSIST_NTCODE_MCCMNC_LIST:Ljava/lang/String;

    const-string v10, "numeric"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 779
    .local v1, "bIsMatchedNtCodeMccMnc":Z
    sget-object v9, Lcom/android/server/location/LgeGpsConstants;->TARGET_DCOUNTRY:Ljava/lang/String;

    const-string v10, "dcountry"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 781
    .local v3, "bIsMatchedTargetDCountry":Z
    const-string v9, "LgeGpsConstants"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " matchStatus()  TARGET_DCOUNTRY.length is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/server/location/LgeGpsConstants;->TARGET_DCOUNTRY:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const-string v9, "LgeGpsConstants"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " matchStatus()   bIsIntegratedSW = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  bIsValidDefaultCountry = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  bIsMatchedTargetOperator = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  bIsMatchedTargetCountry = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  bIsMatchedTargetRegion = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  bIsMatchedNtCodeMccMnc = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  bIsMatchedTargetDCountry = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    if-eqz p2, :cond_1

    .line 795
    const-string v9, "numeric"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 796
    const-string v8, "LgeGpsConstants"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " matchStatus() MATCHED!Query By Numeric ! [["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :goto_1
    return v7

    .end local v1    # "bIsMatchedNtCodeMccMnc":Z
    .end local v2    # "bIsMatchedTargetCountry":Z
    .end local v3    # "bIsMatchedTargetDCountry":Z
    .end local v4    # "bIsMatchedTargetOperator":Z
    .end local v5    # "bIsMatchedTargetRegion":Z
    .end local v6    # "bIsValidDefaultCountry":Z
    :cond_0
    move v6, v8

    .line 772
    goto/16 :goto_0

    .line 800
    .restart local v1    # "bIsMatchedNtCodeMccMnc":Z
    .restart local v2    # "bIsMatchedTargetCountry":Z
    .restart local v3    # "bIsMatchedTargetDCountry":Z
    .restart local v4    # "bIsMatchedTargetOperator":Z
    .restart local v5    # "bIsMatchedTargetRegion":Z
    .restart local v6    # "bIsValidDefaultCountry":Z
    :cond_1
    sget-object v9, Lcom/android/server/location/LgeGpsConstants;->TARGET_OPERATOR:Ljava/lang/String;

    const-string v10, "operator"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    sget-object v9, Lcom/android/server/location/LgeGpsConstants;->TARGET_COUNTRY:Ljava/lang/String;

    const-string v10, "country"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 801
    if-eqz v0, :cond_3

    .line 802
    sget-object v9, Lcom/android/server/location/LgeGpsConstants;->PERSIST_NTCODE_MCCMNC_LIST:Ljava/lang/String;

    const-string v10, "numeric"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    sget-object v9, Lcom/android/server/location/LgeGpsConstants;->TARGET_REGION:Ljava/lang/String;

    const-string v10, "region"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    sget-object v9, Lcom/android/server/location/LgeGpsConstants;->TARGET_DCOUNTRY:Ljava/lang/String;

    const-string v10, "dcountry"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    if-nez v6, :cond_4

    .line 807
    :cond_2
    const-string v8, "LgeGpsConstants"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " matchStatus() MATCHED![sbp1]operator-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/server/location/LgeGpsConstants;->TARGET_OPERATOR:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/country-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/server/location/LgeGpsConstants;->TARGET_COUNTRY:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/region-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/server/location/LgeGpsConstants;->TARGET_REGION:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/dcountry-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/server/location/LgeGpsConstants;->TARGET_DCOUNTRY:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/numeric-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/server/location/LgeGpsConstants;->PERSIST_NTCODE_MCCMNC_LIST:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 813
    :cond_3
    const-string v8, "LgeGpsConstants"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " matchStatus() MATCHED![sbp0]target_carrier(operator)-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/server/location/LgeGpsConstants;->TARGET_OPERATOR:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/target_country-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/server/location/LgeGpsConstants;->TARGET_COUNTRY:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    move v7, v8

    .line 819
    goto/16 :goto_1
.end method

.method public static readFile(Ljava/util/Properties;Ljava/lang/String;)Z
    .locals 8
    .param p0, "prop"    # Ljava/util/Properties;
    .param p1, "fpath"    # Ljava/lang/String;

    .prologue
    .line 295
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    .local v1, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 298
    .local v3, "stream":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 299
    .local v2, "ret":Z
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 301
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .local v4, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {p0, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 303
    const/4 v2, 0x1

    .line 311
    if-eqz v4, :cond_2

    .line 313
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 320
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return v2

    .line 314
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "LgeGpsConstants"

    const-string v6, "Closing FileInputStream for readFile is fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 316
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 304
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 305
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v5, "LgeGpsConstants"

    const-string v6, "unable to open the file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 306
    const/4 v2, 0x0

    .line 311
    if-eqz v3, :cond_0

    .line 313
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 314
    :catch_2
    move-exception v0

    .line 315
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "LgeGpsConstants"

    const-string v6, "Closing FileInputStream for readFile is fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 307
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 308
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v5, "LgeGpsConstants"

    const-string v6, "unable to load or close the stream"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 309
    const/4 v2, 0x0

    .line 311
    if-eqz v3, :cond_0

    .line 313
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 314
    :catch_4
    move-exception v0

    .line 315
    const-string v5, "LgeGpsConstants"

    const-string v6, "Closing FileInputStream for readFile is fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 311
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v3, :cond_1

    .line 313
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 316
    :cond_1
    :goto_4
    throw v5

    .line 314
    :catch_5
    move-exception v0

    .line 315
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "LgeGpsConstants"

    const-string v7, "Closing FileInputStream for readFile is fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 311
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 307
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 304
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :cond_2
    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method private searchParams(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "numeric"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 724
    const-string v3, "LgeGpsConstants"

    const-string v4, "ENTER searchParams()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    if-eqz p1, :cond_3

    .line 728
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 729
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 730
    invoke-direct {p0, p1}, Lcom/android/server/location/LgeGpsConstants;->getRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;

    move-result-object v1

    .line 731
    .local v1, "row":Landroid/content/ContentValues;
    if-nez v1, :cond_0

    .line 732
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Expected \'PARAM\' tag"

    const/4 v5, 0x0

    invoke-direct {v3, v4, p1, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 741
    .end local v1    # "row":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 742
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    const-string v3, "LgeGpsConstants"

    const-string v4, "Got XmlPullParserException while loading GNSSCONF."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 752
    const-string v3, "LgeGpsConstants"

    const-string v4, "EXIT searchParams()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 755
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    return-object v1

    .line 734
    .restart local v1    # "row":Landroid/content/ContentValues;
    :cond_0
    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/server/location/LgeGpsConstants;->insertAddingDefaults(Landroid/content/ContentValues;)V

    .line 735
    invoke-direct {p0, v1, p2}, Lcom/android/server/location/LgeGpsConstants;->matchStatus(Landroid/content/ContentValues;Ljava/lang/String;)Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 752
    const-string v2, "LgeGpsConstants"

    const-string v3, "EXIT searchParams()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 738
    :cond_1
    :try_start_3
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 744
    .end local v1    # "row":Landroid/content/ContentValues;
    :catch_1
    move-exception v0

    .line 745
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    const-string v3, "LgeGpsConstants"

    const-string v4, "Got IOException while loading GNSSCONF."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 752
    const-string v3, "LgeGpsConstants"

    const-string v4, "EXIT searchParams()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    const-string v3, "LgeGpsConstants"

    const-string v4, "EXIT searchParams()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v1, v2

    .line 755
    goto :goto_1

    .line 752
    :catchall_0
    move-exception v2

    const-string v3, "LgeGpsConstants"

    const-string v4, "EXIT searchParams()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v2
.end method

.method private setAgpsConfigParamsFromXml()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x10

    .line 633
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 635
    .local v0, "params":Landroid/content/ContentValues;
    const-string v1, "LgeGpsConstants"

    const-string v2, "ENTER setAgpsConfigParamsFromXml()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/16 v1, 0x688

    sput v1, Lcom/android/server/location/LgeGpsConstants;->MaskValue:I

    .line 650
    invoke-direct {p0, v3}, Lcom/android/server/location/LgeGpsConstants;->getAgpsConfigParamsFromXml(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 652
    if-eqz v0, :cond_0

    .line 653
    const-string v1, "LgeGpsConstants"

    const-string v2, "Newly updating gnss-conf.xml params."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const-string v1, "numeric"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/location/LgeGpsConstants;->Numeric:Ljava/lang/String;

    .line 656
    const-string v1, "ver"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0x"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/location/LgeGpsConstants;->SuplVersion:I

    .line 657
    const-string v1, "host"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/location/LgeGpsConstants;->SuplHost:Ljava/lang/String;

    .line 658
    const-string v1, "port"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/location/LgeGpsConstants;->SuplPort:I

    .line 659
    const-string v1, "tls"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/location/LgeGpsConstants;->SuplTLS:I

    .line 660
    const-string v1, "lpp"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/location/LgeGpsConstants;->LppProfile:I

    .line 661
    const-string v1, "aglo"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/location/LgeGpsConstants;->AglonassPosProtocolSelect:I

    .line 662
    const-string v1, "capa"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0x"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/location/LgeGpsConstants;->Capabilites:I

    .line 663
    const-string v1, "pos"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/location/LgeGpsConstants;->PositionMethod:I

    .line 665
    sget-object v1, Lcom/android/server/location/LgeGpsConstants;->mGpsStrConfMap:Ljava/util/HashMap;

    const-string v2, "VendorName"

    const-string v3, "operator"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    sget-object v1, Lcom/android/server/location/LgeGpsConstants;->mGpsStrConfMap:Ljava/util/HashMap;

    const-string v2, "LgeSuplServerHost"

    sget-object v3, Lcom/android/server/location/LgeGpsConstants;->SuplHost:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    sget-object v1, Lcom/android/server/location/LgeGpsConstants;->mGpsIntConfMap:Ljava/util/HashMap;

    const-string v2, "LgeSuplServerPort"

    sget v3, Lcom/android/server/location/LgeGpsConstants;->SuplPort:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    sget-object v1, Lcom/android/server/location/LgeGpsConstants;->mGpsIntConfMap:Ljava/util/HashMap;

    const-string v2, "LgeTlsMode"

    sget v3, Lcom/android/server/location/LgeGpsConstants;->SuplTLS:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    sget-object v1, Lcom/android/server/location/LgeGpsConstants;->mGpsIntConfMap:Ljava/util/HashMap;

    const-string v2, "PositionMode"

    sget v3, Lcom/android/server/location/LgeGpsConstants;->PositionMethod:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    invoke-direct {p0, v0}, Lcom/android/server/location/LgeGpsConstants;->setParams(Landroid/content/ContentValues;)V

    .line 684
    :goto_0
    const-string v1, "LgeGpsConstants"

    const-string v2, "EXIT setAgpsConfigParamsFromXml()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    return-void

    .line 674
    :cond_0
    sget v1, Lcom/android/server/location/LgeGpsConstants;->MaskValue:I

    and-int/lit16 v1, v1, -0x689

    sput v1, Lcom/android/server/location/LgeGpsConstants;->MaskValue:I

    .line 680
    invoke-direct {p0, v3}, Lcom/android/server/location/LgeGpsConstants;->setParams(Landroid/content/ContentValues;)V

    .line 681
    const-string v1, "LgeGpsConstants"

    const-string v2, "Has NO any gnss-conf.xml params. params is NULL."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    sput-object p0, Lcom/android/server/location/LgeGpsConstants;->mLgeContext:Landroid/content/Context;

    .line 218
    return-void
.end method

.method private setParams(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "params"    # Landroid/content/ContentValues;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/android/server/location/LgeGpsConstants;->contentValues:Landroid/content/ContentValues;

    .line 602
    return-void
.end method

.method private soundCtrl(Z)V
    .locals 5
    .param p1, "isOn"    # Z

    .prologue
    const/4 v4, 0x1

    .line 437
    const-string v1, "LgeGpsConstants"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "soundCtrl, mSoundOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/location/LgeGpsConstants;->mSoundOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v0, 0x0

    .line 440
    .local v0, "bNeedChange":Z
    iget-boolean v1, p0, Lcom/android/server/location/LgeGpsConstants;->mSoundOn:Z

    if-nez v1, :cond_2

    if-ne p1, v4, :cond_2

    .line 441
    const/4 v0, 0x1

    .line 450
    :goto_0
    if-ne v0, v4, :cond_1

    .line 451
    if-ne p1, v4, :cond_4

    .line 452
    iget-object v1, p0, Lcom/android/server/location/LgeGpsConstants;->mGPSSoundPlayer:Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;

    if-nez v1, :cond_0

    .line 453
    new-instance v1, Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;

    invoke-direct {v1}, Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/LgeGpsConstants;->mGPSSoundPlayer:Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/LgeGpsConstants;->mGPSSoundPlayer:Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;

    invoke-virtual {v1}, Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;->play()V

    .line 456
    const-string v1, "LgeGpsConstants"

    const-string v2, "sound start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :goto_1
    iput-boolean p1, p0, Lcom/android/server/location/LgeGpsConstants;->mSoundOn:Z

    .line 466
    :cond_1
    return-void

    .line 443
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/location/LgeGpsConstants;->mSoundOn:Z

    if-ne v1, v4, :cond_3

    if-nez p1, :cond_3

    .line 444
    const/4 v0, 0x1

    goto :goto_0

    .line 447
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 459
    :cond_4
    iget-object v1, p0, Lcom/android/server/location/LgeGpsConstants;->mGPSSoundPlayer:Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;

    if-eqz v1, :cond_5

    .line 460
    iget-object v1, p0, Lcom/android/server/location/LgeGpsConstants;->mGPSSoundPlayer:Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;

    invoke-virtual {v1}, Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;->release()V

    .line 462
    :cond_5
    const-string v1, "LgeGpsConstants"

    const-string v2, "sound stop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private vibratorCtrl(Z)V
    .locals 10
    .param p1, "isOn"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 469
    const-string v5, "LgeGpsConstants"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vibratorCtrl, mVibratorOn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/location/LgeGpsConstants;->mVibratorOn:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isOn:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, "bNeedChange":Z
    iget-boolean v5, p0, Lcom/android/server/location/LgeGpsConstants;->mVibratorOn:Z

    if-nez v5, :cond_0

    if-ne p1, v8, :cond_0

    .line 473
    const/4 v0, 0x1

    .line 482
    :goto_0
    if-ne v0, v8, :cond_3

    iget-object v5, p0, Lcom/android/server/location/LgeGpsConstants;->mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

    if-eqz v5, :cond_3

    .line 483
    if-ne p1, v8, :cond_4

    .line 484
    new-array v2, v9, [J

    fill-array-data v2, :array_0

    .line 485
    .local v2, "sVibratePattern":[J
    new-array v3, v9, [I

    .line 486
    .local v3, "vibPatternVol":[I
    iget-object v5, p0, Lcom/android/server/location/LgeGpsConstants;->mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

    iget-object v6, p0, Lcom/android/server/location/LgeGpsConstants;->mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

    invoke-interface {v5, v8}, Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;->getVibrateVolume(I)I

    move-result v4

    .line 488
    .local v4, "vibVol":I
    const-string v5, "LgeGpsConstants"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mVibrator vibVol"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v9, :cond_2

    .line 490
    aput v4, v3, v1

    .line 489
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 475
    .end local v1    # "i":I
    .end local v2    # "sVibratePattern":[J
    .end local v3    # "vibPatternVol":[I
    .end local v4    # "vibVol":I
    :cond_0
    iget-boolean v5, p0, Lcom/android/server/location/LgeGpsConstants;->mVibratorOn:Z

    if-ne v5, v8, :cond_1

    if-nez p1, :cond_1

    .line 476
    const/4 v0, 0x1

    goto :goto_0

    .line 479
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 493
    .restart local v1    # "i":I
    .restart local v2    # "sVibratePattern":[J
    .restart local v3    # "vibPatternVol":[I
    .restart local v4    # "vibVol":I
    :cond_2
    iget-object v5, p0, Lcom/android/server/location/LgeGpsConstants;->mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

    const/4 v6, 0x0

    invoke-interface {v5, v2, v6, v3}, Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;->vibrate([JI[I)V

    .line 494
    const-string v5, "LgeGpsConstants"

    const-string v6, "vib start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    .end local v1    # "i":I
    .end local v2    # "sVibratePattern":[J
    .end local v3    # "vibPatternVol":[I
    .end local v4    # "vibVol":I
    :goto_2
    iput-boolean p1, p0, Lcom/android/server/location/LgeGpsConstants;->mVibratorOn:Z

    .line 502
    :cond_3
    return-void

    .line 497
    :cond_4
    iget-object v5, p0, Lcom/android/server/location/LgeGpsConstants;->mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

    invoke-interface {v5}, Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;->cancel()V

    .line 498
    const-string v5, "LgeGpsConstants"

    const-string v6, "vib stop"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 484
    :array_0
    .array-data 8
        0x3e8
        0x3e8
    .end array-data
.end method


# virtual methods
.method public getParams()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/server/location/LgeGpsConstants;->contentValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method public lgeDefaultGnssConfig()V
    .locals 5

    .prologue
    .line 273
    const-string v2, "LgeGpsConstants"

    const-string v3, "LGE GNSS Ext Config Default"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/location/LgeGpsConstants;->LGE_GNSS_CONF_FILE:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 278
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 279
    const-string v2, "LgeGpsConstants"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/LgeGpsConstants;->LGE_GNSS_CONF_FILE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " delete fail !!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LgeGpsConstants"

    const-string v3, " LGE GNSS Ext Config Default Fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public lgeSaveGnssConfig(IILjava/lang/String;II)V
    .locals 9
    .param p1, "PositionMode"    # I
    .param p2, "SuplType"    # I
    .param p3, "SuplHost"    # Ljava/lang/String;
    .param p4, "SuplPort"    # I
    .param p5, "TlsMode"    # I

    .prologue
    .line 249
    const-string v5, "LgeGpsConstants"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LGE GNSS Ext Config Save, posMode ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", SuplType ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", SUPL_HOST ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", SUPL_PORT ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", TLS_MODE ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v3, 0x0

    .line 253
    .local v3, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/File;

    sget-object v5, Lcom/android/server/location/LgeGpsConstants;->LGE_GNSS_CONF_FILE:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    .local v2, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    .end local v3    # "writer":Ljava/io/FileWriter;
    .local v4, "writer":Ljava/io/FileWriter;
    :try_start_1
    const-string v5, "%s=%d\n%s=%d\n%s=%s\n%s=%d\n%s=%d\n"

    const/16 v6, 0xa

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "LGE_GPS_POSITION_MODE"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "SUPL_TYPE"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "SUPL_HOST"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    aput-object p3, v6, v7

    const/4 v7, 0x6

    const-string v8, "SUPL_PORT"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "LGE_TLS_MODE"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "config":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 265
    if-eqz v4, :cond_2

    .line 266
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 270
    .end local v0    # "config":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :cond_0
    :goto_0
    return-void

    .line 267
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v0    # "config":Ljava/lang/String;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    const-string v5, "LgeGpsConstants"

    const-string v6, "LG GNSS Config File close Fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_0

    .line 262
    .end local v0    # "config":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 263
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v5, "LgeGpsConstants"

    const-string v6, "LG GNSS Config File save Fail"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 265
    if-eqz v3, :cond_0

    .line 266
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 267
    :catch_2
    move-exception v1

    const-string v5, "LgeGpsConstants"

    const-string v6, "LG GNSS Config File close Fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_1

    .line 266
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 267
    :cond_1
    :goto_3
    throw v5

    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    const-string v6, "LgeGpsConstants"

    const-string v7, "LG GNSS Config File close Fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 265
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_2

    .line 262
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_1

    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v0    # "config":Ljava/lang/String;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :cond_2
    move-object v3, v4

    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_0
.end method

.method public setSUPLConfigParamsFromXml(Ljava/lang/String;)V
    .locals 4
    .param p1, "numeric"    # Ljava/lang/String;

    .prologue
    .line 607
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 608
    .local v0, "params":Landroid/content/ContentValues;
    const-string v1, "LgeGpsConstants"

    const-string v2, "ENTER setSUPLConfigParamsFromXml()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const/16 v1, 0x8

    sput v1, Lcom/android/server/location/LgeGpsConstants;->MaskValue:I

    .line 613
    invoke-direct {p0, p1}, Lcom/android/server/location/LgeGpsConstants;->getAgpsConfigParamsFromXml(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 615
    if-eqz v0, :cond_0

    .line 616
    const-string v1, "LgeGpsConstants"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Newly updating gnss-conf.xml params by numeric - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const-string v1, "ver"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0x"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/location/LgeGpsConstants;->SuplVersion:I

    .line 618
    const-string v1, "host"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/location/LgeGpsConstants;->SuplHost:Ljava/lang/String;

    .line 619
    const-string v1, "port"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/location/LgeGpsConstants;->SuplPort:I

    .line 620
    const-string v1, "tls"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/location/LgeGpsConstants;->SuplTLS:I

    .line 621
    const-string v1, "pos"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/location/LgeGpsConstants;->PositionMethod:I

    .line 622
    invoke-direct {p0, v0}, Lcom/android/server/location/LgeGpsConstants;->setParams(Landroid/content/ContentValues;)V

    .line 628
    :goto_0
    const-string v1, "LgeGpsConstants"

    const-string v2, "EXIT setSUPLConfigParamsFromXml()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    return-void

    .line 624
    :cond_0
    sget v1, Lcom/android/server/location/LgeGpsConstants;->MaskValue:I

    and-int/lit8 v1, v1, -0x9

    sput v1, Lcom/android/server/location/LgeGpsConstants;->MaskValue:I

    .line 625
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/location/LgeGpsConstants;->setParams(Landroid/content/ContentValues;)V

    .line 626
    const-string v1, "LgeGpsConstants"

    const-string v2, "Has NO any gnss-conf.xml params. params is NULL."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public soundVibControl()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 410
    sget-object v3, Lcom/android/server/location/LgeGpsConstants;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sound_gps_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 414
    .local v2, "nSoundSetting":I
    if-ne v2, v6, :cond_3

    iget-boolean v3, p0, Lcom/android/server/location/LgeGpsConstants;->mTracking:Z

    if-ne v3, v6, :cond_3

    .line 415
    sget-object v3, Lcom/android/server/location/LgeGpsConstants;->mLgeContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 416
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 417
    .local v1, "nRingerMode":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 418
    invoke-direct {p0, v6}, Lcom/android/server/location/LgeGpsConstants;->soundCtrl(Z)V

    .line 419
    invoke-direct {p0, v6}, Lcom/android/server/location/LgeGpsConstants;->vibratorCtrl(Z)V

    .line 434
    .end local v0    # "mAudioManager":Landroid/media/AudioManager;
    .end local v1    # "nRingerMode":I
    :cond_0
    :goto_0
    return-void

    .line 420
    .restart local v0    # "mAudioManager":Landroid/media/AudioManager;
    .restart local v1    # "nRingerMode":I
    :cond_1
    if-ne v1, v6, :cond_2

    .line 421
    invoke-direct {p0, v5}, Lcom/android/server/location/LgeGpsConstants;->soundCtrl(Z)V

    .line 422
    invoke-direct {p0, v6}, Lcom/android/server/location/LgeGpsConstants;->vibratorCtrl(Z)V

    goto :goto_0

    .line 425
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/server/location/LgeGpsConstants;->soundCtrl(Z)V

    .line 426
    invoke-direct {p0, v5}, Lcom/android/server/location/LgeGpsConstants;->vibratorCtrl(Z)V

    goto :goto_0

    .line 429
    .end local v0    # "mAudioManager":Landroid/media/AudioManager;
    .end local v1    # "nRingerMode":I
    :cond_3
    if-eqz v2, :cond_4

    iget-boolean v3, p0, Lcom/android/server/location/LgeGpsConstants;->mTracking:Z

    if-nez v3, :cond_0

    .line 430
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/server/location/LgeGpsConstants;->soundCtrl(Z)V

    .line 431
    invoke-direct {p0, v5}, Lcom/android/server/location/LgeGpsConstants;->vibratorCtrl(Z)V

    goto :goto_0
.end method
