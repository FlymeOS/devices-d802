.class Lcom/android/server/location/LgeGpsLocationProvider$3;
.super Landroid/database/ContentObserver;
.source "LgeGpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LgeGpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LgeGpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/LgeGpsLocationProvider;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 1552
    iput-object p1, p0, Lcom/android/server/location/LgeGpsLocationProvider$3;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 1556
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "mGPSSettingObserver is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider$3;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    # getter for: Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/LgeGpsLocationProvider;->access$100(Lcom/android/server/location/LgeGpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 1560
    .local v0, "gpsSetting":Z
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mGPSSettingObserver. Gps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    if-nez v0, :cond_0

    .line 1565
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider$3;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    iget-object v1, v1, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/location/LgeGpsConstants;->mTracking:Z

    .line 1566
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider$3;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    iget-object v1, v1, Lcom/android/server/location/LgeGpsLocationProvider;->mGpsConst:Lcom/android/server/location/LgeGpsConstants;

    invoke-virtual {v1}, Lcom/android/server/location/LgeGpsConstants;->soundVibControl()V

    .line 1567
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "[test DCM] gpsSetting is changed so that gps notification is off. "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    :cond_0
    return-void
.end method
