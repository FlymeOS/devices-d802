.class Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;
.super Lcom/vzw/location/geofence/VzwGeoFenceBase;
.source "VzwLocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/server/VzwLocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProximityAlerter"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VzwLocationManagerService.PriximityAlerter"


# instance fields
.field final synthetic this$0:Lcom/vzw/location/server/VzwLocationManagerService;


# direct methods
.method private constructor <init>(Lcom/vzw/location/server/VzwLocationManagerService;)V
    .locals 0

    .prologue
    .line 1114
    iput-object p1, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    invoke-direct {p0}, Lcom/vzw/location/geofence/VzwGeoFenceBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vzw/location/server/VzwLocationManagerService;Lcom/vzw/location/server/VzwLocationManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;
    .param p2, "x1"    # Lcom/vzw/location/server/VzwLocationManagerService$1;

    .prologue
    .line 1114
    invoke-direct {p0, p1}, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;-><init>(Lcom/vzw/location/server/VzwLocationManagerService;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/vzw/location/geofence/VzwGeoFenceParams;)V
    .locals 2
    .param p1, "params"    # Lcom/vzw/location/geofence/VzwGeoFenceParams;

    .prologue
    .line 1119
    new-instance v0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlert;

    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    invoke-direct {v0, v1, p1}, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlert;-><init>(Lcom/vzw/location/server/VzwLocationManagerService;Lcom/vzw/location/geofence/VzwGeoFenceParams;)V

    invoke-super {p0, v0}, Lcom/vzw/location/geofence/VzwGeoFenceBase;->add(Lcom/vzw/location/geofence/VzwGeoFenceParams;)V

    .line 1120
    return-void
.end method

.method protected start(Lcom/vzw/location/geofence/VzwGeoFenceParams;)Z
    .locals 10
    .param p1, "params"    # Lcom/vzw/location/geofence/VzwGeoFenceParams;

    .prologue
    .line 1124
    const-string v5, "VzwLocationManagerService.PriximityAlerter"

    const-string v6, "[start] Entering"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    iget-object v5, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # getter for: Lcom/vzw/location/server/VzwLocationManagerService;->mProximityListener:Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;
    invoke-static {v5}, Lcom/vzw/location/server/VzwLocationManagerService;->access$800(Lcom/vzw/location/server/VzwLocationManagerService;)Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1127
    const-string v5, "VzwLocationManagerService.PriximityAlerter"

    const-string v6, "[start] mProximityListener is null. ==> Create new ProximityListener object."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    iget-object v5, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    new-instance v6, Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;

    iget-object v7, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;-><init>(Lcom/vzw/location/server/VzwLocationManagerService;Lcom/vzw/location/server/VzwLocationManagerService$1;)V

    # setter for: Lcom/vzw/location/server/VzwLocationManagerService;->mProximityListener:Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;
    invoke-static {v5, v6}, Lcom/vzw/location/server/VzwLocationManagerService;->access$802(Lcom/vzw/location/server/VzwLocationManagerService;Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;)Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;

    .line 1129
    iget-object v5, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    new-instance v6, Lcom/vzw/location/server/VzwLocationManagerService$ProximityGpsStatusListener;

    iget-object v7, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    invoke-direct {v6, v7}, Lcom/vzw/location/server/VzwLocationManagerService$ProximityGpsStatusListener;-><init>(Lcom/vzw/location/server/VzwLocationManagerService;)V

    # setter for: Lcom/vzw/location/server/VzwLocationManagerService;->mProximityGpsStatusListener:Lcom/vzw/location/server/VzwLocationManagerService$ProximityGpsStatusListener;
    invoke-static {v5, v6}, Lcom/vzw/location/server/VzwLocationManagerService;->access$1002(Lcom/vzw/location/server/VzwLocationManagerService;Lcom/vzw/location/server/VzwLocationManagerService$ProximityGpsStatusListener;)Lcom/vzw/location/server/VzwLocationManagerService$ProximityGpsStatusListener;

    .line 1131
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1132
    .local v2, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1133
    .local v4, "uid":I
    const-string v5, "VzwLocationManagerService.PriximityAlerter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[start] Get VzwClient. PID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | UID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    iget-object v5, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    iget-object v6, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # getter for: Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;
    invoke-static {v6}, Lcom/vzw/location/server/VzwLocationManagerService;->access$700(Lcom/vzw/location/server/VzwLocationManagerService;)Lcom/vzw/location/server/VzwClientManager;

    move-result-object v6

    invoke-virtual {v6, v2, v4}, Lcom/vzw/location/server/VzwClientManager;->getVzwClient(II)Lcom/vzw/location/server/VzwClient;

    move-result-object v6

    # setter for: Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClient:Lcom/vzw/location/server/VzwClient;
    invoke-static {v5, v6}, Lcom/vzw/location/server/VzwLocationManagerService;->access$1102(Lcom/vzw/location/server/VzwLocationManagerService;Lcom/vzw/location/server/VzwClient;)Lcom/vzw/location/server/VzwClient;

    .line 1137
    :try_start_0
    const-string v5, "VzwLocationManagerService.PriximityAlerter"

    const-string v6, "[start] Calling addVzwGpsLocationListener()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    iget-object v5, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # getter for: Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClient:Lcom/vzw/location/server/VzwClient;
    invoke-static {v5}, Lcom/vzw/location/server/VzwLocationManagerService;->access$1100(Lcom/vzw/location/server/VzwLocationManagerService;)Lcom/vzw/location/server/VzwClient;

    move-result-object v5

    iget-object v6, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # getter for: Lcom/vzw/location/server/VzwLocationManagerService;->mProximityListener:Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;
    invoke-static {v6}, Lcom/vzw/location/server/VzwLocationManagerService;->access$800(Lcom/vzw/location/server/VzwLocationManagerService;)Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/vzw/location/server/VzwClient;->addVzwGpsLocationListener(Lcom/vzw/location/ILocationListener;)V

    .line 1140
    const-string v5, "VzwLocationManagerService.PriximityAlerter"

    const-string v6, "[start] Calling addVzwGpsStatusListener()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    iget-object v5, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # getter for: Lcom/vzw/location/server/VzwLocationManagerService;->mProximityGpsStatusListener:Lcom/vzw/location/server/VzwLocationManagerService$ProximityGpsStatusListener;
    invoke-static {v5}, Lcom/vzw/location/server/VzwLocationManagerService;->access$1000(Lcom/vzw/location/server/VzwLocationManagerService;)Lcom/vzw/location/server/VzwLocationManagerService$ProximityGpsStatusListener;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, "VzwLocationManagerService.PriximityAlerter"

    const-string v6, "[start] mProximityGpsStatusListener is null."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :cond_0
    iget-object v5, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # getter for: Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClient:Lcom/vzw/location/server/VzwClient;
    invoke-static {v5}, Lcom/vzw/location/server/VzwLocationManagerService;->access$1100(Lcom/vzw/location/server/VzwLocationManagerService;)Lcom/vzw/location/server/VzwClient;

    move-result-object v5

    iget-object v6, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # getter for: Lcom/vzw/location/server/VzwLocationManagerService;->mProximityGpsStatusListener:Lcom/vzw/location/server/VzwLocationManagerService$ProximityGpsStatusListener;
    invoke-static {v6}, Lcom/vzw/location/server/VzwLocationManagerService;->access$1000(Lcom/vzw/location/server/VzwLocationManagerService;)Lcom/vzw/location/server/VzwLocationManagerService$ProximityGpsStatusListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/vzw/location/server/VzwClient;->addVzwGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1147
    :goto_0
    iget-object v5, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # getter for: Lcom/vzw/location/server/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/vzw/location/server/VzwLocationManagerService;->access$1200(Lcom/vzw/location/server/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 1148
    iget-object v5, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # getter for: Lcom/vzw/location/server/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/vzw/location/server/VzwLocationManagerService;->access$1200(Lcom/vzw/location/server/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vzw/location/VzwLocationProviderInterface;

    .line 1149
    .local v3, "provider":Lcom/vzw/location/VzwLocationProviderInterface;
    iget-object v5, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # getter for: Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClient:Lcom/vzw/location/server/VzwClient;
    invoke-static {v5}, Lcom/vzw/location/server/VzwLocationManagerService;->access$1100(Lcom/vzw/location/server/VzwLocationManagerService;)Lcom/vzw/location/server/VzwClient;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vzw/location/server/VzwClient;->getVzwCriteria()Lcom/vzw/location/VzwCriteria;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/vzw/location/VzwCriteria;->setFixMode(I)V

    .line 1150
    iget-object v5, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # getter for: Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClient:Lcom/vzw/location/server/VzwClient;
    invoke-static {v5}, Lcom/vzw/location/server/VzwLocationManagerService;->access$1100(Lcom/vzw/location/server/VzwLocationManagerService;)Lcom/vzw/location/server/VzwClient;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vzw/location/server/VzwClient;->getVzwCriteria()Lcom/vzw/location/VzwCriteria;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v5

    iget-wide v6, p1, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mExpiration:J

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/vzw/location/VzwGpsFixRate;->setGpsFixRate(JJ)V

    .line 1152
    const-string v5, "VzwLocationManagerService.PriximityAlerter"

    const-string v6, "[start] Calling requestLocationUpdatesLocked(). Start Location Updates."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    iget-object v5, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    invoke-interface {v3}, Lcom/vzw/location/VzwLocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # getter for: Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClient:Lcom/vzw/location/server/VzwClient;
    invoke-static {v7}, Lcom/vzw/location/server/VzwLocationManagerService;->access$1100(Lcom/vzw/location/server/VzwLocationManagerService;)Lcom/vzw/location/server/VzwClient;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vzw/location/server/VzwClient;->getVzwCriteria()Lcom/vzw/location/VzwCriteria;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # getter for: Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClient:Lcom/vzw/location/server/VzwClient;
    invoke-static {v9}, Lcom/vzw/location/server/VzwLocationManagerService;->access$1100(Lcom/vzw/location/server/VzwLocationManagerService;)Lcom/vzw/location/server/VzwClient;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vzw/location/server/VzwClient;->getVzwGpsLocationListener()Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;->getListener()Lcom/vzw/location/ILocationListener;

    move-result-object v9

    # invokes: Lcom/vzw/location/server/VzwLocationManagerService;->requestLocationUpdatesLocked(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;ZLcom/vzw/location/ILocationListener;)V
    invoke-static {v5, v6, v7, v8, v9}, Lcom/vzw/location/server/VzwLocationManagerService;->access$1300(Lcom/vzw/location/server/VzwLocationManagerService;Ljava/lang/String;Lcom/vzw/location/VzwCriteria;ZLcom/vzw/location/ILocationListener;)V

    .line 1147
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1143
    .end local v1    # "i":I
    .end local v3    # "provider":Lcom/vzw/location/VzwLocationProviderInterface;
    :catch_0
    move-exception v0

    .line 1144
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1157
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "pid":I
    .end local v4    # "uid":I
    :cond_1
    const/4 v5, 0x1

    return v5
.end method

.method protected stop(Landroid/app/PendingIntent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1162
    const-string v2, "VzwLocationManagerService.PriximityAlerter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[stop] Entering. Get GeoFence with intent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    invoke-virtual {p0, p1}, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;->getGeoFence(Landroid/app/PendingIntent;)Lcom/vzw/location/geofence/VzwGeoFenceParams;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlert;

    .line 1165
    .local v0, "alert":Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlert;
    const-string v2, "VzwLocationManagerService.PriximityAlerter"

    const-string v3, "[stop] Start removal."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    iget-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # getter for: Lcom/vzw/location/server/VzwLocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/vzw/location/server/VzwLocationManagerService;->access$1400(Lcom/vzw/location/server/VzwLocationManagerService;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1167
    iget-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # getter for: Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;
    invoke-static {v2}, Lcom/vzw/location/server/VzwLocationManagerService;->access$700(Lcom/vzw/location/server/VzwLocationManagerService;)Lcom/vzw/location/server/VzwClientManager;

    move-result-object v2

    iget-object v3, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # getter for: Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClient:Lcom/vzw/location/server/VzwClient;
    invoke-static {v3}, Lcom/vzw/location/server/VzwLocationManagerService;->access$1100(Lcom/vzw/location/server/VzwLocationManagerService;)Lcom/vzw/location/server/VzwClient;

    move-result-object v3

    iget v3, v3, Lcom/vzw/location/server/VzwClient;->mUid:I

    iget-object v4, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # getter for: Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClient:Lcom/vzw/location/server/VzwClient;
    invoke-static {v4}, Lcom/vzw/location/server/VzwLocationManagerService;->access$1100(Lcom/vzw/location/server/VzwLocationManagerService;)Lcom/vzw/location/server/VzwClient;

    move-result-object v4

    iget v4, v4, Lcom/vzw/location/server/VzwClient;->mPid:I

    iget-object v5, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # getter for: Lcom/vzw/location/server/VzwLocationManagerService;->mProximityGpsStatusListener:Lcom/vzw/location/server/VzwLocationManagerService$ProximityGpsStatusListener;
    invoke-static {v5}, Lcom/vzw/location/server/VzwLocationManagerService;->access$1000(Lcom/vzw/location/server/VzwLocationManagerService;)Lcom/vzw/location/server/VzwLocationManagerService$ProximityGpsStatusListener;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/vzw/location/server/VzwClientManager;->removeStatusListener(IILcom/vzw/location/IVzwGpsStatusListener;)Z

    .line 1169
    invoke-virtual {p0}, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;->getNumbOfGeoFences()I

    move-result v2

    if-nez v2, :cond_0

    .line 1171
    :try_start_0
    const-string v2, "VzwLocationManagerService.PriximityAlerter"

    const-string v3, "[stop] Number of GeoFence remained is 0. Calling removeUpdates()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    iget-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    iget-object v3, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # getter for: Lcom/vzw/location/server/VzwLocationManagerService;->mProximityListener:Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;
    invoke-static {v3}, Lcom/vzw/location/server/VzwLocationManagerService;->access$800(Lcom/vzw/location/server/VzwLocationManagerService;)Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vzw/location/server/VzwLocationManagerService;->removeUpdates(Lcom/vzw/location/ILocationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1176
    :goto_0
    iget-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/vzw/location/server/VzwLocationManagerService;->mProximityListener:Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;
    invoke-static {v2, v3}, Lcom/vzw/location/server/VzwLocationManagerService;->access$802(Lcom/vzw/location/server/VzwLocationManagerService;Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;)Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;

    .line 1179
    :cond_0
    const-string v2, "VzwLocationManagerService.PriximityAlerter"

    const-string v3, "[stop] Exiting. Return true."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    const/4 v2, 0x1

    return v2

    .line 1173
    :catch_0
    move-exception v1

    .line 1174
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
