.class final Lcom/android/server/am/ActivityManagerServiceEx$ExtendedBinderInternal;
.super Landroid/app/IActivityManagerEx$Stub;
.source "ActivityManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExtendedBinderInternal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerServiceEx;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActivityManagerServiceEx;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/am/ActivityManagerServiceEx;

    invoke-direct {p0}, Landroid/app/IActivityManagerEx$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActivityManagerServiceEx;Lcom/android/server/am/ActivityManagerServiceEx$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/ActivityManagerServiceEx;
    .param p2, "x1"    # Lcom/android/server/am/ActivityManagerServiceEx$1;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerServiceEx$ExtendedBinderInternal;-><init>(Lcom/android/server/am/ActivityManagerServiceEx;)V

    return-void
.end method


# virtual methods
.method public registerActivityTrigger(Lcom/lge/frameworks/IActivityTrigger;)V
    .locals 2
    .param p1, "trig"    # Lcom/lge/frameworks/IActivityTrigger;

    .prologue
    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/am/ActivityManagerServiceEx;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerServiceEx;->mATList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/am/ActivityManagerServiceEx;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/ActivityManagerServiceEx;->mATList:Ljava/util/LinkedList;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/am/ActivityManagerServiceEx;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerServiceEx;->mATList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 98
    monitor-exit p0

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public showLockTaskToastEx()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/am/ActivityManagerServiceEx;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerServiceEx;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V

    .line 103
    return-void
.end method

.method public updateFlag(II)V
    .locals 4
    .param p1, "flag"    # I
    .param p2, "taskId"    # I

    .prologue
    .line 76
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/am/ActivityManagerServiceEx;

    invoke-virtual {v1, p2}, Lcom/android/server/am/ActivityManagerServiceEx;->recentTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 77
    .local v0, "tr":Lcom/android/server/am/TaskRecord;
    const-string v1, "ActivityManagerServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    const-string v1, "ActivityManagerServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flag update="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", TopActivity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    iput p1, v1, Lcom/android/server/am/ActivityRecord;->isBlock:I

    .line 82
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceEx$ExtendedBinderInternal;->this$0:Lcom/android/server/am/ActivityManagerServiceEx;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerServiceEx;->updateScreenShotList(Lcom/android/server/am/TaskRecord;)V

    .line 86
    :cond_0
    return-void
.end method
