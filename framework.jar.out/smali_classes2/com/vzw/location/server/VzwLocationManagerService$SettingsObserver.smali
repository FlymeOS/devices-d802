.class final Lcom/vzw/location/server/VzwLocationManagerService$SettingsObserver;
.super Ljava/lang/Object;
.source "VzwLocationManagerService.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/server/VzwLocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vzw/location/server/VzwLocationManagerService;


# direct methods
.method private constructor <init>(Lcom/vzw/location/server/VzwLocationManagerService;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/vzw/location/server/VzwLocationManagerService$SettingsObserver;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vzw/location/server/VzwLocationManagerService;Lcom/vzw/location/server/VzwLocationManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;
    .param p2, "x1"    # Lcom/vzw/location/server/VzwLocationManagerService$1;

    .prologue
    .line 423
    invoke-direct {p0, p1}, Lcom/vzw/location/server/VzwLocationManagerService$SettingsObserver;-><init>(Lcom/vzw/location/server/VzwLocationManagerService;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService$SettingsObserver;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # getter for: Lcom/vzw/location/server/VzwLocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/vzw/location/server/VzwLocationManagerService;->access$500(Lcom/vzw/location/server/VzwLocationManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService$SettingsObserver;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # invokes: Lcom/vzw/location/server/VzwLocationManagerService;->updateProvidersLocked()V
    invoke-static {v0}, Lcom/vzw/location/server/VzwLocationManagerService;->access$600(Lcom/vzw/location/server/VzwLocationManagerService;)V

    .line 428
    monitor-exit v1

    .line 429
    return-void

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
