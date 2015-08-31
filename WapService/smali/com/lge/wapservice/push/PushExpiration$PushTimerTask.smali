.class public Lcom/lge/wapservice/push/PushExpiration$PushTimerTask;
.super Ljava/util/TimerTask;
.source "PushExpiration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wapservice/push/PushExpiration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PushTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wapservice/push/PushExpiration;


# direct methods
.method public constructor <init>(Lcom/lge/wapservice/push/PushExpiration;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lge/wapservice/push/PushExpiration$PushTimerTask;->this$0:Lcom/lge/wapservice/push/PushExpiration;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 48
    iget-object v1, p0, Lcom/lge/wapservice/push/PushExpiration$PushTimerTask;->this$0:Lcom/lge/wapservice/push/PushExpiration;

    invoke-virtual {v1}, Lcom/lge/wapservice/push/PushExpiration;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 49
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/wapservice/push/PushExpiration;->executePushDeletionForExpired(Landroid/content/Context;)V

    .line 51
    const-string v1, "WapService"

    const-string v2, "<PushExpiration> executePushDeletionForExpired func. called"

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method
