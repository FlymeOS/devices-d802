.class final Lcom/android/server/display/DisplayPowerControllerEx$LGSettingsObserver;
.super Landroid/database/ContentObserver;
.source "DisplayPowerControllerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerControllerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LGSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerControllerEx;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerControllerEx;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerControllerEx$LGSettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerControllerEx;

    .line 323
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 324
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerEx$LGSettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerControllerEx;

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerControllerEx;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerEx$LGSettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerControllerEx;

    # invokes: Lcom/android/server/display/DisplayPowerControllerEx;->LGUpdateSettingsLocked()V
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerControllerEx;->access$800(Lcom/android/server/display/DisplayPowerControllerEx;)V

    .line 330
    monitor-exit v1

    .line 331
    return-void

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
