.class public Lcom/android/nfc/cardemulation/LAidRoutingManager;
.super Lcom/android/nfc/cardemulation/AidRoutingManager;
.source "LAidRoutingManager.java"


# static fields
.field static final TAG:Ljava/lang/String; = "LAidRoutingManager"

.field protected static sManager:Lcom/android/nfc/cardemulation/LAidRoutingManager;


# instance fields
.field mDefaultRouteAidRoutingMgr:I

.field mPaymentAid:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;-><init>()V

    .line 34
    sput-object p0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->sManager:Lcom/android/nfc/cardemulation/LAidRoutingManager;

    .line 37
    return-void
.end method


# virtual methods
.method public configureRouting(Ljava/util/HashMap;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "aidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v15

    invoke-direct {v5, v15}, Landroid/util/SparseArray;-><init>(I)V

    .line 47
    .local v5, "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/HashMap;-><init>(I)V

    .line 49
    .local v14, "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 50
    .local v3, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v13, 0x0

    .line 51
    .local v13, "route":I
    :goto_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 52
    .local v2, "aid":Ljava/lang/String;
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v5, v13, v15}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 53
    .local v9, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {v5, v13, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 50
    .end local v2    # "aid":Ljava/lang/String;
    .end local v9    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "route":I
    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mDefaultOffHostRoute:I

    goto :goto_1

    .line 58
    .end local v3    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 59
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 60
    sget-boolean v15, Lcom/android/nfc/cardemulation/LAidRoutingManager;->DBG:Z

    const-string v17, "LAidRoutingManager"

    const-string v18, "Routing table unchanged, not updating"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v15, 0x0

    monitor-exit v16

    .line 139
    .end local v11    # "i$":Ljava/util/Iterator;
    :goto_2
    return v15

    .line 65
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/cardemulation/LAidRoutingManager;->clearNfcRoutingTableLocked()V

    .line 66
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    .line 67
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    .line 68
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mAidMatchingSupport:I

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_6

    .line 83
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mDefaultRoute:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    .line 84
    .local v8, "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v8, :cond_6

    .line 85
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 88
    .local v7, "defaultRouteAid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 89
    .local v4, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 90
    .restart local v2    # "aid":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 91
    .restart local v13    # "route":I
    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mDefaultRoute:I

    if-eq v13, v15, :cond_4

    .line 92
    sget-boolean v15, Lcom/android/nfc/cardemulation/LAidRoutingManager;->DBG:Z

    const-string v17, "LAidRoutingManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Adding AID "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " for default "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "route, because a conflicting shorter AID will be "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "added to the routing table"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 95
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mPaymentAid:Ljava/util/ArrayList;

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mPaymentAid:Ljava/util/ArrayList;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 96
    sget-boolean v15, Lcom/android/nfc/cardemulation/LAidRoutingManager;->DBG:Z

    const-string v17, "LAidRoutingManager"

    const-string v18, "Selected payment has priority, SKIP"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 134
    .end local v2    # "aid":Ljava/lang/String;
    .end local v4    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "defaultRouteAid":Ljava/lang/String;
    .end local v8    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "route":I
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 99
    .restart local v2    # "aid":Ljava/lang/String;
    .restart local v4    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v7    # "defaultRouteAid":Ljava/lang/String;
    .restart local v8    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "route":I
    :cond_5
    :try_start_1
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mDefaultRoute:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v7, v0}, Lcom/android/nfc/NfcService;->routeAids(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 107
    .end local v2    # "aid":Ljava/lang/String;
    .end local v4    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "defaultRouteAid":Ljava/lang/String;
    .end local v8    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "route":I
    :cond_6
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v10, v15, :cond_c

    .line 108
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v15, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 109
    .restart local v13    # "route":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mDefaultRoute:I

    if-eq v13, v15, :cond_b

    .line 110
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v15, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 111
    .local v6, "aidsForRoute":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 112
    .restart local v2    # "aid":Ljava/lang/String;
    const-string v15, "*"

    invoke-virtual {v2, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 113
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mAidMatchingSupport:I

    if-nez v15, :cond_8

    .line 114
    sget-boolean v15, Lcom/android/nfc/cardemulation/LAidRoutingManager;->DBG:Z

    const-string v17, "LAidRoutingManager"

    const-string v18, "This device does not support prefix AIDs."

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 115
    :cond_8
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mAidMatchingSupport:I

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_9

    .line 116
    sget-boolean v15, Lcom/android/nfc/cardemulation/LAidRoutingManager;->DBG:Z

    const-string v17, "LAidRoutingManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Routing prefix AID "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to route "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v15

    const/16 v17, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v13}, Lcom/android/nfc/NfcService;->routeAids(Ljava/lang/String;I)V

    goto :goto_5

    .line 121
    :cond_9
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mAidMatchingSupport:I

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_7

    .line 122
    sget-boolean v15, Lcom/android/nfc/cardemulation/LAidRoutingManager;->DBG:Z

    const-string v17, "LAidRoutingManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Routing prefix AID "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to route "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v15

    invoke-virtual {v15, v2, v13}, Lcom/android/nfc/NfcService;->routeAids(Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 127
    :cond_a
    sget-boolean v15, Lcom/android/nfc/cardemulation/LAidRoutingManager;->DBG:Z

    const-string v17, "LAidRoutingManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Routing exact AID "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to route "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v15

    invoke-virtual {v15, v2, v13}, Lcom/android/nfc/NfcService;->routeAids(Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 107
    .end local v2    # "aid":Ljava/lang/String;
    .end local v6    # "aidsForRoute":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    .line 134
    .end local v13    # "route":I
    :cond_c
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/nfc/NfcService;->commitRouting()V

    .line 139
    const/4 v15, 0x1

    goto/16 :goto_2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 148
    invoke-super {p0, p1, p2, p3}, Lcom/android/nfc/cardemulation/AidRoutingManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 149
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    const-string v2, "Selected Payment AID:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mPaymentAid:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 157
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v3, p0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 153
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mPaymentAid:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    .local v0, "aid":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "        \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 156
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setDefaultDest(I)V
    .locals 0
    .param p1, "route"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mDefaultRouteAidRoutingMgr:I

    .line 41
    iput p1, p0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mDefaultRoute:I

    .line 42
    return-void
.end method

.method public setDefaultPaymentAidList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "paymentAid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mPaymentAid:Ljava/util/ArrayList;

    .line 144
    return-void
.end method
