.class Lcom/android/server/power/LPWGController$KnockOnObserver;
.super Landroid/os/UEventObserver;
.source "LPWGController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/LPWGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KnockOnObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/LPWGController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/LPWGController;)V
    .locals 0

    .prologue
    .line 1064
    iput-object p1, p0, Lcom/android/server/power/LPWGController$KnockOnObserver;->this$0:Lcom/android/server/power/LPWGController;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 1065
    return-void
.end method

.method private updateLocked(Ljava/lang/String;)V
    .locals 3
    .param p1, "uev"    # Ljava/lang/String;

    .prologue
    .line 1081
    iget-object v1, p0, Lcom/android/server/power/LPWGController$KnockOnObserver;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mHandler:Lcom/android/server/power/LPWGController$LPWGHandler;
    invoke-static {v1}, Lcom/android/server/power/LPWGController;->access$500(Lcom/android/server/power/LPWGController;)Lcom/android/server/power/LPWGController$LPWGHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/android/server/power/LPWGController$LPWGHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1082
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/power/LPWGController$KnockOnObserver;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mHandler:Lcom/android/server/power/LPWGController$LPWGHandler;
    invoke-static {v1}, Lcom/android/server/power/LPWGController;->access$500(Lcom/android/server/power/LPWGController;)Lcom/android/server/power/LPWGController$LPWGHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/power/LPWGController$LPWGHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1083
    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 1069
    iget-object v1, p0, Lcom/android/server/power/LPWGController$KnockOnObserver;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/power/LPWGController;->access$1900(Lcom/android/server/power/LPWGController;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1070
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/LPWGController$KnockOnObserver;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mInit:Z
    invoke-static {v1}, Lcom/android/server/power/LPWGController;->access$2400(Lcom/android/server/power/LPWGController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1071
    const-string v1, "TOUCH_GESTURE_WAKEUP"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1072
    .local v0, "uevalue":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/power/LPWGController$KnockOnObserver;->updateLocked(Ljava/lang/String;)V

    .line 1074
    .end local v0    # "uevalue":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/LPWGController$KnockOnObserver;->this$0:Lcom/android/server/power/LPWGController;

    # getter for: Lcom/android/server/power/LPWGController;->mInit:Z
    invoke-static {v1}, Lcom/android/server/power/LPWGController;->access$2400(Lcom/android/server/power/LPWGController;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1075
    iget-object v1, p0, Lcom/android/server/power/LPWGController$KnockOnObserver;->this$0:Lcom/android/server/power/LPWGController;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/power/LPWGController;->mInit:Z
    invoke-static {v1, v3}, Lcom/android/server/power/LPWGController;->access$2402(Lcom/android/server/power/LPWGController;Z)Z

    .line 1077
    :cond_1
    monitor-exit v2

    .line 1078
    return-void

    .line 1077
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
