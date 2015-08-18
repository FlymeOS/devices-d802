.class public final Lcom/lge/systemservice/core/LGContext;
.super Ljava/lang/Object;
.source "LGContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_API_SERVICE:Ljava/lang/String; = "lg_bluetoothapi_service"

.field public static final BLUETOOTH_SERVICE:Ljava/lang/String; = "BtLgeExt"

.field public static final BTFM_SERVICE:Ljava/lang/String; = "BTFM"

.field public static final CLIPTRAY_SERVICE:Ljava/lang/String; = "cliptray"

.field public static final DEATHMONITOR_SERVICE:Ljava/lang/String; = "deathmonitor"

.field public static final EMOTIONALLED_SERVICE:Ljava/lang/String; = "emotionled"

.field public static final FELICA_SERVICE:Ljava/lang/String; = "FeliCaService"

.field public static final INFOCOLLECTOR_SERVICE:Ljava/lang/String; = "infocollector"

.field public static final LECCP_SERVICE:Ljava/lang/String; = "leccp"

.field public static final LED_SERVICE:Ljava/lang/String; = "emotionled"

.field public static final LGDATAUI_SERVICE:Ljava/lang/String; = "lgdataui"

.field public static final LGDEVENC_SERVICE:Ljava/lang/String; = "lgdevencryption"

.field public static final LGDISPLAY_SERVICE:Ljava/lang/String; = "lgdisplay"

.field public static final LGNETWORKMANAGEMENT_HELPER_SERVICE:Ljava/lang/String; = "lgnetworkmanagementservice"

.field public static final LGPOWERMANAGER_HELPER_SERVICE:Ljava/lang/String; = "lgpowermanagerhelper"

.field public static final LGSDENC_SERVICE:Ljava/lang/String; = "lgsdencryption"

.field public static final LGTELEPHONY_SERVICE:Ljava/lang/String; = "phone"

.field public static final LOGCATCHER_SERVICE:Ljava/lang/String; = "logcatcher"

.field public static final NFC_SERVICE:Ljava/lang/String; = "nfcLgService"

.field public static final NV_SERVICE:Ljava/lang/String; = "nvitemservice"

.field public static final OS_SERVICE:Ljava/lang/String; = "osservice"

.field private static final SERVICE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;",
            ">;"
        }
    .end annotation
.end field

.field public static final SMARTCOVER_SERVICE:Ljava/lang/String; = "smartcover"

.field public static final TZMIRRORLINKINTERFACE_SERVICE:Ljava/lang/String; = "mirrorlinkservice"

.field public static final VOLUMEVIBRATOR_SERVICE:Ljava/lang/String; = "volumevibrator"

.field public static final WATCHNETSTORAGE_SERVICE:Ljava/lang/String; = "watchnetstorage"

.field public static final WFD_SERVICE:Ljava/lang/String; = "wfdService"

.field public static final WIFIEXT_SERVICE:Ljava/lang/String; = "wifiLgeExtService"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 263
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/systemservice/core/LGContext;->SERVICE_MAP:Ljava/util/Map;

    .line 296
    const-string v0, "emotionled"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$1;

    const-string v2, "com.lge.software.led"

    invoke-direct {v1, v2}, Lcom/lge/systemservice/core/LGContext$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 303
    const-string v0, "volumevibrator"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$2;

    const-string v2, "com.lge.software.volumevibrator"

    invoke-direct {v1, v2}, Lcom/lge/systemservice/core/LGContext$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 315
    const-string v0, "lgsdencryption"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$3;

    const-string v2, "com.lge.software.sdencryption"

    invoke-direct {v1, v2}, Lcom/lge/systemservice/core/LGContext$3;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 322
    const-string v0, "lgdevencryption"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$4;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$4;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 328
    const-string v0, "watchnetstorage"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$5;

    const-string v2, "com.lge.software.nfs"

    invoke-direct {v1, v2}, Lcom/lge/systemservice/core/LGContext$5;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 335
    const-string v0, "cliptray"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$6;

    const-string v2, "com.lge.software.cliptray"

    invoke-direct {v1, v2}, Lcom/lge/systemservice/core/LGContext$6;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 342
    const-string v0, "logcatcher"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$7;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$7;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 350
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_UI_SERVICE:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 351
    const-string v0, "lgdataui"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$8;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$8;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 360
    :cond_0
    const-string v0, "infocollector"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$9;

    const-string v2, "com.lge.software.infocollector"

    invoke-direct {v1, v2}, Lcom/lge/systemservice/core/LGContext$9;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 367
    const-string v0, "BTFM"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$10;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$10;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 375
    const-string v0, "wifiLgeExtService"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$11;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$11;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 382
    const-string v0, "BtLgeExt"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$12;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$12;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 389
    const-string v0, "lg_bluetoothapi_service"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$13;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$13;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 396
    const-string v0, "FeliCaService"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$14;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$14;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 403
    const-string v0, "wfdService"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$15;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$15;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 410
    const-string v0, "nfcLgService"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$16;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$16;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 417
    const-string v0, "osservice"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$17;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$17;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 424
    const-string v0, "nvitemservice"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$18;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$18;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 431
    const-string v0, "lgdisplay"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$19;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$19;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 438
    const-string v0, "lgpowermanagerhelper"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$20;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$20;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 445
    const-string v0, "deathmonitor"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$21;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$21;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 452
    const-string v0, "lgnetworkmanagementservice"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$22;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$22;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 459
    const-string v0, "mirrorlinkservice"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$23;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$23;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 466
    const-string v0, "SecureSettingsService"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$24;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$24;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 473
    const-string v0, "smartcover"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$25;

    invoke-direct {v1}, Lcom/lge/systemservice/core/LGContext$25;-><init>()V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 480
    const-string v0, "leccp"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$26;

    const-string v2, "com.lge.software.leccp"

    invoke-direct {v1, v2}, Lcom/lge/systemservice/core/LGContext$26;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 488
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$bool;->config_integrity_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    const-string v0, "integrity"

    new-instance v1, Lcom/lge/systemservice/core/LGContext$27;

    const-string v2, "com.lge.software.integrity"

    invoke-direct {v1, v2}, Lcom/lge/systemservice/core/LGContext$27;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGContext;->registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V

    .line 497
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p1, p0, Lcom/lge/systemservice/core/LGContext;->mContext:Landroid/content/Context;

    .line 238
    return-void
.end method

.method private static registerService(Ljava/lang/String;Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;)V
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "fetcher"    # Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;

    .prologue
    .line 267
    sget-object v0, Lcom/lge/systemservice/core/LGContext;->SERVICE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    return-void
.end method


# virtual methods
.method public getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 249
    sget-object v1, Lcom/lge/systemservice/core/LGContext;->SERVICE_MAP:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;

    .line 250
    .local v0, "fetcher":Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LGContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;->getService(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getServiceList()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    sget-object v0, Lcom/lge/systemservice/core/LGContext;->SERVICE_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
