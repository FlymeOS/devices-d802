.class Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;
.super Lcom/vzw/location/ILocationListener$Stub;
.source "VzwLocationManagerService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/server/VzwLocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProximityListener"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VzwLocationManagerService.ProximityListener"


# instance fields
.field isGpsAvailable:Z

.field final synthetic this$0:Lcom/vzw/location/server/VzwLocationManagerService;


# direct methods
.method private constructor <init>(Lcom/vzw/location/server/VzwLocationManagerService;)V
    .locals 1

    .prologue
    .line 1184
    iput-object p1, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    invoke-direct {p0}, Lcom/vzw/location/ILocationListener$Stub;-><init>()V

    .line 1186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;->isGpsAvailable:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/vzw/location/server/VzwLocationManagerService;Lcom/vzw/location/server/VzwLocationManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;
    .param p2, "x1"    # Lcom/vzw/location/server/VzwLocationManagerService$1;

    .prologue
    .line 1184
    invoke-direct {p0, p1}, Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;-><init>(Lcom/vzw/location/server/VzwLocationManagerService;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/vzw/location/VzwLocation;)V
    .locals 30
    .param p1, "location"    # Lcom/vzw/location/VzwLocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1191
    const-string v5, "VzwLocationManagerService.ProximityListener"

    const-string v6, "[onLocationChanged] Entering"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    invoke-virtual/range {p1 .. p1}, Lcom/vzw/location/VzwLocation;->getProvider()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "vzw_lbs"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1193
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;->isGpsAvailable:Z

    .line 1194
    const-string v5, "VzwLocationManagerService.ProximityListener"

    const-string v6, "[onLocationChanged] Verizon LBS is available. Keep Going."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 1202
    .local v28, "now":J
    invoke-virtual/range {p1 .. p1}, Lcom/vzw/location/VzwLocation;->getLatitude()D

    move-result-wide v24

    .line 1203
    .local v24, "latitude":D
    invoke-virtual/range {p1 .. p1}, Lcom/vzw/location/VzwLocation;->getLongitude()D

    move-result-wide v26

    .line 1204
    .local v26, "longitude":D
    const/16 v23, 0x0

    .line 1207
    .local v23, "intentsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v5, "VzwLocationManagerService.ProximityListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onLocationChanged] Current number of GeoFence = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # getter for: Lcom/vzw/location/server/VzwLocationManagerService;->mGeoFencer:Lcom/vzw/location/geofence/VzwGeoFenceBase;
    invoke-static {v8}, Lcom/vzw/location/server/VzwLocationManagerService;->access$1500(Lcom/vzw/location/server/VzwLocationManagerService;)Lcom/vzw/location/geofence/VzwGeoFenceBase;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vzw/location/geofence/VzwGeoFenceBase;->getNumbOfGeoFences()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # getter for: Lcom/vzw/location/server/VzwLocationManagerService;->mGeoFencer:Lcom/vzw/location/geofence/VzwGeoFenceBase;
    invoke-static {v5}, Lcom/vzw/location/server/VzwLocationManagerService;->access$1500(Lcom/vzw/location/server/VzwLocationManagerService;)Lcom/vzw/location/geofence/VzwGeoFenceBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vzw/location/geofence/VzwGeoFenceBase;->getAllGeoFences()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vzw/location/geofence/VzwGeoFenceParams;

    .local v17, "fence":Lcom/vzw/location/geofence/VzwGeoFenceParams;
    move-object/from16 v14, v17

    .line 1209
    check-cast v14, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlert;

    .line 1210
    .local v14, "alert":Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlert;
    iget-object v4, v14, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlert;->mIntent:Landroid/app/PendingIntent;

    .line 1211
    .local v4, "intent":Landroid/app/PendingIntent;
    iget-wide v0, v14, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlert;->mExpiration:J

    move-wide/from16 v18, v0

    .line 1212
    .local v18, "expiration":J
    const-string v5, "VzwLocationManagerService.ProximityListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onLocationChanged] Expiration = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " | System.currentTimeMillis() = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v28

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    const-wide/16 v8, -0x1

    cmp-long v5, v18, v8

    if-eqz v5, :cond_1

    cmp-long v5, v28, v18

    if-gtz v5, :cond_8

    .line 1215
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # getter for: Lcom/vzw/location/server/VzwLocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;
    invoke-static {v5}, Lcom/vzw/location/server/VzwLocationManagerService;->access$1400(Lcom/vzw/location/server/VzwLocationManagerService;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v16

    .line 1216
    .local v16, "entered":Z
    const-string v5, "VzwLocationManagerService.ProximityListener"

    const-string v6, "[onLocationChanged] Calling isInProximity()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    move-wide/from16 v0, v24

    move-wide/from16 v2, v26

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlert;->isInProximity(DD)Z

    move-result v22

    .line 1218
    .local v22, "inProximity":Z
    const-string v5, "VzwLocationManagerService.ProximityListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onLocationChanged] entered="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " | inProximity="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    if-nez v16, :cond_4

    if-eqz v22, :cond_4

    .line 1221
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # getter for: Lcom/vzw/location/server/VzwLocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;
    invoke-static {v5}, Lcom/vzw/location/server/VzwLocationManagerService;->access$1400(Lcom/vzw/location/server/VzwLocationManagerService;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1222
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1223
    .local v7, "enteredIntent":Landroid/content/Intent;
    const-string v5, "entering"

    const/4 v6, 0x1

    invoke-virtual {v7, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1225
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1226
    :try_start_1
    const-string v5, "VzwLocationManagerService.ProximityListener"

    const-string v6, "[onLocationChanged] Sending PendingIntent : Entering!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # getter for: Lcom/vzw/location/server/VzwLocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/vzw/location/server/VzwLocationManagerService;->access$1600(Lcom/vzw/location/server/VzwLocationManagerService;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # getter for: Lcom/vzw/location/server/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;
    invoke-static {v8}, Lcom/vzw/location/server/VzwLocationManagerService;->access$1700(Lcom/vzw/location/server/VzwLocationManagerService;)Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;

    move-result-object v9

    move-object/from16 v8, p0

    invoke-virtual/range {v4 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 1228
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # invokes: Lcom/vzw/location/server/VzwLocationManagerService;->incrementPendingBroadcasts()V
    invoke-static {v5}, Lcom/vzw/location/server/VzwLocationManagerService;->access$1800(Lcom/vzw/location/server/VzwLocationManagerService;)V

    .line 1229
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1230
    :catch_0
    move-exception v15

    .line 1231
    .local v15, "e":Landroid/app/PendingIntent$CanceledException;
    if-nez v23, :cond_2

    .line 1232
    new-instance v23, Ljava/util/ArrayList;

    .end local v23    # "intentsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1234
    .restart local v23    # "intentsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    :cond_2
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1196
    .end local v4    # "intent":Landroid/app/PendingIntent;
    .end local v7    # "enteredIntent":Landroid/content/Intent;
    .end local v14    # "alert":Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlert;
    .end local v15    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v16    # "entered":Z
    .end local v17    # "fence":Lcom/vzw/location/geofence/VzwGeoFenceParams;
    .end local v18    # "expiration":J
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v22    # "inProximity":Z
    .end local v23    # "intentsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v24    # "latitude":D
    .end local v26    # "longitude":D
    .end local v28    # "now":J
    :cond_3
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;->isGpsAvailable:Z

    .line 1197
    const-string v5, "VzwLocationManagerService.ProximityListener"

    const-string v6, "[onLocationChanged] Verizon LBS is unavailable. Cannot Proceed."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    :goto_1
    return-void

    .line 1236
    .restart local v4    # "intent":Landroid/app/PendingIntent;
    .restart local v14    # "alert":Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlert;
    .restart local v16    # "entered":Z
    .restart local v17    # "fence":Lcom/vzw/location/geofence/VzwGeoFenceParams;
    .restart local v18    # "expiration":J
    .restart local v21    # "i$":Ljava/util/Iterator;
    .restart local v22    # "inProximity":Z
    .restart local v23    # "intentsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .restart local v24    # "latitude":D
    .restart local v26    # "longitude":D
    .restart local v28    # "now":J
    :cond_4
    if-eqz v16, :cond_6

    if-nez v22, :cond_6

    .line 1237
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # getter for: Lcom/vzw/location/server/VzwLocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;
    invoke-static {v5}, Lcom/vzw/location/server/VzwLocationManagerService;->access$1400(Lcom/vzw/location/server/VzwLocationManagerService;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1238
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 1239
    .local v11, "exitedIntent":Landroid/content/Intent;
    const-string v5, "entering"

    const/4 v6, 0x0

    invoke-virtual {v11, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1241
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1242
    :try_start_4
    const-string v5, "VzwLocationManagerService.ProximityListener"

    const-string v6, "[onLocationChanged] Sending PendingIntent : Leaving!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # getter for: Lcom/vzw/location/server/VzwLocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/vzw/location/server/VzwLocationManagerService;->access$1600(Lcom/vzw/location/server/VzwLocationManagerService;)Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # getter for: Lcom/vzw/location/server/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;
    invoke-static {v5}, Lcom/vzw/location/server/VzwLocationManagerService;->access$1700(Lcom/vzw/location/server/VzwLocationManagerService;)Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;

    move-result-object v13

    move-object v8, v4

    move-object/from16 v12, p0

    invoke-virtual/range {v8 .. v13}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 1244
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # invokes: Lcom/vzw/location/server/VzwLocationManagerService;->incrementPendingBroadcasts()V
    invoke-static {v5}, Lcom/vzw/location/server/VzwLocationManagerService;->access$1800(Lcom/vzw/location/server/VzwLocationManagerService;)V

    .line 1245
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v5

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v5
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1246
    :catch_1
    move-exception v15

    .line 1247
    .restart local v15    # "e":Landroid/app/PendingIntent$CanceledException;
    if-nez v23, :cond_5

    .line 1248
    new-instance v23, Ljava/util/ArrayList;

    .end local v23    # "intentsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1250
    .restart local v23    # "intentsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    :cond_5
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1252
    .end local v11    # "exitedIntent":Landroid/content/Intent;
    .end local v15    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_6
    if-eqz v16, :cond_7

    if-eqz v22, :cond_7

    .line 1253
    const-string v5, "VzwLocationManagerService.ProximityListener"

    const-string v6, "[onLocationChanged] Proximity Alert : Inside. Do Nothing."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1254
    :cond_7
    if-nez v16, :cond_0

    if-nez v22, :cond_0

    .line 1255
    const-string v5, "VzwLocationManagerService.ProximityListener"

    const-string v6, "[onLocationChanged] Proximity Alert : Outside. Do Nothing."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1258
    .end local v16    # "entered":Z
    .end local v22    # "inProximity":Z
    :cond_8
    const-string v5, "VzwLocationManagerService.ProximityListener"

    const-string v6, "[onLocationChanged] Proximity Alert Expired"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    if-nez v23, :cond_9

    .line 1260
    new-instance v23, Ljava/util/ArrayList;

    .end local v23    # "intentsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1262
    .restart local v23    # "intentsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    :cond_9
    iget-object v5, v14, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlert;->mIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1266
    .end local v4    # "intent":Landroid/app/PendingIntent;
    .end local v14    # "alert":Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlert;
    .end local v17    # "fence":Lcom/vzw/location/geofence/VzwGeoFenceParams;
    .end local v18    # "expiration":J
    :cond_a
    if-eqz v23, :cond_b

    .line 1267
    const-string v5, "VzwLocationManagerService.ProximityListener"

    const-string v6, "[onLocationChanged] intentsToRemove != null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/PendingIntent;

    .line 1269
    .local v20, "i":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # getter for: Lcom/vzw/location/server/VzwLocationManagerService;->mGeoFencer:Lcom/vzw/location/geofence/VzwGeoFenceBase;
    invoke-static {v5}, Lcom/vzw/location/server/VzwLocationManagerService;->access$1500(Lcom/vzw/location/server/VzwLocationManagerService;)Lcom/vzw/location/geofence/VzwGeoFenceBase;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/vzw/location/geofence/VzwGeoFenceBase;->remove(Landroid/app/PendingIntent;)V

    goto :goto_2

    .line 1272
    .end local v20    # "i":Landroid/app/PendingIntent;
    :cond_b
    const-string v5, "VzwLocationManagerService.ProximityListener"

    const-string v6, "[onLocationChanged] Exiting"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1289
    const-string/jumbo v0, "vzw_lbs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;->isGpsAvailable:Z

    .line 1292
    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1285
    return-void
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    .prologue
    .line 1297
    const-string v0, "VzwLocationManagerService.ProximityListener"

    const-string v1, "[onSendFinished] Entering"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    monitor-enter p0

    .line 1300
    :try_start_0
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # invokes: Lcom/vzw/location/server/VzwLocationManagerService;->decrementPendingBroadcasts()V
    invoke-static {v0}, Lcom/vzw/location/server/VzwLocationManagerService;->access$1900(Lcom/vzw/location/server/VzwLocationManagerService;)V

    .line 1301
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1302
    const-string v0, "VzwLocationManagerService.ProximityListener"

    const-string v1, "[onSendFinished] Exiting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    return-void

    .line 1301
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1280
    return-void
.end method
