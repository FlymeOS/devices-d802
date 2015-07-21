.class public Lcom/vzw/location/server/VzwClient;
.super Ljava/lang/Object;
.source "VzwClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;,
        Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VzwClient"

.field static sLogGPSStatusStrings:[Ljava/lang/String;


# instance fields
.field private DEBUG:Z

.field private criteria:Lcom/vzw/location/VzwCriteria;

.field currScheduler:Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;

.field isSingleShot:Z

.field private mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

.field mLstStatusBroadcastTime:J

.field mPid:I

.field mUid:I

.field mVzwGpsLocationListener:Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;

.field mVzwGpsStatusListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 465
    const/16 v0, 0x1d

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "GPS_EVENT_INVALID_MESSAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "GPS_EVENT_ESTABLISH_PDE_CONNECTION_FAILED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "GPS_EVENT_AGPS_AUTH_PASS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GPS_EVENT_AGPS_AUTH_FAIL"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "GPS_EVENT_AGPS_AUTH_PDE_NOT_REACHABLE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "GPS_EVENT_AGPS_AUTH_EXPIRED"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GPS_EVENT_AGPS_AUTH_DNS_FAIL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GPS_EVENT_INIT_FAIL"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "GPS_EVENT_INIT_PASS"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "GPS_EVENT_LOCATION_AVAILABLE"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "GPS_EVENT_FIRST_FIX"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "GPS_EVENT_FIX_REQ_FAIL"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "GPS_EVENT_FIX_REQUESTED"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GPS_EVENT_GENERAL_AGPS_FAILURE"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "GPS_EVENT_GENERAL_FAILURE"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "GPS_EVENT_INIT_CONFIG_NOT_PROVIDED"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "GPS_EVENT_LOCATION_REQUEST_TIMEDOUT"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "GPS_EVENT_SATELLITE_STATUS"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "GPS_EVENT_SECURITY_FAILED"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "GPS_EVENT_SET_FIX_MODE_FAIL"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "GPS_EVENT_SET_FIX_RATE_FAIL"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "GPS_EVENT_SET_GPS_PERFORMANCE_FAIL"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "GPS_EVENT_SET_PDE_FAIL"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "GPS_EVENT_STARTED"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "GPS_EVENT_STOPPED"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "GPS_EVENT_DEVICE_STATUS"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "GPS_EVENT_INIT_IN_PROGRESS"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "GPS_EVENT_TRACKING_SESSION_TIMEDOUT"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "GPS_EVENT_SMS_REGISTER_FAILED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vzw/location/server/VzwClient;->sLogGPSStatusStrings:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "pId"    # I
    .param p2, "uId"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vzw/location/server/VzwClient;->DEBUG:Z

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsLocationListener:Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;

    .line 54
    iget-boolean v0, p0, Lcom/vzw/location/server/VzwClient;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwClient"

    const-string v1, "[VzwClient] Create new VzwClient object."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    iput p1, p0, Lcom/vzw/location/server/VzwClient;->mPid:I

    .line 56
    iput p2, p0, Lcom/vzw/location/server/VzwClient;->mUid:I

    .line 57
    new-instance v0, Lcom/vzw/location/VzwGpsConfigInit;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsConfigInit;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/server/VzwClient;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    .line 58
    new-instance v0, Lcom/vzw/location/VzwCriteria;

    invoke-direct {v0}, Lcom/vzw/location/VzwCriteria;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/server/VzwClient;->criteria:Lcom/vzw/location/VzwCriteria;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vzw/location/server/VzwClient;->isSingleShot:Z

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vzw/location/server/VzwClient;->mLstStatusBroadcastTime:J

    .line 61
    return-void
.end method

.method static synthetic access$500(Lcom/vzw/location/server/VzwClient;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/server/VzwClient;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/vzw/location/server/VzwClient;->DEBUG:Z

    return v0
.end method

.method static getStringForStatus(I)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 498
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    sget-object v0, Lcom/vzw/location/server/VzwClient;->sLogGPSStatusStrings:[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_1

    .line 499
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID_STATUS_(STATUS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 501
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/vzw/location/server/VzwClient;->sLogGPSStatusStrings:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0
.end method


# virtual methods
.method public addVzwGpsLocationListener(Lcom/vzw/location/ILocationListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/vzw/location/ILocationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 290
    iget-object v0, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsLocationListener:Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;

    if-eqz v0, :cond_1

    .line 291
    iget-boolean v0, p0, Lcom/vzw/location/server/VzwClient;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[addVzwGpsLocationListener] Client [UID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vzw/location/server/VzwClient;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vzw/location/server/VzwClient;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] attempted start 2 trackings. Unlinking old LocationListener."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsLocationListener:Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;

    invoke-virtual {v0}, Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;->getListener()Lcom/vzw/location/ILocationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vzw/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsLocationListener:Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 295
    :cond_1
    new-instance v0, Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;

    invoke-direct {v0, p0, p1}, Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;-><init>(Lcom/vzw/location/server/VzwClient;Lcom/vzw/location/ILocationListener;)V

    iput-object v0, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsLocationListener:Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;

    .line 296
    iget-object v0, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsLocationListener:Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;

    invoke-virtual {v0}, Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;->getListener()Lcom/vzw/location/ILocationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vzw/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsLocationListener:Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 297
    return-void
.end method

.method public addVzwGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    .locals 9
    .param p1, "listener"    # Lcom/vzw/location/IVzwGpsStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 99
    iget-boolean v5, p0, Lcom/vzw/location/server/VzwClient;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "VzwClient"

    const-string v6, "[addVzwGpsStatusListener] Entering"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    iget-object v5, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    if-nez p1, :cond_2

    .line 102
    :cond_1
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 105
    :cond_2
    iget-object v6, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 108
    :try_start_0
    invoke-interface {p1}, Lcom/vzw/location/IVzwGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 109
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_8

    .line 110
    iget-object v5, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 113
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 114
    iget-object v5, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;

    .line 115
    .local v3, "tmp":Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;
    iget-object v5, v3, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->mListener:Lcom/vzw/location/IVzwGpsStatusListener;

    invoke-interface {v5}, Lcom/vzw/location/IVzwGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 116
    monitor-exit v6

    .line 132
    .end local v3    # "tmp":Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;
    :goto_1
    return-void

    .line 113
    .restart local v3    # "tmp":Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    .end local v3    # "tmp":Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;
    :cond_4
    new-instance v4, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;

    invoke-direct {v4, p0, p1}, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;-><init>(Lcom/vzw/location/server/VzwClient;Lcom/vzw/location/IVzwGpsStatusListener;)V

    .line 121
    .local v4, "tmpListner":Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;
    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 123
    iget-boolean v5, p0, Lcom/vzw/location/server/VzwClient;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "VzwClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[addVzwGpsStatusListener] Size of array list before add = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_5
    iget-boolean v5, p0, Lcom/vzw/location/server/VzwClient;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "VzwClient"

    const-string v7, "[addVzwGpsStatusListener] Adding new listener to GpsStatusListeners"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_6
    iget-object v5, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-boolean v5, p0, Lcom/vzw/location/server/VzwClient;->DEBUG:Z

    if-eqz v5, :cond_7

    const-string v5, "VzwClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[addVzwGpsStatusListener] Size of array list after add = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_7
    monitor-exit v6

    goto :goto_1

    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "i":I
    .end local v2    # "size":I
    .end local v4    # "tmpListner":Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 128
    .restart local v0    # "binder":Landroid/os/IBinder;
    :cond_8
    :try_start_1
    const-string v5, "VzwClient"

    const-string v7, "[addVzwGpsStatusListener] binder is null."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/vzw/location/server/VzwClient;->mUid:I

    return v0
.end method

.method public getVzwCriteria()Lcom/vzw/location/VzwCriteria;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vzw/location/server/VzwClient;->criteria:Lcom/vzw/location/VzwCriteria;

    return-object v0
.end method

.method public getVzwGpsConfigInit()Lcom/vzw/location/VzwGpsConfigInit;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vzw/location/server/VzwClient;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    return-object v0
.end method

.method getVzwGpsLocationListener()Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsLocationListener:Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;

    return-object v0
.end method

.method public isDead()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsLocationListener:Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAllVzwGpsStatusListener()V
    .locals 6

    .prologue
    .line 136
    iget-boolean v4, p0, Lcom/vzw/location/server/VzwClient;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "VzwClient"

    const-string v5, "[removeVzwGpsStatusListener] Entering"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    iget-object v4, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 139
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 142
    :cond_1
    iget-object v5, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 144
    :try_start_0
    iget-object v4, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 146
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 147
    iget-object v4, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;

    .line 148
    .local v3, "tmp":Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;
    iget-object v4, v3, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->mListener:Lcom/vzw/location/IVzwGpsStatusListener;

    invoke-interface {v4}, Lcom/vzw/location/IVzwGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 150
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 151
    iget-object v4, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v3    # "tmp":Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;
    :cond_2
    monitor-exit v5

    .line 154
    return-void

    .line 153
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public removeVzwGpsLocationListener()Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;
    .locals 4

    .prologue
    .line 304
    iget-object v0, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsLocationListener:Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;

    .line 305
    .local v0, "removedListener":Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;
    if-eqz v0, :cond_1

    .line 306
    iget-object v1, p0, Lcom/vzw/location/server/VzwClient;->currScheduler:Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/vzw/location/server/VzwClient;->currScheduler:Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;

    invoke-virtual {v1}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->finish()V

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsLocationListener:Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;

    invoke-virtual {v1}, Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;->getListener()Lcom/vzw/location/ILocationListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/vzw/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsLocationListener:Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 310
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsLocationListener:Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;

    .line 312
    :cond_1
    return-object v0
.end method

.method public removeVzwGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    .locals 9
    .param p1, "listener"    # Lcom/vzw/location/IVzwGpsStatusListener;

    .prologue
    .line 158
    iget-boolean v5, p0, Lcom/vzw/location/server/VzwClient;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "VzwClient"

    const-string v6, "[removeVzwGpsStatusListener] Entering"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    iget-object v5, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 161
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 164
    :cond_1
    iget-object v6, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 165
    :try_start_0
    invoke-interface {p1}, Lcom/vzw/location/IVzwGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 166
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v5, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 167
    .local v3, "size":I
    iget-boolean v5, p0, Lcom/vzw/location/server/VzwClient;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "VzwClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[removeVzwGpsStatusListener] Current size of array list before removal = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_2
    const/4 v1, 0x0

    .line 171
    .local v1, "finger":Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_4

    if-nez v1, :cond_4

    .line 172
    iget-object v5, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;

    .line 173
    .local v4, "tmp":Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;
    iget-object v5, v4, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->mListener:Lcom/vzw/location/IVzwGpsStatusListener;

    invoke-interface {v5}, Lcom/vzw/location/IVzwGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 174
    move-object v1, v4

    .line 171
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    .end local v4    # "tmp":Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;
    :cond_4
    if-eqz v1, :cond_6

    .line 178
    iget-boolean v5, p0, Lcom/vzw/location/server/VzwClient;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "VzwClient"

    const-string v7, "[removeVzwGpsStatusListener] Start removing VzwGpsStatusListener."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_5
    iget-object v5, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 180
    const/4 v5, 0x0

    invoke-interface {v0, v1, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 182
    :cond_6
    iget-boolean v5, p0, Lcom/vzw/location/server/VzwClient;->DEBUG:Z

    if-eqz v5, :cond_7

    const-string v5, "VzwClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[removeVzwGpsStatusListener] Size of array list after removal = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_7
    monitor-exit v6

    .line 184
    return-void

    .line 183
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "finger":Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;
    .end local v2    # "i":I
    .end local v3    # "size":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public reportGpsSatStatus(II[I[I[F[F[F)Z
    .locals 12
    .param p1, "svCount"    # I
    .param p2, "svInViewCount"    # I
    .param p3, "prn"    # [I
    .param p4, "prnInView"    # [I
    .param p5, "elevInView"    # [F
    .param p6, "azimInView"    # [F
    .param p7, "snrInView"    # [F

    .prologue
    .line 265
    iget-object v11, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    monitor-enter v11

    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 267
    .local v10, "size":I
    if-gtz v10, :cond_1

    .line 268
    iget-boolean v1, p0, Lcom/vzw/location/server/VzwClient;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "VzwClient"

    const-string v2, "[reportGpsSatStatus] There is no GpsStatusListener."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    const/4 v1, 0x0

    monitor-exit v11

    .line 283
    :goto_0
    return v1

    .line 271
    :cond_1
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v10, :cond_4

    .line 272
    iget-object v1, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;

    .line 273
    .local v0, "listener":Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;
    iget-boolean v1, p0, Lcom/vzw/location/server/VzwClient;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "VzwClient"

    const-string v2, "[reportGpsSatStatus] reportGpsSatStatus."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 275
    :try_start_1
    # invokes: Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->callonSatStatusChanged(II[I[I[F[F[F)V
    invoke-static/range {v0 .. v7}, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->access$400(Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;II[I[I[F[F[F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 276
    :catch_0
    move-exception v8

    .line 277
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_2
    iget-boolean v1, p0, Lcom/vzw/location/server/VzwClient;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "VzwClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[reportGpsSatStatus] Error reportGpsSatStatus. MSG="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_3
    iget-object v1, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 279
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 282
    .end local v0    # "listener":Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_4
    monitor-exit v11

    .line 283
    const/4 v1, 0x1

    goto :goto_0

    .line 282
    .end local v9    # "i":I
    .end local v10    # "size":I
    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public reportOnFirstFix(I)Z
    .locals 7
    .param p1, "ttff"    # I

    .prologue
    .line 246
    iget-object v4, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 247
    :try_start_0
    iget-object v3, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 248
    .local v2, "size":I
    if-gtz v2, :cond_1

    .line 249
    iget-boolean v3, p0, Lcom/vzw/location/server/VzwClient;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "VzwClient"

    const-string v5, "[reportOnFirstFix] There is no GpsStatusListener."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    const/4 v3, 0x0

    monitor-exit v4

    .line 258
    :goto_0
    return v3

    .line 252
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 253
    iget-object v3, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;

    .line 254
    .local v1, "listener":Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;
    iget-boolean v3, p0, Lcom/vzw/location/server/VzwClient;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "VzwClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[reportOnFirstFix] FirstFixReporting. ttff="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_2
    # invokes: Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->callonFirstFix(I)V
    invoke-static {v1, p1}, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->access$300(Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;I)V

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 257
    .end local v1    # "listener":Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;
    :cond_3
    monitor-exit v4

    .line 258
    const/4 v3, 0x1

    goto :goto_0

    .line 257
    .end local v0    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public reportOnGpsDeviceStatusChanged(Lcom/vzw/location/VzwGpsDeviceStatus;)Z
    .locals 6
    .param p1, "deviceStatus"    # Lcom/vzw/location/VzwGpsDeviceStatus;

    .prologue
    .line 211
    iget-object v4, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 212
    :try_start_0
    iget-object v3, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 213
    .local v2, "size":I
    if-gtz v2, :cond_1

    .line 214
    iget-boolean v3, p0, Lcom/vzw/location/server/VzwClient;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "VzwClient"

    const-string v5, "[reportOnGpsStatusChanged] There is no GpsStatusListener."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    const/4 v3, 0x0

    monitor-exit v4

    .line 223
    :goto_0
    return v3

    .line 217
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 218
    iget-object v3, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;

    .line 219
    .local v1, "listener":Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;
    iget-boolean v3, p0, Lcom/vzw/location/server/VzwClient;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "VzwClient"

    const-string v5, "[reportOnGpsDeviceStatusChanged] GpsDeviceStatusReporting"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_2
    # invokes: Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->callonGpsDeviceStatusChanged(Lcom/vzw/location/VzwGpsDeviceStatus;)V
    invoke-static {v1, p1}, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->access$100(Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;Lcom/vzw/location/VzwGpsDeviceStatus;)V

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 222
    .end local v1    # "listener":Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;
    :cond_3
    monitor-exit v4

    .line 223
    const/4 v3, 0x1

    goto :goto_0

    .line 222
    .end local v0    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public reportOnGpsStatusChanged(I)Z
    .locals 8
    .param p1, "msg"    # I

    .prologue
    .line 188
    iget-object v5, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 189
    :try_start_0
    iget-object v4, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 190
    .local v3, "size":I
    if-gtz v3, :cond_1

    .line 191
    iget-boolean v4, p0, Lcom/vzw/location/server/VzwClient;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "VzwClient"

    const-string v6, "[reportOnGpsStatusChanged] There is no GpsStatusListener."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    const/4 v4, 0x0

    monitor-exit v5

    .line 206
    :goto_0
    return v4

    .line 194
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 195
    iget-object v4, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    .local v2, "listener":Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;
    :try_start_1
    iget-boolean v4, p0, Lcom/vzw/location/server/VzwClient;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "VzwClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[reportOnGpsStatusChanged] GpsStatusReporting. Msg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/vzw/location/server/VzwClient;->getStringForStatus(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_2
    # invokes: Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->callonGpsStatusChanged(I)V
    invoke-static {v2, p1}, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->access$000(Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    iget-boolean v4, p0, Lcom/vzw/location/server/VzwClient;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "VzwClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[reportOnGpsStatusChanged] Error GpsStatusReporting. MSG="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_3
    iget-object v4, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 202
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 205
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "listener":Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;
    :cond_4
    monitor-exit v5

    .line 206
    const/4 v4, 0x1

    goto :goto_0

    .line 205
    .end local v1    # "i":I
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public reportOnGpsSvStatusChanged(II[I[I[F[F[F)Z
    .locals 11
    .param p1, "svCount"    # I
    .param p2, "svInViewCount"    # I
    .param p3, "prn"    # [I
    .param p4, "prnInView"    # [I
    .param p5, "elevInView"    # [F
    .param p6, "azimInView"    # [F
    .param p7, "snrInView"    # [F

    .prologue
    .line 229
    iget-object v10, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    monitor-enter v10

    .line 230
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 231
    .local v9, "size":I
    if-gtz v9, :cond_1

    .line 232
    iget-boolean v1, p0, Lcom/vzw/location/server/VzwClient;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "VzwClient"

    const-string v2, "[reportOnGpsSvStatusChanged] There is no GpsStatusListener."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    const/4 v1, 0x0

    monitor-exit v10

    .line 241
    :goto_0
    return v1

    .line 235
    :cond_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v9, :cond_3

    .line 236
    iget-object v1, p0, Lcom/vzw/location/server/VzwClient;->mVzwGpsStatusListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;

    .line 237
    .local v0, "listener":Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;
    iget-boolean v1, p0, Lcom/vzw/location/server/VzwClient;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "VzwClient"

    const-string v2, "[reportOnGpsSvStatusChanged] GpsSvStatusReporting."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 238
    # invokes: Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->callonSvStatusChanged(II[I[I[F[F[F)V
    invoke-static/range {v0 .. v7}, Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;->access$200(Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;II[I[I[F[F[F)V

    .line 235
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 240
    .end local v0    # "listener":Lcom/vzw/location/server/VzwClient$VzwGpsStatusListener;
    :cond_3
    monitor-exit v10

    .line 241
    const/4 v1, 0x1

    goto :goto_0

    .line 240
    .end local v8    # "i":I
    .end local v9    # "size":I
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCurrScheduler(Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;)V
    .locals 0
    .param p1, "scheduler"    # Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/vzw/location/server/VzwClient;->currScheduler:Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;

    .line 506
    return-void
.end method

.method public setVzwCriteria(Lcom/vzw/location/VzwCriteria;)V
    .locals 0
    .param p1, "c"    # Lcom/vzw/location/VzwCriteria;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/vzw/location/server/VzwClient;->criteria:Lcom/vzw/location/VzwCriteria;

    .line 77
    return-void
.end method

.method public setVzwGpsConfigInit(Lcom/vzw/location/VzwGpsConfigInit;)V
    .locals 0
    .param p1, "configInit"    # Lcom/vzw/location/VzwGpsConfigInit;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/vzw/location/server/VzwClient;->mConfigInit:Lcom/vzw/location/VzwGpsConfigInit;

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VzwClient] Pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vzw/location/server/VzwClient;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vzw/location/server/VzwClient;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "log":Ljava/lang/String;
    return-object v0
.end method
