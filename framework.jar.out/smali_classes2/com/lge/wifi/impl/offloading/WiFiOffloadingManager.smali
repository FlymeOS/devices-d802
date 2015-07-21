.class public Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;
.super Ljava/lang/Object;
.source "WiFiOffloadingManager.java"


# static fields
.field private static final EXTRA_PACKAGENAME:Ljava/lang/String; = "com.lge.intent.extra.PACKAGE_NAME"

.field private static final INTERNET_PERMISSION:Ljava/lang/String; = "android.permission.INTERNET"

.field private static final NET_PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_NETWORK_STATE"

.field public static final SERVICE_NAME:Ljava/lang/String; = "wifiOffloadingService"

.field private static final TAG:Ljava/lang/String; = "WiFiOffloadingManager"

.field public static final WIFI_OFFLOADING_BLACK_LIST:[Ljava/lang/String;

.field private static final WIFI_PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_WIFI_STATE"

.field private static deathBinderNotificator:Landroid/os/IBinder$DeathRecipient;

.field private static mWiFiOffloadingManager:Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

.field private static mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 34
    sput-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    .line 35
    sput-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingManager:Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

    .line 46
    const/16 v0, 0x3d

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.settings"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.LGSetupWizard"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.lge.AppSetupWizard"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.LGSetupWizardApp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.android.phone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.lge.LgHiddenMenu"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.gallery3d"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.lge.music"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.music"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.lge.videoplayer"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.lge.clock"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.android.calendar"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.lge.helpcenter"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.lge.deskhome"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.lge.smartshare"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.google.android.apps.maps"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.infraware.polarisoffice"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.pv.android.verizon.avod"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.pv.android.verizon.mod"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.vzw.hs.android.modlite"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.lge.hotspotprovision"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.lge.vvm"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.mobitv.client.nfl2010"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "com.vcast.mediamanager"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "com.vzw.hss.myverizon"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "com.vznavigator.VS9304G"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "com.vznavigator.VS9204G"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "com.vznavigator.VS9504G"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "com.vznavigator.VS8704G"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "com.vznavigator.VS8904G"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "com.vznavigator.VS9804G"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "com.vznavigator.VS8764G"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "com.lge.phonetestmode"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "com.lge.mobilehotspot.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "com.lge.mobilehotspot.util"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "itectokyo.sharegenie.app"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "itectokyo.fileshare.ics20"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "com.android.gallery3d"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "com.lge.music"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "com.lge.cloudvmm"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "com.vcast.service"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "com.lge.voicerecorder"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "com.lge.vzw.bua"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "com.lge.comsso.ssoclient"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "com.cequint.ecid"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "com.lge.filemanager"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "com.popcap.pvz"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "com.lge.tagplus.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "com.lge.app.richnote"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "com.verizon.messaging.vzmsgs"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "com.belkin.android.androidbelkinnetcam"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "com.androidhub"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "com.vcast.mediamanager"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "com.vzw.hs.android.modlite"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "com.verizon.messaging.vzmsgs"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "com.vznavigator.Tablet"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "com.vznavigator.Generic"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "com.lge.vzw.bua"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "com.lge.cloudservice"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->WIFI_OFFLOADING_BLACK_LIST:[Ljava/lang/String;

    .line 175
    new-instance v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager$1;

    invoke-direct {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager$1;-><init>()V

    sput-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->deathBinderNotificator:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method

.method private constructor <init>(Lcom/lge/wifi/impl/offloading/IWiFiOffloading;)V
    .locals 0
    .param p1, "service"    # Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    sput-object p1, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    .line 125
    return-void
.end method

.method private checkPermissionGranted()Z
    .locals 15

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 291
    const/4 v2, 0x0

    .line 292
    .local v2, "internet_permission":I
    const/4 v5, 0x0

    .line 293
    .local v5, "net_permission":I
    const/4 v9, 0x0

    .line 294
    .local v9, "wifi_permission":I
    const/4 v4, 0x0

    .line 295
    .local v4, "isPackageOk":Z
    const/4 v3, 0x0

    .line 301
    .local v3, "isIntentfilterOk":Z
    const-string v12, "WiFiOffloadingManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "checkPermissionGranted "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :try_start_0
    iget-object v12, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 305
    .local v7, "pm":Landroid/content/pm/PackageManager;
    iget-object v12, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mPackageName:Ljava/lang/String;

    const/16 v13, 0x1000

    invoke-virtual {v7, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 307
    .local v6, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 308
    .local v8, "requestedPermissions":[Ljava/lang/String;
    const-string v12, "WiFiOffloadingManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mPackageName "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    if-nez v8, :cond_0

    .line 311
    const-string v12, "WiFiOffloadingManager"

    const-string v13, "This package has no permission "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    if-ne v4, v10, :cond_7

    .line 354
    const-string v11, "Wifi"

    const-string v12, "finally launch offloading"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .end local v6    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "requestedPermissions":[Ljava/lang/String;
    :goto_1
    return v10

    .line 313
    .restart local v6    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    .restart local v8    # "requestedPermissions":[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    :try_start_1
    array-length v12, v8

    if-ge v1, v12, :cond_4

    .line 314
    aget-object v12, v8, v1

    const-string v13, "android.permission.INTERNET"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 315
    const-string v12, "WiFiOffloadingManager"

    const-string v13, "internet_permission = 1"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v2, 0x1

    .line 318
    :cond_1
    aget-object v12, v8, v1

    const-string v13, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 319
    const-string v12, "WiFiOffloadingManager"

    const-string v13, "net_permission =1;"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v5, 0x1

    .line 322
    :cond_2
    aget-object v12, v8, v1

    const-string v13, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 323
    const-string v12, "WiFiOffloadingManager"

    const-string/jumbo v13, "wifi_permission =1;"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 324
    const/4 v9, 0x1

    .line 313
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 327
    :cond_4
    if-ne v2, v10, :cond_6

    if-eq v5, v10, :cond_5

    if-ne v9, v10, :cond_6

    .line 328
    :cond_5
    const/4 v9, 0x0

    move v5, v9

    move v2, v9

    .line 329
    const/4 v4, 0x1

    goto :goto_0

    .line 331
    :cond_6
    const/4 v4, 0x0

    goto :goto_0

    .line 334
    .end local v1    # "i":I
    .end local v6    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "requestedPermissions":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v10, v11

    .line 335
    goto :goto_1

    .line 357
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v6    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    .restart local v8    # "requestedPermissions":[Ljava/lang/String;
    :cond_7
    const-string v10, "Wifi"

    const-string v12, "finally do not launch offloading"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v11

    .line 358
    goto :goto_1
.end method

.method public static getInstance()Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;
    .locals 2

    .prologue
    .line 158
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingManager:Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

    invoke-static {}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->getService()Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;-><init>(Lcom/lge/wifi/impl/offloading/IWiFiOffloading;)V

    sput-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingManager:Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

    .line 161
    const-string v0, "WiFiOffloadingManager"

    const-string v1, "Get a service instance in WiFiOffloadingManager() : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    if-nez v0, :cond_1

    .line 165
    invoke-static {}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->getService()Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    move-result-object v0

    sput-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    .line 166
    const-string v0, "WiFiOffloadingManager"

    const-string v1, "Get a service instance in WiFiOffloadingManager() : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_1
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingManager:Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;

    return-object v0
.end method

.method private getPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 401
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mIntent:Landroid/content/Intent;

    const-string v2, "com.lge.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "pkg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 406
    .end local v0    # "pkg":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "pkg":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getService()Lcom/lge/wifi/impl/offloading/IWiFiOffloading;
    .locals 5

    .prologue
    .line 132
    sget-object v2, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    if-eqz v2, :cond_0

    .line 133
    sget-object v2, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    .line 153
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v2

    .line 136
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string/jumbo v2, "wifiOffloadingService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 137
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    move-result-object v2

    sput-object v2, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    .line 146
    :try_start_0
    sget-object v2, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    if-eqz v2, :cond_1

    .line 147
    sget-object v2, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    invoke-interface {v2}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->deathBinderNotificator:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_1
    :goto_1
    sget-object v2, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    goto :goto_0

    .line 149
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private isAirplane()I
    .locals 3

    .prologue
    .line 396
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public disableBackgroundOffloading()V
    .locals 3

    .prologue
    .line 216
    sget-object v1, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    if-nez v1, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    :try_start_0
    sget-object v1, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    invoke-interface {v1}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading;->isWifiAPOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    sget-object v1, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    invoke-interface {v1}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading;->disable_background()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WiFiOffloadingManager"

    const-string v2, "WiFi Offloading enable error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disableWifioffloadTimerReminder()V
    .locals 2

    .prologue
    .line 455
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    if-nez v0, :cond_0

    .line 456
    const-string v0, "WiFiOffloadingManager"

    const-string v1, "mWiFiOffloadingService is null! on disableWifioffloadTimerReminder()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :goto_0
    return-void

    .line 459
    :cond_0
    :try_start_0
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    invoke-interface {v0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading;->disableWifioffloadTimerReminder()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 460
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getWifiOffloadingStart()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 243
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "Wifi_offloading_start"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 247
    :cond_0
    return v0
.end method

.method public isCheckedWifioffloadTimerReminder()I
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v10, 0x0

    .line 365
    const-wide/16 v0, 0x0

    .line 366
    .local v0, "curTime":J
    const-wide/16 v4, 0x0

    .line 367
    .local v4, "startTime":J
    const/4 v2, 0x0

    .line 369
    .local v2, "ret":I
    iget-object v3, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "wifi_offloading_timer_reminder"

    invoke-static {v3, v6, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    .line 371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 372
    const-string v3, "Wifi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCheckedWifioffloadTimerReminder() Timer : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v3, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "wifi_offloading_timer_start_time"

    invoke-static {v3, v6, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 374
    cmp-long v3, v4, v10

    if-eqz v3, :cond_0

    sub-long v6, v0, v4

    const-wide/32 v8, 0x2932e00

    cmp-long v3, v6, v8

    if-ltz v3, :cond_0

    .line 376
    const-string v3, "Wifi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCheckedWifioffloadTimerReminder Offloading Timer reset: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v0, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v3, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "wifi_offloading_timer_reminder"

    invoke-static {v3, v6, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 378
    iget-object v3, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "wifi_offloading_timer_start_time"

    invoke-static {v3, v6, v10, v11}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 379
    const/4 v2, 0x0

    .line 388
    :goto_0
    const-string v3, "Wifi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Does Current timer keep going :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return v2

    .line 381
    :cond_0
    const-string v3, "Wifi"

    const-string v6, "isCheckedWifioffloadTimerReminder Offloading Timer keep going:1 "

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v2, 0x1

    goto :goto_0

    .line 385
    :cond_1
    const-string v3, "Wifi"

    const-string v6, "isCheckedWifioffloadTimerReminder Offloading Timer keep going:2 "

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isOffloadingAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 252
    iput-object p2, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mIntent:Landroid/content/Intent;

    .line 253
    iput-object p1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mContext:Landroid/content/Context;

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "appBlocked":Z
    const/4 v2, 0x0

    .line 258
    .local v2, "wiFiOffloadingStart":Z
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mPackageName:Ljava/lang/String;

    .line 259
    const-string v3, "WiFiOffloadingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOffloadingAvailable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->WIFI_OFFLOADING_BLACK_LIST:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 263
    iget-object v3, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mPackageName:Ljava/lang/String;

    sget-object v4, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->WIFI_OFFLOADING_BLACK_LIST:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 264
    const-string v3, "WiFiOffloadingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WiFi Offloading found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->WIFI_OFFLOADING_BLACK_LIST:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "in the B-list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string v3, "WiFiOffloadingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WiFiOffloading checks Package Name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v3, "WiFiOffloadingManager"

    const-string v4, "WiFi Offloading found this application in the B-list"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v0, 0x1

    .line 274
    :cond_0
    if-nez v0, :cond_1

    .line 275
    invoke-direct {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->checkPermissionGranted()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->isCheckedWifioffloadTimerReminder()I

    move-result v3

    if-nez v3, :cond_3

    .line 276
    const-string v3, "WiFiOffloadingManager"

    const-string v4, "WiFi Offloading Ready to Launch"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v2, 0x1

    .line 284
    :cond_1
    :goto_1
    return v2

    .line 271
    :cond_2
    const/4 v0, 0x0

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    :cond_3
    const-string v3, "WiFiOffloadingManager"

    const-string v4, "This application is in B-List!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isOffloadingReminder_on()I
    .locals 2

    .prologue
    .line 441
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    if-nez v0, :cond_0

    .line 442
    const-string v0, "WiFiOffloadingManager"

    const-string v1, "mWiFiOffloadingService is null! on isOffloadingReminder_on()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 445
    :cond_0
    :try_start_0
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    invoke-interface {v0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading;->isOffloadingReminder_on()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 446
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isOffloadingTimer_on()Z
    .locals 2

    .prologue
    .line 426
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    if-nez v0, :cond_0

    .line 427
    const-string v0, "WiFiOffloadingManager"

    const-string v1, "mWiFiOffloadingService is null! on isOffloadingTimer_on()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 430
    :cond_0
    :try_start_0
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    invoke-interface {v0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading;->isOffloadingTimer_on()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 431
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isWifiOffloadingEnabled()I
    .locals 2

    .prologue
    .line 412
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    if-nez v0, :cond_0

    .line 413
    const-string v0, "WiFiOffloadingManager"

    const-string v1, "mWiFiOffloadingService is null! on isWifiOffloadingEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 416
    :cond_0
    :try_start_0
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    invoke-interface {v0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading;->isWifiOffloadingEnabled()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 417
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public processingOffloading()V
    .locals 3

    .prologue
    .line 188
    sget-object v1, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    if-nez v1, :cond_1

    .line 189
    const-string v1, "WiFiOffloadingManager"

    const-string v2, "mWiFiOffloadingService is null on processingOffloading()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    :try_start_0
    sget-object v1, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    invoke-interface {v1}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading;->init()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    :try_start_1
    sget-object v1, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading;->start(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    const-string v1, "WiFiOffloadingManager"

    const-string v2, "Could not start offloading in processingOffloading()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WiFiOffloadingManager"

    const-string v2, "Could not start offloading in processingOffloading()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 197
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 198
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "WiFiOffloadingManager"

    const-string v2, "Could not init offloading in processingOffloading()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetWifioffloadTimerReminder(I)Z
    .locals 2
    .param p1, "check"    # I

    .prologue
    .line 482
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    if-nez v0, :cond_0

    .line 483
    const-string v0, "WiFiOffloadingManager"

    const-string v1, "mWiFiOffloadingService is null! on resetWifioffloadTimerReminder()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 486
    :cond_0
    :try_start_0
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    invoke-interface {v0, p1}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading;->resetWifioffloadTimerReminder(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 487
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setWifiOffloadOngoing(Z)V
    .locals 2
    .param p1, "OffloadOngoing"    # Z

    .prologue
    .line 496
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    if-nez v0, :cond_0

    .line 497
    const-string v0, "WiFiOffloadingManager"

    const-string v1, "mWiFiOffloadingService is null! on setWifiOffloadingOngoing()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :goto_0
    return-void

    .line 500
    :cond_0
    :try_start_0
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    invoke-interface {v0, p1}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading;->setWifiOffloadOngoing(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 501
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setWifiOffloadingStart(I)V
    .locals 3
    .param p1, "WiFiOffloadingStart"    # I

    .prologue
    .line 233
    const-string v0, "WiFiOffloadingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[W Offloading] setWifiOffloadingStart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Wifi_offloading_start"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 238
    :cond_0
    return-void
.end method

.method public stopWifioffloadTimer()V
    .locals 2

    .prologue
    .line 468
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    if-nez v0, :cond_0

    .line 469
    const-string v0, "WiFiOffloadingManager"

    const-string v1, "mWiFiOffloadingService is null! on stopWifioffloadTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :goto_0
    return-void

    .line 472
    :cond_0
    :try_start_0
    sget-object v0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingManager;->mWiFiOffloadingService:Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    invoke-interface {v0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading;->stopWifioffloadTimer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 473
    :catch_0
    move-exception v0

    goto :goto_0
.end method
