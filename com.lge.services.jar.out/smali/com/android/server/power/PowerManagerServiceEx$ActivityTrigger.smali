.class Lcom/android/server/power/PowerManagerServiceEx$ActivityTrigger;
.super Lcom/lge/frameworks/IActivityTrigger$Stub;
.source "PowerManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityTrigger"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerServiceEx;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerServiceEx;)V
    .locals 0

    .prologue
    .line 1189
    iput-object p1, p0, Lcom/android/server/power/PowerManagerServiceEx$ActivityTrigger;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    invoke-direct {p0}, Lcom/lge/frameworks/IActivityTrigger$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerServiceEx;Lcom/android/server/power/PowerManagerServiceEx$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerServiceEx$1;

    .prologue
    .line 1189
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerServiceEx$ActivityTrigger;-><init>(Lcom/android/server/power/PowerManagerServiceEx;)V

    return-void
.end method

.method private isSamePackage(Ljava/lang/String;)Z
    .locals 6
    .param p1, "activity"    # Ljava/lang/String;

    .prologue
    .line 1216
    const/4 v2, 0x0

    .line 1217
    .local v2, "result":Z
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1218
    .local v0, "componentInfo":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1220
    .local v1, "pkgName":Ljava/lang/String;
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/server/power/PowerManagerServiceEx$ActivityTrigger;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    # getter for: Lcom/android/server/power/PowerManagerServiceEx;->mForegroundPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerServiceEx;->access$1800(Lcom/android/server/power/PowerManagerServiceEx;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.android.systemui"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1222
    :cond_0
    const/4 v2, 0x1

    .line 1225
    :cond_1
    # getter for: Lcom/android/server/power/PowerManagerServiceEx;->NOTUSER_DEBUG:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerServiceEx;->access$500()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1226
    const-string v3, "PowerManagerServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[VEL] mForegroundPackageName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerServiceEx$ActivityTrigger;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    # getter for: Lcom/android/server/power/PowerManagerServiceEx;->mForegroundPackageName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/power/PowerManagerServiceEx;->access$1800(Lcom/android/server/power/PowerManagerServiceEx;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pkgName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", activity : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :cond_2
    return v2
.end method


# virtual methods
.method public activityResuming(Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1194
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$ActivityTrigger;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    # getter for: Lcom/android/server/power/PowerManagerServiceEx;->mEASStateOn:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerServiceEx;->access$1500(Lcom/android/server/power/PowerManagerServiceEx;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1195
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$ActivityTrigger;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    # setter for: Lcom/android/server/power/PowerManagerServiceEx;->mDeviceLockExpired:Z
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerServiceEx;->access$1602(Lcom/android/server/power/PowerManagerServiceEx;Z)Z

    .line 1201
    :cond_0
    :goto_0
    return-void

    .line 1196
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$ActivityTrigger;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    # getter for: Lcom/android/server/power/PowerManagerServiceEx;->mDeviceLockExpired:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerServiceEx;->access$1600(Lcom/android/server/power/PowerManagerServiceEx;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerServiceEx$ActivityTrigger;->isSamePackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$ActivityTrigger;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerServiceEx;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->lockNow(Landroid/os/Bundle;)V

    .line 1198
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$ActivityTrigger;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    # setter for: Lcom/android/server/power/PowerManagerServiceEx;->mDeviceLockExpired:Z
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerServiceEx;->access$1602(Lcom/android/server/power/PowerManagerServiceEx;Z)Z

    .line 1199
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$ActivityTrigger;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    # invokes: Lcom/android/server/power/PowerManagerServiceEx;->resetPackageName()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerServiceEx;->access$1700(Lcom/android/server/power/PowerManagerServiceEx;)V

    goto :goto_0
.end method

.method public activityStarting(Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1206
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$ActivityTrigger;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    # getter for: Lcom/android/server/power/PowerManagerServiceEx;->mEASStateOn:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerServiceEx;->access$1500(Lcom/android/server/power/PowerManagerServiceEx;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1207
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$ActivityTrigger;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    # setter for: Lcom/android/server/power/PowerManagerServiceEx;->mDeviceLockExpired:Z
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerServiceEx;->access$1602(Lcom/android/server/power/PowerManagerServiceEx;Z)Z

    .line 1213
    :cond_0
    :goto_0
    return-void

    .line 1208
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$ActivityTrigger;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    # getter for: Lcom/android/server/power/PowerManagerServiceEx;->mDeviceLockExpired:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerServiceEx;->access$1600(Lcom/android/server/power/PowerManagerServiceEx;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerServiceEx$ActivityTrigger;->isSamePackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$ActivityTrigger;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerServiceEx;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->lockNow(Landroid/os/Bundle;)V

    .line 1210
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$ActivityTrigger;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    # setter for: Lcom/android/server/power/PowerManagerServiceEx;->mDeviceLockExpired:Z
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerServiceEx;->access$1602(Lcom/android/server/power/PowerManagerServiceEx;Z)Z

    .line 1211
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$ActivityTrigger;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    # invokes: Lcom/android/server/power/PowerManagerServiceEx;->resetPackageName()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerServiceEx;->access$1700(Lcom/android/server/power/PowerManagerServiceEx;)V

    goto :goto_0
.end method
