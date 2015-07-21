.class public Lcom/lge/zdi/recommender/ZdiRecommender;
.super Ljava/lang/Object;
.source "ZdiRecommender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/zdi/recommender/ZdiRecommender$ZdiRecommenderListener;
    }
.end annotation


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String; = "com.lge.zdi.ZdiIntelligentService"

.field public static final TAG:Ljava/lang/String; = "ZDiRecommender"


# instance fields
.field private final connection:Landroid/content/ServiceConnection;

.field private listener:Lcom/lge/zdi/recommender/ZdiRecommender$ZdiRecommenderListener;

.field private final mContext:Landroid/content/Context;

.field private recommendConnector:Lcom/lge/zdi/recommender/binder/ZdiRecommendConnector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/zdi/recommender/ZdiRecommender$ZdiRecommenderListener;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "l"    # Lcom/lge/zdi/recommender/ZdiRecommender$ZdiRecommenderListener;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/lge/zdi/recommender/ZdiRecommender$1;

    invoke-direct {v0, p0}, Lcom/lge/zdi/recommender/ZdiRecommender$1;-><init>(Lcom/lge/zdi/recommender/ZdiRecommender;)V

    iput-object v0, p0, Lcom/lge/zdi/recommender/ZdiRecommender;->connection:Landroid/content/ServiceConnection;

    .line 50
    if-eqz p1, :cond_1

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.zdi.ZdiIntelligentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lge/zdi/recommender/ZdiRecommender;->connection:Landroid/content/ServiceConnection;

    const/16 v2, 0x40

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    const-string v0, "ZDiRecommender"

    const-string v1, "Connect to com.lge.zdi.ZdiIntelligentService failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/lge/zdi/recommender/ZdiRecommender;->mContext:Landroid/content/Context;

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/zdi/recommender/ZdiRecommender;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/lge/zdi/recommender/ZdiRecommender;Lcom/lge/zdi/recommender/binder/ZdiRecommendConnector;)Lcom/lge/zdi/recommender/binder/ZdiRecommendConnector;
    .locals 0
    .param p0, "x0"    # Lcom/lge/zdi/recommender/ZdiRecommender;
    .param p1, "x1"    # Lcom/lge/zdi/recommender/binder/ZdiRecommendConnector;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/lge/zdi/recommender/ZdiRecommender;->recommendConnector:Lcom/lge/zdi/recommender/binder/ZdiRecommendConnector;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lge/zdi/recommender/ZdiRecommender;)Lcom/lge/zdi/recommender/ZdiRecommender$ZdiRecommenderListener;
    .locals 1
    .param p0, "x0"    # Lcom/lge/zdi/recommender/ZdiRecommender;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lge/zdi/recommender/ZdiRecommender;->listener:Lcom/lge/zdi/recommender/ZdiRecommender$ZdiRecommenderListener;

    return-object v0
.end method


# virtual methods
.method public checkZdiRecommend()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-object v2, p0, Lcom/lge/zdi/recommender/ZdiRecommender;->recommendConnector:Lcom/lge/zdi/recommender/binder/ZdiRecommendConnector;

    if-eqz v2, :cond_0

    .line 73
    :try_start_0
    iget-object v2, p0, Lcom/lge/zdi/recommender/ZdiRecommender;->recommendConnector:Lcom/lge/zdi/recommender/binder/ZdiRecommendConnector;

    invoke-interface {v2}, Lcom/lge/zdi/recommender/binder/ZdiRecommendConnector;->checkZdiRecommend()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 81
    :goto_0
    return v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "ZDiRecommender"

    const-string v3, "checkZdiRecommend => ERROR! service not connected..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/zdi/recommender/ZdiRecommender;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/lge/zdi/recommender/ZdiRecommender;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/zdi/recommender/ZdiRecommender;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/zdi/recommender/ZdiRecommender;->recommendConnector:Lcom/lge/zdi/recommender/binder/ZdiRecommendConnector;

    .line 68
    :cond_0
    return-void
.end method

.method public getGlobalRecApp(I)Ljava/util/List;
    .locals 4
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/zdi/recommender/common/RankedApp;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v2, p0, Lcom/lge/zdi/recommender/ZdiRecommender;->recommendConnector:Lcom/lge/zdi/recommender/binder/ZdiRecommendConnector;

    if-eqz v2, :cond_0

    .line 87
    :try_start_0
    iget-object v2, p0, Lcom/lge/zdi/recommender/ZdiRecommender;->recommendConnector:Lcom/lge/zdi/recommender/binder/ZdiRecommendConnector;

    invoke-interface {v2, p1}, Lcom/lge/zdi/recommender/binder/ZdiRecommendConnector;->getGlobalRecApp(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 95
    :goto_0
    return-object v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 94
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "ZDiRecommender"

    const-string v3, "getGlobalRecApp => ERROR! service not connected..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getGlobalRecPairApp(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .param p1, "ignorepkg1"    # Ljava/lang/String;
    .param p2, "ignorepkg2"    # Ljava/lang/String;
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/zdi/recommender/common/RankedApp;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v2, p0, Lcom/lge/zdi/recommender/ZdiRecommender;->recommendConnector:Lcom/lge/zdi/recommender/binder/ZdiRecommendConnector;

    if-eqz v2, :cond_0

    .line 115
    :try_start_0
    iget-object v2, p0, Lcom/lge/zdi/recommender/ZdiRecommender;->recommendConnector:Lcom/lge/zdi/recommender/binder/ZdiRecommendConnector;

    invoke-interface {v2, p1, p2, p3}, Lcom/lge/zdi/recommender/binder/ZdiRecommendConnector;->getGlobalRecPairApp(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 123
    :goto_0
    return-object v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 122
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "ZDiRecommender"

    const-string v3, "getGlobalRecPairApp => ERROR! service not connected..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIndividualRecApp(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .param p1, "pkgName1"    # Ljava/lang/String;
    .param p2, "pkgName2"    # Ljava/lang/String;
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/zdi/recommender/common/RankedApp;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v2, p0, Lcom/lge/zdi/recommender/ZdiRecommender;->recommendConnector:Lcom/lge/zdi/recommender/binder/ZdiRecommendConnector;

    if-eqz v2, :cond_0

    .line 101
    :try_start_0
    iget-object v2, p0, Lcom/lge/zdi/recommender/ZdiRecommender;->recommendConnector:Lcom/lge/zdi/recommender/binder/ZdiRecommendConnector;

    invoke-interface {v2, p1, p2, p3}, Lcom/lge/zdi/recommender/binder/ZdiRecommendConnector;->getIndividualRecApp(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 109
    :goto_0
    return-object v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 108
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "ZDiRecommender"

    const-string v3, "getIndividualRecApp => ERROR! service not connected..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getRecAppList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p5, "ignorepkg1"    # Ljava/lang/String;
    .param p6, "ignorepkg2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/zdi/recommender/common/RankedApp;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/zdi/recommender/common/RankedApp;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/zdi/recommender/common/RankedApp;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/zdi/recommender/common/RankedApp;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "recentlist":Ljava/util/List;, "Ljava/util/List<Lcom/lge/zdi/recommender/common/RankedApp;>;"
    .local p2, "globalpairlist":Ljava/util/List;, "Ljava/util/List<Lcom/lge/zdi/recommender/common/RankedApp;>;"
    .local p3, "indilist":Ljava/util/List;, "Ljava/util/List<Lcom/lge/zdi/recommender/common/RankedApp;>;"
    .local p4, "globallist":Ljava/util/List;, "Ljava/util/List<Lcom/lge/zdi/recommender/common/RankedApp;>;"
    iget-object v0, p0, Lcom/lge/zdi/recommender/ZdiRecommender;->recommendConnector:Lcom/lge/zdi/recommender/binder/ZdiRecommendConnector;

    if-eqz v0, :cond_0

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/lge/zdi/recommender/ZdiRecommender;->recommendConnector:Lcom/lge/zdi/recommender/binder/ZdiRecommendConnector;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/lge/zdi/recommender/binder/ZdiRecommendConnector;->getRecAppList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v7

    .line 160
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 165
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "ZDiRecommender"

    const-string v1, "getRecAppList => ERROR! service not connected..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getRecentPairApp(I)Ljava/util/List;
    .locals 4
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/zdi/recommender/common/RankedApp;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-object v2, p0, Lcom/lge/zdi/recommender/ZdiRecommender;->recommendConnector:Lcom/lge/zdi/recommender/binder/ZdiRecommendConnector;

    if-eqz v2, :cond_0

    .line 129
    :try_start_0
    iget-object v2, p0, Lcom/lge/zdi/recommender/ZdiRecommender;->recommendConnector:Lcom/lge/zdi/recommender/binder/ZdiRecommendConnector;

    invoke-interface {v2, p1}, Lcom/lge/zdi/recommender/binder/ZdiRecommendConnector;->getRecentPairApp(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 137
    :goto_0
    return-object v1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 136
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "ZDiRecommender"

    const-string v3, "getRecentPairApp => ERROR! service not connected..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getRecentlyUsedApp(I)Ljava/util/List;
    .locals 4
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/zdi/recommender/common/RankedApp;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v2, p0, Lcom/lge/zdi/recommender/ZdiRecommender;->recommendConnector:Lcom/lge/zdi/recommender/binder/ZdiRecommendConnector;

    if-eqz v2, :cond_0

    .line 143
    :try_start_0
    iget-object v2, p0, Lcom/lge/zdi/recommender/ZdiRecommender;->recommendConnector:Lcom/lge/zdi/recommender/binder/ZdiRecommendConnector;

    invoke-interface {v2, p1}, Lcom/lge/zdi/recommender/binder/ZdiRecommendConnector;->getRecentlyUsedApp(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 151
    :goto_0
    return-object v1

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 150
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "ZDiRecommender"

    const-string v3, "getRecentlyUsedApp => ERROR! service not connected..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
