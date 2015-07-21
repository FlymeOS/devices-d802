.class Lcom/android/internal/telephony/lgdata/LgDcTracker$LTEDataRoamingSettingObserver;
.super Landroid/database/ContentObserver;
.source "LgDcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgdata/LgDcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LTEDataRoamingSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/lgdata/LgDcTracker;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1735
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker$LTEDataRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    .line 1736
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1737
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 1753
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LgDcTracker$LTEDataRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    # invokes: Lcom/android/internal/telephony/lgdata/LgDcTracker;->handleLTEDataOnRoamingChange()V
    invoke-static {v0}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->access$300(Lcom/android/internal/telephony/lgdata/LgDcTracker;)V

    .line 1754
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1740
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1741
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "data_lte_roaming"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1743
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1746
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1747
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1748
    return-void
.end method
