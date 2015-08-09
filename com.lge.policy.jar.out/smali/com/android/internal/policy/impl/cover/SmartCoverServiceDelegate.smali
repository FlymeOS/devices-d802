.class public Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;
.super Ljava/lang/Object;
.source "SmartCoverServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "SmartCoverServiceDelegate"

.field public static final _CLASS:Ljava/lang/String; = "com.lge.smartcover.SmartCoverViewManagerService"

.field public static final _PACKAGE:Ljava/lang/String; = "com.lge.smartcover"


# instance fields
.field private mCoverState:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field protected mSmartCoverService:Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v1, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;

    invoke-direct {v1}, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mCoverState:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;

    .line 55
    new-instance v1, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$1;-><init>(Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lge.smartcover"

    const-string v2, "com.lge.smartcover.SmartCoverViewManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    iget-object v1, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    const-string v1, "SmartCoverServiceDelegate"

    const-string v2, "*** Cover: can\'t bind to com.lge.smartcover.SmartCoverViewManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    const-string v1, "SmartCoverServiceDelegate"

    const-string v2, "*** Cover started"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;)Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mCoverState:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;

    return-object v0
.end method


# virtual methods
.method public isShowing()Z
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mSmartCoverService:Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mCoverState:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;

    iget-object v1, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mSmartCoverService:Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->isShowing()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;->showing:Z

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mCoverState:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;->showing:Z

    return v0
.end method

.method public onBootCompleted()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mSmartCoverService:Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mSmartCoverService:Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->onBootCompleted()V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mCoverState:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;->bootCompleted:Z

    .line 138
    return-void
.end method

.method public onCoverHide()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mSmartCoverService:Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mSmartCoverService:Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->onCoverHide()V

    .line 143
    :cond_0
    return-void
.end method

.method public onCoverShow()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mSmartCoverService:Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mSmartCoverService:Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->onCoverShow()V

    .line 149
    :cond_0
    return-void
.end method

.method public onCoverStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mSmartCoverService:Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mSmartCoverService:Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->onCoverStateChanged(I)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mCoverState:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;

    iput p1, v0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;->state:I

    .line 92
    return-void
.end method

.method public onCoverTypeChanged(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mSmartCoverService:Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mSmartCoverService:Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->onCoverTypeChanged(I)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mCoverState:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;

    iput p1, v0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;->type:I

    .line 99
    return-void
.end method

.method public onScreenTurnedOff(I)V
    .locals 2
    .param p1, "why"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mSmartCoverService:Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mSmartCoverService:Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->onScreenTurnedOff(I)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mCoverState:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;

    iput p1, v0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;->offReason:I

    .line 114
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mCoverState:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;->screenIsOn:Z

    .line 115
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mSmartCoverService:Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "SmartCoverServiceDelegate"

    const-string v1, "onScreenTurnedOn()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mSmartCoverService:Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->onScreenTurnedOn()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mCoverState:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;->screenIsOn:Z

    .line 107
    return-void
.end method

.method public onSystemReady()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mSmartCoverService:Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mSmartCoverService:Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->onSystemReady()V

    .line 124
    :goto_0
    return-void

    .line 121
    :cond_0
    const-string v0, "SmartCoverServiceDelegate"

    const-string v1, "onSystemReady() called before Cover service was ready"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mCoverState:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;->systemIsReady:Z

    goto :goto_0
.end method

.method public setCurrentUser(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mSmartCoverService:Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mSmartCoverService:Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/cover/SmartCoverServiceWrapper;->setCurrentUser(I)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->mCoverState:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;

    iput p1, v0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate$CoverState;->currentUser:I

    .line 131
    return-void
.end method
