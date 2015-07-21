.class Lcom/android/server/net/NetworkPolicyManagerService$BackgroundRestrictForPowerSaveObserver;
.super Landroid/database/ContentObserver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundRestrictForPowerSaveObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 2920
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$BackgroundRestrictForPowerSaveObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 2921
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2922
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mResolver:Landroid/content/ContentResolver;

    .line 2923
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2936
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$BackgroundRestrictForPowerSaveObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$BackgroundRestrictForPowerSaveObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "battery_saver_restrict_bg_data"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundforPowerSave:Z

    .line 2938
    const-string v0, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LG_DATA] mRestrictBackgroundforPowerSave : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$BackgroundRestrictForPowerSaveObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundforPowerSave:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2940
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$BackgroundRestrictForPowerSaveObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->getLowPowerModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2941
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$BackgroundRestrictForPowerSaveObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$BackgroundRestrictForPowerSaveObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean v2, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundforPowerSave:Z

    if-eq v0, v2, :cond_1

    .line 2942
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$BackgroundRestrictForPowerSaveObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$BackgroundRestrictForPowerSaveObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean v2, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundforPowerSave:Z

    iput-boolean v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 2944
    :cond_1
    const-string v0, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LG_DATA] updateRulesForRestrictPower, mRestrictPower:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$BackgroundRestrictForPowerSaveObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2945
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$BackgroundRestrictForPowerSaveObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPower(Z)V

    .line 2947
    :cond_2
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    .line 2926
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$BackgroundRestrictForPowerSaveObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "battery_saver_restrict_bg_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2928
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 2931
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$BackgroundRestrictForPowerSaveObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2932
    return-void
.end method
