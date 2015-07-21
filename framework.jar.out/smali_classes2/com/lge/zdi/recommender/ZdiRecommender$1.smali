.class Lcom/lge/zdi/recommender/ZdiRecommender$1;
.super Ljava/lang/Object;
.source "ZdiRecommender.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/zdi/recommender/ZdiRecommender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/zdi/recommender/ZdiRecommender;


# direct methods
.method constructor <init>(Lcom/lge/zdi/recommender/ZdiRecommender;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/lge/zdi/recommender/ZdiRecommender$1;->this$0:Lcom/lge/zdi/recommender/ZdiRecommender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lge/zdi/recommender/ZdiRecommender$1;->this$0:Lcom/lge/zdi/recommender/ZdiRecommender;

    invoke-static {p2}, Lcom/lge/zdi/recommender/binder/ZdiRecommendConnector$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/zdi/recommender/binder/ZdiRecommendConnector;

    move-result-object v1

    # setter for: Lcom/lge/zdi/recommender/ZdiRecommender;->recommendConnector:Lcom/lge/zdi/recommender/binder/ZdiRecommendConnector;
    invoke-static {v0, v1}, Lcom/lge/zdi/recommender/ZdiRecommender;->access$002(Lcom/lge/zdi/recommender/ZdiRecommender;Lcom/lge/zdi/recommender/binder/ZdiRecommendConnector;)Lcom/lge/zdi/recommender/binder/ZdiRecommendConnector;

    .line 30
    iget-object v0, p0, Lcom/lge/zdi/recommender/ZdiRecommender$1;->this$0:Lcom/lge/zdi/recommender/ZdiRecommender;

    # getter for: Lcom/lge/zdi/recommender/ZdiRecommender;->listener:Lcom/lge/zdi/recommender/ZdiRecommender$ZdiRecommenderListener;
    invoke-static {v0}, Lcom/lge/zdi/recommender/ZdiRecommender;->access$100(Lcom/lge/zdi/recommender/ZdiRecommender;)Lcom/lge/zdi/recommender/ZdiRecommender$ZdiRecommenderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/lge/zdi/recommender/ZdiRecommender$1;->this$0:Lcom/lge/zdi/recommender/ZdiRecommender;

    # getter for: Lcom/lge/zdi/recommender/ZdiRecommender;->listener:Lcom/lge/zdi/recommender/ZdiRecommender$ZdiRecommenderListener;
    invoke-static {v0}, Lcom/lge/zdi/recommender/ZdiRecommender;->access$100(Lcom/lge/zdi/recommender/ZdiRecommender;)Lcom/lge/zdi/recommender/ZdiRecommender$ZdiRecommenderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/zdi/recommender/ZdiRecommender$ZdiRecommenderListener;->onServiceConnected()V

    .line 34
    :cond_0
    const-string v0, "ZDiRecommender"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 39
    const-string v0, "ZDiRecommender"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method
