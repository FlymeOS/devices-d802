.class final Lcom/android/server/power/PowerManagerServiceEx$LGSettingsObserver;
.super Landroid/database/ContentObserver;
.source "PowerManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LGSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerServiceEx;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerServiceEx;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1368
    iput-object p1, p0, Lcom/android/server/power/PowerManagerServiceEx$LGSettingsObserver;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    .line 1369
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1370
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$LGSettingsObserver;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    iget-object v1, v0, Lcom/android/server/power/PowerManagerServiceEx;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1375
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$LGSettingsObserver;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    # invokes: Lcom/android/server/power/PowerManagerServiceEx;->LGHandleSettingsChangedLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerServiceEx;->access$2100(Lcom/android/server/power/PowerManagerServiceEx;)V

    .line 1376
    monitor-exit v1

    .line 1377
    return-void

    .line 1376
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
