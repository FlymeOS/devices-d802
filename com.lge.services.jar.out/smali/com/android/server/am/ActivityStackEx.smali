.class public Lcom/android/server/am/ActivityStackEx;
.super Lcom/android/server/am/ActivityStack;
.source "ActivityStackEx.java"


# static fields
.field static final TAG_EX:Ljava/lang/String; = "ActivityStackEx"


# instance fields
.field mVzwActivityMonitor:Lcom/android/server/am/VzwActivityMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;-><init>(Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackEx;->mVzwActivityMonitor:Lcom/android/server/am/VzwActivityMonitor;

    .line 20
    const-string v0, "ActivityStackEx"

    const-string v1, "create ActivityStackEx"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const-string v0, "VZW"

    const-string v1, "ro.build.target_operator"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/android/server/am/ActivityStackEx;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/VzwActivityMonitor;->getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/VzwActivityMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackEx;->mVzwActivityMonitor:Lcom/android/server/am/VzwActivityMonitor;

    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic getStackId()I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v0

    return v0
.end method

.method moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActivityStackEx;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-interface/range {v0 .. v5}, Lcom/lge/cappuccino/IMdm;->checkStartActivityLocked(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V

    .line 56
    iget-object v0, p0, Lcom/android/server/am/ActivityStackEx;->mVzwActivityMonitor:Lcom/android/server/am/VzwActivityMonitor;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget v0, p1, Lcom/android/server/am/TaskRecord;->userId:I

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/server/am/ActivityStackEx;->mVzwActivityMonitor:Lcom/android/server/am/VzwActivityMonitor;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackEx;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/am/VzwActivityMonitor;->notifyActivityChanged(Lcom/android/server/am/TaskRecord;Landroid/content/Intent;ZLcom/android/server/am/ActivityRecord;)V

    goto :goto_0
.end method

.method protected resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    .locals 8
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 27
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    check-cast v6, Lcom/android/server/am/ActivityManagerServiceEx;

    .line 28
    .local v6, "mAmEx":Lcom/android/server/am/ActivityManagerServiceEx;
    invoke-super {p0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 29
    .local v7, "next":Lcom/android/server/am/ActivityRecord;
    const-string v0, "kids"

    const-string v1, "service.plushome.currenthome"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityManagerServiceEx;->checkGuestModeList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    const-string v0, "ActivityStackEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GuestMode Exception thrown during resume of "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v1, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string v4, "resume-exception"

    move-object v0, p0

    invoke-super/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 35
    :cond_0
    if-eqz v6, :cond_1

    if-eqz v7, :cond_1

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityManagerServiceEx;->checkIsBenchmarkAppToBlock(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    iget-object v1, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string v4, "resume-exception"

    move-object v0, p0

    invoke-super/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 40
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v2

    goto :goto_0
.end method

.method startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZLandroid/os/Bundle;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "doResume"    # Z
    .param p4, "keepCurTransition"    # Z
    .param p5, "options"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super/range {p0 .. p5}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZLandroid/os/Bundle;)V

    .line 78
    iget-object v0, p0, Lcom/android/server/am/ActivityStackEx;->mVzwActivityMonitor:Lcom/android/server/am/VzwActivityMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/server/am/ActivityStackEx;->mVzwActivityMonitor:Lcom/android/server/am/VzwActivityMonitor;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackEx;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/VzwActivityMonitor;->notifyActivityChanged(Lcom/android/server/am/TaskRecord;Landroid/content/Intent;ZLcom/android/server/am/ActivityRecord;)V

    .line 82
    :cond_0
    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/android/server/am/ActivityStack;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic unhandledBackLocked()V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0}, Lcom/android/server/am/ActivityStack;->unhandledBackLocked()V

    return-void
.end method
