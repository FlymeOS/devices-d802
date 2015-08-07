.class public Lcom/android/server/display/DisplayManagerServiceEx;
.super Lcom/android/server/display/DisplayManagerService;
.source "DisplayManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayManagerServiceEx$1;,
        Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DisplayManagerServiceEx"


# instance fields
.field private mDisplayPowerControllerEx:Lcom/android/server/display/DisplayPowerControllerEx;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/DisplayManagerServiceEx;)Lcom/android/server/display/DisplayPowerControllerEx;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerServiceEx;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceEx;->mDisplayPowerControllerEx:Lcom/android/server/display/DisplayPowerControllerEx;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/DisplayManagerServiceEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerServiceEx;

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerServiceEx;->getDisplayPowerController()V

    return-void
.end method

.method private getDisplayPowerController()V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceEx;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceEx;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    check-cast v0, Lcom/android/server/display/DisplayPowerControllerEx;

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerServiceEx;->mDisplayPowerControllerEx:Lcom/android/server/display/DisplayPowerControllerEx;

    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 84
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceEx;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 85
    const-string v0, "display"

    new-instance v1, Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx;-><init>(Lcom/android/server/display/DisplayManagerServiceEx;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/display/DisplayManagerServiceEx;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 86
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    new-instance v1, Lcom/android/server/display/DisplayManagerService$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayManagerService$LocalService;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/DisplayManagerServiceEx;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 87
    return-void
.end method
