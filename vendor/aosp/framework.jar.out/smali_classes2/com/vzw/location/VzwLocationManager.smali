.class public Lcom/vzw/location/VzwLocationManager;
.super Ljava/lang/Object;
.source "VzwLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;,
        Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final KEY_PROXIMITY_ENTERING:Ljava/lang/String; = "entering"

.field private static final TAG:Ljava/lang/String; = "VzwLocationManager"

.field private static final VERBOSE:Z = true

.field public static final VZW_LBS_PROVIDER:Ljava/lang/String; = "vzw_lbs"


# instance fields
.field private final TYPE_GPS_DELETE_ALL:Ljava/lang/String;

.field private final TYPE_GPS_DELETE_ALMANAC:Ljava/lang/String;

.field private final TYPE_GPS_DELETE_EPHEMERIS:Ljava/lang/String;

.field private final TYPE_GPS_DELETE_POSITION:Ljava/lang/String;

.field private final TYPE_GPS_DELETE_TIME:Ljava/lang/String;

.field private locMgr:Landroid/location/LocationManager;

.field private final mContext:Landroid/content/Context;

.field private mCriteria:Lcom/vzw/location/VzwCriteria;

.field private final mGpsStatusListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/vzw/location/VzwGpsStatus$Listener;",
            "Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/LocationListener;",
            "Lcom/vzw/location/VzwLocationManager$ListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/vzw/location/IVzwLocationManager;

.field private final mVzwGpsDeviceStatus:Lcom/vzw/location/VzwGpsDeviceStatus;

.field private final mVzwGpsStatus:Lcom/vzw/location/VzwGpsStatus;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vzw/location/IVzwLocationManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/vzw/location/IVzwLocationManager;

    .prologue
    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-string v0, "ephemeris"

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager;->TYPE_GPS_DELETE_EPHEMERIS:Ljava/lang/String;

    .line 89
    const-string v0, "position"

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager;->TYPE_GPS_DELETE_POSITION:Ljava/lang/String;

    .line 90
    const-string v0, "almanac"

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager;->TYPE_GPS_DELETE_ALMANAC:Ljava/lang/String;

    .line 91
    const-string/jumbo v0, "time"

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager;->TYPE_GPS_DELETE_TIME:Ljava/lang/String;

    .line 92
    const-string v0, "all"

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager;->TYPE_GPS_DELETE_ALL:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mListeners:Ljava/util/HashMap;

    .line 214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    .line 218
    new-instance v0, Lcom/vzw/location/VzwGpsStatus;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsStatus;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mVzwGpsStatus:Lcom/vzw/location/VzwGpsStatus;

    .line 219
    new-instance v0, Lcom/vzw/location/VzwGpsDeviceStatus;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsDeviceStatus;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mVzwGpsDeviceStatus:Lcom/vzw/location/VzwGpsDeviceStatus;

    .line 339
    iput-object p2, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    .line 340
    iput-object p1, p0, Lcom/vzw/location/VzwLocationManager;->mContext:Landroid/content/Context;

    .line 341
    return-void
.end method

.method private _addProximityAlert(DDJLandroid/app/PendingIntent;Ljava/lang/String;Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;)V
    .locals 13
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "expiration"    # J
    .param p7, "intent"    # Landroid/app/PendingIntent;
    .param p8, "packageName"    # Ljava/lang/String;
    .param p9, "cParams"    # Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;
    .param p10, "eParams"    # Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;
    .param p11, "pParams"    # Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;

    .prologue
    .line 1048
    const-string v2, "VzwLocationManager"

    const-string v3, "[_addProximityAlert] Entering"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    new-instance v1, Lcom/vzw/location/geofence/VzwGeoFenceParams;

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lcom/vzw/location/geofence/VzwGeoFenceParams;-><init>(DDJLandroid/app/PendingIntent;Ljava/lang/String;Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;)V

    .line 1052
    .local v1, "params":Lcom/vzw/location/geofence/VzwGeoFenceParams;
    :try_start_0
    const-string v2, "VzwLocationManager"

    const-string v3, "[_addProximityAlert] Calling mService.addProximityAlert(params)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v2, v1}, Lcom/vzw/location/IVzwLocationManager;->addProximityAlert(Lcom/vzw/location/geofence/VzwGeoFenceParams;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    :goto_0
    return-void

    .line 1054
    :catch_0
    move-exception v0

    .line 1055
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private _requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;ZLandroid/os/Looper;)V
    .locals 6
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "criteria"    # Lcom/vzw/location/VzwCriteria;
    .param p3, "listener"    # Landroid/location/LocationListener;
    .param p4, "isSingleshot"    # Z
    .param p5, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 311
    :try_start_0
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManager;->mListeners:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 313
    :try_start_1
    iget-object v3, p0, Lcom/vzw/location/VzwLocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vzw/location/VzwLocationManager$ListenerTransport;

    .line 314
    .local v2, "transport":Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    if-nez v2, :cond_0

    .line 315
    new-instance v2, Lcom/vzw/location/VzwLocationManager$ListenerTransport;

    .end local v2    # "transport":Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    invoke-direct {v2, p0, p3, p5}, Lcom/vzw/location/VzwLocationManager$ListenerTransport;-><init>(Lcom/vzw/location/VzwLocationManager;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 318
    .restart local v2    # "transport":Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    :cond_0
    iput-object p2, p0, Lcom/vzw/location/VzwLocationManager;->mCriteria:Lcom/vzw/location/VzwCriteria;

    .line 319
    iget-object v3, p0, Lcom/vzw/location/VzwLocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v3, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    iget-object v5, p0, Lcom/vzw/location/VzwLocationManager;->mCriteria:Lcom/vzw/location/VzwCriteria;

    invoke-interface {v3, p1, v5, v2, p4}, Lcom/vzw/location/IVzwLocationManager;->requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/ILocationListener;Z)V

    .line 324
    monitor-exit v4

    .line 330
    .end local v2    # "transport":Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    :goto_0
    return-void

    .line 324
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "VzwLocationManager"

    const-string v4, "[_requestLocationUpdates] DeadObjectException : "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 327
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 328
    .local v1, "se":Ljava/lang/SecurityException;
    throw v1
.end method

.method static synthetic access$100(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/VzwGpsStatus;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/VzwLocationManager;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mVzwGpsStatus:Lcom/vzw/location/VzwGpsStatus;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/VzwGpsDeviceStatus;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/VzwLocationManager;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mVzwGpsDeviceStatus:Lcom/vzw/location/VzwGpsDeviceStatus;

    return-object v0
.end method


# virtual methods
.method public ResetGps(I)Z
    .locals 7
    .param p1, "resetType"    # I

    .prologue
    const/4 v6, 0x1

    .line 1078
    const-string v4, "VzwLocationManager"

    const-string v5, "ResetGps() is called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gps"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 1083
    .local v0, "bGpsEnabled":Z
    if-nez v0, :cond_0

    .line 1085
    const-string v4, "VzwLocationManager"

    const-string v5, "Location Providers are not initialized."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    const/4 v2, 0x0

    .line 1114
    :goto_0
    return v2

    .line 1089
    :cond_0
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManager;->mContext:Landroid/content/Context;

    const-string v5, "location"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    iput-object v4, p0, Lcom/vzw/location/VzwLocationManager;->locMgr:Landroid/location/LocationManager;

    .line 1090
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1091
    .local v1, "extras":Landroid/os/Bundle;
    const-string v3, "all"

    .line 1092
    .local v3, "type":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1106
    const-string v3, "all"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1110
    :goto_1
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManager;->locMgr:Landroid/location/LocationManager;

    const-string v5, "gps"

    const-string v6, "delete_aiding_data"

    invoke-virtual {v4, v5, v6, v1}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    .line 1112
    .local v2, "ret":Z
    const-string v4, "VzwLocationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / SendExtraCommand Successful? : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1094
    .end local v2    # "ret":Z
    :pswitch_0
    const-string v3, "ephemeris"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1097
    :pswitch_1
    const-string v3, "position"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1100
    :pswitch_2
    const-string v3, "almanac"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1103
    :pswitch_3
    const-string/jumbo v3, "time"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1092
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public addProximityAlert(DDFFFFFFIJLandroid/app/PendingIntent;)V
    .locals 15
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "semiMajor"    # F
    .param p6, "semiMajor_min"    # F
    .param p7, "semiMajor_max"    # F
    .param p8, "semiMinor"    # F
    .param p9, "semiMinor_min"    # F
    .param p10, "semiMinor_max"    # F
    .param p11, "semiMinor_angle"    # I
    .param p12, "expiration"    # J
    .param p14, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 980
    const-string v2, "VzwLocationManager"

    const-string v3, "[addProximityAlert] Entering (Area Type : Ellipse)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    const-string v2, "VzwLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[addProximityAlert] latitude = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", longitude = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", semiMajor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", semiMajor_min = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", semiMajor_max = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", semiMinor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", semiMinor_min = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", semiMinor_max = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", semiMinor_angle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p11

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", expiration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p12

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", intent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p14

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpl-double v2, v2, p1

    if-gtz v2, :cond_0

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpg-double v2, v2, p1

    if-ltz v2, :cond_0

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpl-double v2, v2, p3

    if-gtz v2, :cond_0

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpg-double v2, v2, p3

    if-gez v2, :cond_1

    .line 989
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "[addProximityAlert] latitude or longitude is out of range."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 992
    :cond_1
    if-ltz p11, :cond_2

    const/16 v2, 0xb3

    move/from16 v0, p11

    if-le v0, v2, :cond_3

    .line 993
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "[addProximityAlert] semiMinor_angle must be set between 0 ~ 179."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 998
    :cond_3
    const/4 v2, 0x0

    move/from16 v0, p5

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    move/from16 v0, p8

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_5

    .line 999
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p6, v2

    if-ltz v2, :cond_4

    const v2, 0x47c35000    # 100000.0f

    cmpl-float v2, p6, v2

    if-gtz v2, :cond_4

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p7, v2

    if-ltz v2, :cond_4

    const v2, 0x48127c00    # 150000.0f

    cmpl-float v2, p7, v2

    if-gtz v2, :cond_4

    cmpl-float v2, p6, p7

    if-gtz v2, :cond_4

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p9, v2

    if-ltz v2, :cond_4

    const v2, 0x47c35000    # 100000.0f

    cmpl-float v2, p9, v2

    if-gtz v2, :cond_4

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p10, v2

    if-ltz v2, :cond_4

    const v2, 0x48127c00    # 150000.0f

    cmpl-float v2, p10, v2

    if-gtz v2, :cond_4

    cmpl-float v2, p9, p10

    if-lez v2, :cond_8

    .line 1003
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "[addProximityAlert] min or max is out of range."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1005
    :cond_5
    const/4 v2, 0x0

    cmpl-float v2, p5, v2

    if-lez v2, :cond_7

    const v2, 0x48127c00    # 150000.0f

    cmpg-float v2, p5, v2

    if-gez v2, :cond_7

    const/4 v2, 0x0

    cmpl-float v2, p8, v2

    if-lez v2, :cond_7

    const v2, 0x48127c00    # 150000.0f

    cmpg-float v2, p8, v2

    if-gez v2, :cond_7

    .line 1010
    const/4 v2, 0x0

    move/from16 v0, p6

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    move/from16 v0, p7

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    move/from16 v0, p9

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    move/from16 v0, p10

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_8

    .line 1012
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "[addProximityAlert] min and max should be set 0."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1014
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1016
    :cond_8
    const-string v2, "VzwLocationManager"

    const-string v3, "[addProximityAlert] All parameters seem okay. Calling _addProximityAlert()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-instance v2, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    invoke-direct/range {v2 .. v9}, Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;-><init>(FFFFFFI)V

    const/4 v14, 0x0

    move-object v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p12

    move-object/from16 v10, p14

    move-object v13, v2

    invoke-direct/range {v3 .. v14}, Lcom/vzw/location/VzwLocationManager;->_addProximityAlert(DDJLandroid/app/PendingIntent;Ljava/lang/String;Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;)V

    .line 1020
    return-void
.end method

.method public addProximityAlert(DDFFFJLandroid/app/PendingIntent;)V
    .locals 17
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # F
    .param p6, "radius_min"    # F
    .param p7, "radius_max"    # F
    .param p8, "expiration"    # J
    .param p10, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 923
    const-string v4, "VzwLocationManager"

    const-string v5, "[addProximityAlert] Entering (Area Type : Circle)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const-string v4, "VzwLocationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[addProximityAlert] latitude = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | longitude = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | radius = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | radius_min = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | radius_max = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | expiration = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p8

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | intent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p10

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpl-double v4, v4, p1

    if-gtz v4, :cond_0

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpg-double v4, v4, p1

    if-ltz v4, :cond_0

    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpl-double v4, v4, p3

    if-gtz v4, :cond_0

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpg-double v4, v4, p3

    if-gez v4, :cond_1

    .line 929
    :cond_0
    const-string v4, "VzwLocationManager"

    const-string v5, "[addProximityAlert] Latitude or longitude is out of range."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 934
    :cond_1
    const/4 v4, 0x0

    move/from16 v0, p5

    invoke-static {v0, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_3

    .line 935
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, p6, v4

    if-ltz v4, :cond_2

    const v4, 0x47c35000    # 100000.0f

    cmpl-float v4, p6, v4

    if-gtz v4, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, p7, v4

    if-ltz v4, :cond_2

    const v4, 0x48127c00    # 150000.0f

    cmpl-float v4, p7, v4

    if-gtz v4, :cond_2

    cmpl-float v4, p6, p7

    if-ltz v4, :cond_6

    .line 937
    :cond_2
    const-string v4, "VzwLocationManager"

    const-string v5, "[addProximityAlert] Radius min and max should be set 0."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 940
    :cond_3
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v4, p5

    if-gtz v4, :cond_5

    const v4, 0x47c35000    # 100000.0f

    cmpg-float v4, p5, v4

    if-gtz v4, :cond_5

    .line 943
    const/4 v4, 0x0

    move/from16 v0, p6

    invoke-static {v0, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x0

    move/from16 v0, p7

    invoke-static {v0, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_6

    .line 944
    :cond_4
    const-string v4, "VzwLocationManager"

    const-string v5, "[addProximityAlert] When radius is not 0, radius min and max should be set as 0."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 948
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "[addProximityAlert] Radius is out of range."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 950
    :cond_6
    const-string v4, "VzwLocationManager"

    const-string v5, "[addProximityAlert] Calling _addProximityAlert()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vzw/location/VzwLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;

    move/from16 v0, p5

    move/from16 v1, p6

    move/from16 v2, p7

    invoke-direct {v14, v0, v1, v2}, Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;-><init>(FFF)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    invoke-direct/range {v5 .. v16}, Lcom/vzw/location/VzwLocationManager;->_addProximityAlert(DDJLandroid/app/PendingIntent;Ljava/lang/String;Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;)V

    .line 953
    return-void
.end method

.method public addProximityAlert(DDLcom/vzw/location/PolygonArea;JLandroid/app/PendingIntent;)V
    .locals 15
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "polygonArea"    # Lcom/vzw/location/PolygonArea;
    .param p6, "expiration"    # J
    .param p8, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1035
    const-string v2, "VzwLocationManager"

    const-string v3, "[addProximityAlert] Entering (Area Type : Polygon)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    const-string v2, "VzwLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[addProximityAlert] latitude="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | longitude="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | expiration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    const-string v2, "VzwLocationManager"

    const-string v3, "[addProximityAlert] Calling _addProximityAlert()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v14, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;

    move-object/from16 v0, p5

    invoke-direct {v14, v0}, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;-><init>(Lcom/vzw/location/PolygonArea;)V

    move-object v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    invoke-direct/range {v3 .. v14}, Lcom/vzw/location/VzwLocationManager;->_addProximityAlert(DDJLandroid/app/PendingIntent;Ljava/lang/String;Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;)V

    .line 1041
    return-void
.end method

.method public addVzwGpsStatusListener(Lcom/vzw/location/VzwGpsStatus$Listener;)Z
    .locals 5
    .param p1, "listener"    # Lcom/vzw/location/VzwGpsStatus$Listener;

    .prologue
    .line 379
    const-string v3, "VzwLocationManager"

    const-string v4, "[addVzwGpsStatusListener] Entering."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v3, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 382
    const/4 v1, 0x1

    .line 401
    :cond_0
    :goto_0
    return v1

    .line 386
    :cond_1
    :try_start_0
    const-string v3, "VzwLocationManager"

    const-string v4, "[addVzwGpsStatusListener] Create new VzwGpsStatusListenerTransport object."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    new-instance v2, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;

    invoke-direct {v2, p0, p1}, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;-><init>(Lcom/vzw/location/VzwLocationManager;Lcom/vzw/location/VzwGpsStatus$Listener;)V

    .line 388
    .local v2, "transport":Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;
    const-string v3, "VzwLocationManager"

    const-string v4, "[addVzwGpsStatusListener] Calling mService.addVzwGpsStatusListener(transport)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v3, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v3, v2}, Lcom/vzw/location/IVzwLocationManager;->addVzwGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)Z

    move-result v1

    .line 391
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 392
    const-string v3, "VzwLocationManager"

    const-string v4, "[addVzwGpsStatusListener] VzwGpsStatusListener successfully added. Put this listener to GpsStatusListners HashMap."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v3, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 395
    .end local v1    # "result":Z
    .end local v2    # "transport":Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "VzwLocationManager"

    const-string v4, "[addVzwGpsStatusListener] RemoteException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 398
    const/4 v1, 0x0

    .restart local v1    # "result":Z
    goto :goto_0
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 411
    const-string v1, "VzwLocationManager"

    const-string v2, "[getAllProviders] Entering."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v1}, Lcom/vzw/location/IVzwLocationManager;->getAllProviders()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 418
    :goto_0
    return-object v1

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VzwLocationManager"

    const-string v2, "[getAllProviders] RemoteException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 418
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBestProvider(Z)Ljava/lang/String;
    .locals 3
    .param p1, "enabledOnly"    # Z

    .prologue
    .line 430
    const-string v1, "VzwLocationManager"

    const-string v2, "[getBestProvider] Entering."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v1, p1}, Lcom/vzw/location/IVzwLocationManager;->getBestProvider(Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 437
    :goto_0
    return-object v1

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VzwLocationManager"

    const-string v2, "[getBestProvider] RemoteException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 437
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProvider(Ljava/lang/String;)Lcom/vzw/location/VzwLocationProvider;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 486
    const-string v5, "VzwLocationManager"

    const-string v6, "[getProvider] Entering."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    if-nez p1, :cond_0

    .line 489
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "name==null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 494
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v5, p1}, Lcom/vzw/location/IVzwLocationManager;->getProviderInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 496
    .local v1, "pInfo":Landroid/os/Bundle;
    if-nez v1, :cond_1

    move-object v2, v4

    .line 516
    .end local v1    # "pInfo":Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 499
    .restart local v1    # "pInfo":Landroid/os/Bundle;
    :cond_1
    const-string v5, "VzwLocationManager"

    const-string v6, "[getProvider] Create DummyLocationProvider."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    new-instance v2, Lcom/vzw/location/VzwDummyLocationProvider;

    const/4 v5, 0x0

    invoke-direct {v2, p1, v5}, Lcom/vzw/location/VzwDummyLocationProvider;-><init>(Ljava/lang/String;Lcom/vzw/location/IVzwLocationManager;)V

    .line 502
    .local v2, "provider":Lcom/vzw/location/VzwDummyLocationProvider;
    const-string v5, "network"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/vzw/location/VzwDummyLocationProvider;->setRequiresNetwork(Z)V

    .line 503
    const-string v5, "satellite"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/vzw/location/VzwDummyLocationProvider;->setRequiresSatellite(Z)V

    .line 504
    const-string v5, "cell"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/vzw/location/VzwDummyLocationProvider;->setRequiresCell(Z)V

    .line 505
    const-string v5, "cost"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/vzw/location/VzwDummyLocationProvider;->setHasMonetaryCost(Z)V

    .line 506
    const-string v5, "altitude"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/vzw/location/VzwDummyLocationProvider;->setSupportsAltitude(Z)V

    .line 507
    const-string/jumbo v5, "speed"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/vzw/location/VzwDummyLocationProvider;->setSupportsSpeed(Z)V

    .line 508
    const-string v5, "bearing"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/vzw/location/VzwDummyLocationProvider;->setSupportsBearing(Z)V

    .line 509
    const-string v5, "power"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/vzw/location/VzwDummyLocationProvider;->setPowerRequirement(I)V

    .line 510
    const-string v5, "accuracy"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/vzw/location/VzwDummyLocationProvider;->setAccuracy(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 513
    .end local v1    # "pInfo":Landroid/os/Bundle;
    .end local v2    # "provider":Lcom/vzw/location/VzwDummyLocationProvider;
    :catch_0
    move-exception v0

    .line 514
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v5, "VzwLocationManager"

    const-string v6, "[getProvider] RemoteException."

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 515
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v2, v4

    .line 516
    goto :goto_0

    .line 517
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 518
    .local v3, "se":Ljava/lang/SecurityException;
    throw v3
.end method

.method public getProviders(Z)Ljava/util/List;
    .locals 3
    .param p1, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 885
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v1, p1}, Lcom/vzw/location/IVzwLocationManager;->getProviders(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 888
    :goto_0
    return-object v1

    .line 886
    :catch_0
    move-exception v0

    .line 887
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "VzwLocationManager"

    const-string v2, "[getProviders] RemoteException : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 888
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVzwGpsDeviceStatus(Lcom/vzw/location/VzwGpsDeviceStatus;)Lcom/vzw/location/VzwGpsDeviceStatus;
    .locals 2
    .param p1, "status"    # Lcom/vzw/location/VzwGpsDeviceStatus;

    .prologue
    .line 466
    const-string v0, "VzwLocationManager"

    const-string v1, "[getVzwGpsDeviceStatus] Entering."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    if-nez p1, :cond_0

    .line 469
    new-instance p1, Lcom/vzw/location/VzwGpsDeviceStatus;

    .end local p1    # "status":Lcom/vzw/location/VzwGpsDeviceStatus;
    invoke-direct {p1}, Lcom/vzw/location/VzwGpsDeviceStatus;-><init>()V

    .line 472
    .restart local p1    # "status":Lcom/vzw/location/VzwGpsDeviceStatus;
    :cond_0
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mVzwGpsDeviceStatus:Lcom/vzw/location/VzwGpsDeviceStatus;

    invoke-virtual {p1, v0}, Lcom/vzw/location/VzwGpsDeviceStatus;->setStatus(Lcom/vzw/location/VzwGpsDeviceStatus;)V

    .line 474
    return-object p1
.end method

.method public getVzwGpsStatus(Lcom/vzw/location/VzwGpsStatus;)Lcom/vzw/location/VzwGpsStatus;
    .locals 2
    .param p1, "status"    # Lcom/vzw/location/VzwGpsStatus;

    .prologue
    .line 447
    const-string v0, "VzwLocationManager"

    const-string v1, "[getVzwGpsStatus] Client is getting getVzwGpsStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    if-nez p1, :cond_0

    .line 450
    new-instance p1, Lcom/vzw/location/VzwGpsStatus;

    .end local p1    # "status":Lcom/vzw/location/VzwGpsStatus;
    invoke-direct {p1}, Lcom/vzw/location/VzwGpsStatus;-><init>()V

    .line 453
    .restart local p1    # "status":Lcom/vzw/location/VzwGpsStatus;
    :cond_0
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mVzwGpsStatus:Lcom/vzw/location/VzwGpsStatus;

    invoke-virtual {p1, v0}, Lcom/vzw/location/VzwGpsStatus;->setStatus(Lcom/vzw/location/VzwGpsStatus;)V

    .line 455
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsStatus;->dumpInfo()V

    .line 457
    return-object p1
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 7
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 532
    const-string v4, "VzwLocationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isProviderEnabled] Provider = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    if-nez p1, :cond_0

    .line 535
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "[isProviderEnabled] Provider is null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 539
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v4, p1}, Lcom/vzw/location/IVzwLocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 540
    .local v0, "bProviderCheck":Z
    const-string v4, "VzwLocationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isProviderEnabled] What is bProviderCheck? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 547
    .end local v0    # "bProviderCheck":Z
    :goto_0
    return v0

    .line 542
    :catch_0
    move-exception v1

    .line 543
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "VzwLocationManager"

    const-string v5, "[isProviderEnabled] RemoteException."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 544
    goto :goto_0

    .line 545
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 546
    .local v2, "se":Ljava/lang/SecurityException;
    const-string v4, "VzwLocationManager"

    const-string v5, "[isProviderEnabled] SecurityException."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 547
    goto :goto_0
.end method

.method public removeProximityAlert(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1064
    const-string v1, "VzwLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[removeProximityAlert] intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v1, p1}, Lcom/vzw/location/IVzwLocationManager;->removeProximityAlert(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    :goto_0
    return-void

    .line 1067
    :catch_0
    move-exception v0

    .line 1068
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "VzwLocationManager"

    const-string v2, "[removeProximityAlert] RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeUpdates(Landroid/location/LocationListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/location/LocationListener;

    .prologue
    .line 580
    const-string v2, "VzwLocationManager"

    const-string v3, "[removeUpdates] Entering."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    if-nez p1, :cond_0

    .line 583
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "[removeUpdates] listener is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 587
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwLocationManager$ListenerTransport;

    .line 588
    .local v1, "transport":Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    if-eqz v1, :cond_1

    .line 589
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v2, v1}, Lcom/vzw/location/IVzwLocationManager;->removeUpdates(Lcom/vzw/location/ILocationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    .end local v1    # "transport":Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    :cond_1
    :goto_0
    return-void

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "VzwLocationManager"

    const-string v3, "[removeUpdates] RemoteException."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeVzwGpsStatusListener(Lcom/vzw/location/VzwGpsStatus$Listener;)V
    .locals 4
    .param p1, "listener"    # Lcom/vzw/location/VzwGpsStatus$Listener;

    .prologue
    .line 557
    if-nez p1, :cond_0

    .line 558
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "[removeVzwGpsStatusListener] listener is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 562
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;

    .line 563
    .local v1, "transport":Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;
    if-eqz v1, :cond_1

    .line 564
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v2, v1}, Lcom/vzw/location/IVzwLocationManager;->removeVzwGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    .end local v1    # "transport":Lcom/vzw/location/VzwLocationManager$VzwGpsStatusListenerTransport;
    :cond_1
    :goto_0
    return-void

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "VzwLocationManager"

    const-string v3, "[removeVzwGpsStatusListener] RemoteException."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationListener;)V
    .locals 7
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/location/LocationListener;

    .prologue
    .line 613
    if-nez p1, :cond_0

    .line 614
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    :cond_0
    if-nez p2, :cond_1

    .line 618
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 621
    :cond_1
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mCriteria:Lcom/vzw/location/VzwCriteria;

    if-nez v0, :cond_2

    .line 622
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no previous Criteria set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    .line 627
    .local v5, "looper":Landroid/os/Looper;
    if-nez v5, :cond_3

    .line 628
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "thread has no looper"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 632
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mCriteria:Lcom/vzw/location/VzwCriteria;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/vzw/location/VzwLocationManager;->_requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;ZLandroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    :goto_0
    return-void

    .line 633
    :catch_0
    move-exception v6

    .line 634
    .local v6, "se":Ljava/lang/SecurityException;
    const-string v0, "VzwLocationManager"

    const-string v1, "[requestLocationUpdates] SecurityException : "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 7
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 689
    if-nez p1, :cond_0

    .line 690
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 693
    :cond_0
    if-nez p2, :cond_1

    .line 694
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_1
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mCriteria:Lcom/vzw/location/VzwCriteria;

    if-nez v0, :cond_2

    .line 698
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no previous Criteria set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mCriteria:Lcom/vzw/location/VzwCriteria;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/vzw/location/VzwLocationManager;->_requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;ZLandroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    :goto_0
    return-void

    .line 703
    :catch_0
    move-exception v6

    .line 704
    .local v6, "se":Ljava/lang/SecurityException;
    const-string v0, "VzwLocationManager"

    const-string v1, "[requestLocationUpdates] SecurityException : "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;)V
    .locals 7
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "vzwCriteria"    # Lcom/vzw/location/VzwCriteria;
    .param p3, "listener"    # Landroid/location/LocationListener;

    .prologue
    .line 651
    if-nez p1, :cond_0

    .line 652
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
    :cond_0
    if-nez p3, :cond_1

    .line 656
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 659
    :cond_1
    if-nez p2, :cond_2

    .line 660
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "vzwCriteria==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    .line 665
    .local v5, "looper":Landroid/os/Looper;
    if-nez v5, :cond_3

    .line 666
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "thread has no looper"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 670
    :cond_3
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/vzw/location/VzwLocationManager;->_requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;ZLandroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    :goto_0
    return-void

    .line 671
    :catch_0
    move-exception v6

    .line 672
    .local v6, "se":Ljava/lang/SecurityException;
    const-string v0, "VzwLocationManager"

    const-string v1, "[requestLocationUpdates] SecurityException : "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 7
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "vzwCriteria"    # Lcom/vzw/location/VzwCriteria;
    .param p3, "listener"    # Landroid/location/LocationListener;
    .param p4, "looper"    # Landroid/os/Looper;

    .prologue
    .line 720
    if-nez p1, :cond_0

    .line 721
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_0
    if-nez p3, :cond_1

    .line 725
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_1
    if-nez p2, :cond_2

    .line 729
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "vzwCriteria==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 733
    :cond_2
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/vzw/location/VzwLocationManager;->_requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;ZLandroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :goto_0
    return-void

    .line 734
    :catch_0
    move-exception v6

    .line 735
    .local v6, "se":Ljava/lang/SecurityException;
    const-string v0, "VzwLocationManager"

    const-string v1, "[requestLocationUpdates] SecurityException : "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestSingleLocationUpdate(Ljava/lang/String;Landroid/location/LocationListener;)V
    .locals 7
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/location/LocationListener;

    .prologue
    .line 753
    if-nez p1, :cond_0

    .line 754
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 757
    :cond_0
    if-nez p2, :cond_1

    .line 758
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 761
    :cond_1
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mCriteria:Lcom/vzw/location/VzwCriteria;

    if-nez v0, :cond_2

    .line 762
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no previous Criteria set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 765
    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    .line 767
    .local v5, "looper":Landroid/os/Looper;
    if-nez v5, :cond_3

    .line 768
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "thread has no looper"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 772
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mCriteria:Lcom/vzw/location/VzwCriteria;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/vzw/location/VzwLocationManager;->_requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;ZLandroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    :goto_0
    return-void

    .line 773
    :catch_0
    move-exception v6

    .line 774
    .local v6, "se":Ljava/lang/SecurityException;
    const-string v0, "VzwLocationManager"

    const-string v1, "[requestSingleLocationUpdate] SecurityException : "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestSingleLocationUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 7
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 831
    if-nez p1, :cond_0

    .line 832
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 835
    :cond_0
    if-nez p2, :cond_1

    .line 836
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 839
    :cond_1
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mCriteria:Lcom/vzw/location/VzwCriteria;

    if-nez v0, :cond_2

    .line 840
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no previous Criteria set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 844
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mCriteria:Lcom/vzw/location/VzwCriteria;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/vzw/location/VzwLocationManager;->_requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;ZLandroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    :goto_0
    return-void

    .line 845
    :catch_0
    move-exception v6

    .line 846
    .local v6, "se":Ljava/lang/SecurityException;
    const-string v0, "VzwLocationManager"

    const-string v1, "[requestSingleLocationUpdate] SecurityException : "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestSingleLocationUpdate(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;)V
    .locals 7
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "vzwCriteria"    # Lcom/vzw/location/VzwCriteria;
    .param p3, "listener"    # Landroid/location/LocationListener;

    .prologue
    .line 792
    if-nez p1, :cond_0

    .line 793
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 796
    :cond_0
    if-nez p3, :cond_1

    .line 797
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 800
    :cond_1
    if-nez p2, :cond_2

    .line 801
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "vzwCriteria==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 804
    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    .line 806
    .local v5, "looper":Landroid/os/Looper;
    if-nez v5, :cond_3

    .line 807
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "thread has no looper"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 811
    :cond_3
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/vzw/location/VzwLocationManager;->_requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;ZLandroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    :goto_0
    return-void

    .line 812
    :catch_0
    move-exception v6

    .line 813
    .local v6, "se":Ljava/lang/SecurityException;
    const-string v0, "VzwLocationManager"

    const-string v1, "[requestSingleLocationUpdate] SecurityException : "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestSingleLocationUpdate(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 7
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "vzwCriteria"    # Lcom/vzw/location/VzwCriteria;
    .param p3, "listener"    # Landroid/location/LocationListener;
    .param p4, "looper"    # Landroid/os/Looper;

    .prologue
    .line 863
    if-nez p1, :cond_0

    .line 864
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 867
    :cond_0
    if-nez p3, :cond_1

    .line 868
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 871
    :cond_1
    if-nez p2, :cond_2

    .line 872
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "vzwCriteria==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 876
    :cond_2
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/vzw/location/VzwLocationManager;->_requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;ZLandroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    :goto_0
    return-void

    .line 877
    :catch_0
    move-exception v6

    .line 878
    .local v6, "se":Ljava/lang/SecurityException;
    const-string v0, "VzwLocationManager"

    const-string v1, "[requestSingleLocationUpdate] SecurityException : "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVzwGpsConfigInit(Ljava/lang/String;Lcom/vzw/location/VzwGpsConfigInit;)Z
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "configInit"    # Lcom/vzw/location/VzwGpsConfigInit;

    .prologue
    .line 352
    const-string v1, "VzwLocationManager"

    const-string v2, "[setVzwGpsConfigInit] Entering."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    if-nez p1, :cond_0

    .line 355
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "provider==null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 358
    :cond_0
    if-nez p2, :cond_1

    .line 359
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "configInit==null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 363
    :cond_1
    :try_start_0
    const-string v1, "VzwLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setVzwGpsConfigInit] Provider = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v1, p1, p2}, Lcom/vzw/location/IVzwLocationManager;->setVzwGpsConfigInit(Ljava/lang/String;Lcom/vzw/location/VzwGpsConfigInit;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 367
    :goto_0
    return v1

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VzwLocationManager"

    const-string v2, "[setVzwGpsConfigInit] setVzwGpsConfigInit failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v1, 0x0

    goto :goto_0
.end method
