.class public Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;
.super Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;
.source "VzwHalGpsLocationProviderImp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$2;,
        Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;,
        Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;
    }
.end annotation


# static fields
.field public static final AGPS_SERVER_ADDR_TYPE_MPC:I = 0x3

.field public static final AGPS_SERVER_ADDR_TYPE_PDE:I = 0x2

.field public static final AGPS_SERVER_ADDR_TYPE_SUPL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VzwHalGpsLocProvider"


# instance fields
.field private DEBUG:Z

.field private VERBOSE:Z

.field private mCallback:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

.field private mCallbackFromEngine:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

.field private mCredentials:Ljava/lang/String;

.field private mCurrentSessionId:I

.field private mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

.field private mIsInitDone:Z

.field private mIsPLTSHost:Z

.field private mLocSrvAddr:Ljava/net/InetSocketAddress;

.field private mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

.field private mPLTSPDEHostname:Ljava/lang/String;

.field private mPdeAddr:Ljava/net/InetSocketAddress;

.field private mResetCategory:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

.field private mSessionIdValid:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;-><init>()V

    .line 32
    iput-boolean v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    .line 33
    iput-boolean v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->VERBOSE:Z

    .line 51
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->Dormant:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    .line 53
    iput-boolean v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mSessionIdValid:Z

    .line 61
    iput-boolean v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    .line 66
    const-string v0, "192.168.1.1"

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mPLTSPDEHostname:Ljava/lang/String;

    .line 67
    iput-boolean v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsPLTSHost:Z

    .line 490
    new-instance v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$1;-><init>(Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;)V

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mCallbackFromEngine:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    .line 80
    const-string v0, "VzwHalGpsLocProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    .line 81
    const-string v0, "VzwHalGpsLocProvider"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->VERBOSE:Z

    .line 82
    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->VERBOSE:Z

    return v0
.end method

.method static synthetic access$200(Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;I)Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->getLocationCallbackHandler(I)Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;)Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->getGeneralCallbackHandler()Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getGeneralCallbackHandler()Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;
    .locals 1

    .prologue
    .line 482
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 484
    const/4 v0, 0x0

    .line 487
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mCallback:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getLocationCallbackHandler(I)Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;
    .locals 2
    .param p1, "sessionId"    # I

    .prologue
    .line 463
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mSessionIdValid:Z

    if-eqz v0, :cond_1

    .line 465
    iget v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mCurrentSessionId:I

    if-ne p1, v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mCallback:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    :goto_0
    monitor-exit p0

    return-object v0

    .line 471
    :cond_0
    :try_start_1
    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "not matching with active sessoin. drop fix report"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 476
    :cond_1
    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "no active sessoin. drop fix report"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized modeAdjustmentStateMachine_Dormant(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;)V
    .locals 2
    .param p1, "criteria"    # Lcom/qualcomm/location/vzw_library/VzwHalCriteria;

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->getFixMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mode not recognized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 90
    :pswitch_0
    :try_start_1
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->Standalone:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    .line 91
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "move to Standalone state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 97
    :pswitch_1
    :try_start_2
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->MSB:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    .line 98
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "move to MSB state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    :pswitch_2
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->MSA:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    .line 105
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "move to MSA state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :pswitch_3
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->MSB:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    .line 116
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "move to MSB state for request of AFLT or Optimal mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized modeAdjustmentStateMachine_MSA(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;)V
    .locals 2
    .param p1, "criteria"    # Lcom/qualcomm/location/vzw_library/VzwHalCriteria;

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->getFixMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mode not recognized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 168
    :pswitch_0
    :try_start_1
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->Standalone:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    .line 169
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "move to Standalone state from MSA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    :cond_0
    :goto_0
    :pswitch_1
    monitor-exit p0

    return-void

    .line 175
    :pswitch_2
    :try_start_2
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->MSB:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    .line 176
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "move to MSB state from MSA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    :pswitch_3
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->MSB:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    .line 192
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "move to MSB state from MSA for request of AFLT or Optimal mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized modeAdjustmentStateMachine_MSB(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;)V
    .locals 2
    .param p1, "criteria"    # Lcom/qualcomm/location/vzw_library/VzwHalCriteria;

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->getFixMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mode not recognized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 205
    :pswitch_0
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->setFixMode(I)V

    .line 206
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "override with MSB mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    :cond_0
    :goto_0
    :pswitch_1
    monitor-exit p0

    return-void

    .line 216
    :pswitch_2
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p1, v0}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->setFixMode(I)V

    .line 217
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "override with MSB mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized modeAdjustmentStateMachine_Standalone(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;)V
    .locals 2
    .param p1, "criteria"    # Lcom/qualcomm/location/vzw_library/VzwHalCriteria;

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->getFixMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mode not recognized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 135
    :pswitch_0
    :try_start_1
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->MSB:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    .line 136
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "move to MSB state from MSS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    :cond_0
    :goto_0
    :pswitch_1
    monitor-exit p0

    return-void

    .line 141
    :pswitch_2
    const/4 v0, 0x2

    :try_start_2
    invoke-virtual {p1, v0}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->setFixMode(I)V

    .line 142
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "override with Standalone mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    :pswitch_3
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->MSB:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    .line 154
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "move to MSB state from MSS for request of AFLT or Optimal mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getCredentials()Ljava/lang/String;
    .locals 2

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    if-nez v0, :cond_0

    .line 416
    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "Engine is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const/4 v0, 0x0

    .line 419
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mCredentials:Ljava/lang/String;

    goto :goto_0
.end method

.method public getGpsResetType()I
    .locals 4

    .prologue
    .line 432
    iget-boolean v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    if-nez v1, :cond_0

    .line 434
    const-string v1, "VzwHalGpsLocProvider"

    const-string v2, "Engine is not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v0, -0x1

    .line 439
    :goto_0
    return v0

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mResetCategory:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

    invoke-virtual {v1}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;->ordinal()I

    move-result v0

    .line 438
    .local v0, "resetType":I
    const-string v1, "VzwHalGpsLocProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGpsResetType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLocSrvAddress()Ljava/net/InetSocketAddress;
    .locals 2

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    if-nez v0, :cond_0

    .line 359
    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "Engine is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v0, 0x0

    .line 363
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mLocSrvAddr:Ljava/net/InetSocketAddress;

    goto :goto_0
.end method

.method public getPdeAddress()Ljava/net/InetSocketAddress;
    .locals 2

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    if-nez v0, :cond_0

    .line 327
    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "Engine is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v0, 0x0

    .line 331
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mPdeAddr:Ljava/net/InetSocketAddress;

    goto :goto_0
.end method

.method public declared-synchronized init(Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    .prologue
    .line 396
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mCallback:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    .line 399
    invoke-static {}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->getInstance()Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    .line 401
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mCallbackFromEngine:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    invoke-interface {v0, v1}, Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;->setCallbackInterface(Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;)V

    .line 402
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    invoke-interface {v0}, Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;->init()Z

    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    .line 405
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->Dormant:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    .line 407
    const-string v0, "VzwHalGpsLocProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    .line 408
    const-string v0, "VzwHalGpsLocProvider"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->VERBOSE:Z

    .line 410
    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "engine init done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    monitor-exit p0

    return-void

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public setCredentials(Ljava/lang/String;)V
    .locals 2
    .param p1, "credentials"    # Ljava/lang/String;

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    if-nez v0, :cond_0

    .line 425
    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "Engine is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :goto_0
    return-void

    .line 428
    :cond_0
    iput-object p1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mCredentials:Ljava/lang/String;

    goto :goto_0
.end method

.method public setGpsReset(I)Ljava/lang/Boolean;
    .locals 5
    .param p1, "resetType"    # I

    .prologue
    const/4 v4, 0x0

    .line 443
    iget-boolean v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    if-nez v1, :cond_0

    .line 445
    const-string v1, "VzwHalGpsLocProvider"

    const-string v2, "Engine is not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 458
    :goto_0
    return-object v1

    .line 448
    :cond_0
    const-string v1, "VzwHalGpsLocProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setGpsResetType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mResetCategory:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

    invoke-static {}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;->values()[Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

    move-result-object v1

    aget-object v1, v1, p1

    iput-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mResetCategory:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

    .line 452
    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mResetCategory:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;

    # getter for: Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;->mMask:I
    invoke-static {v2}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;->access$000(Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$ResetCategories;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;->resetGps(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "aioob":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 455
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public setLocSrvAddress(Ljava/net/InetSocketAddress;)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    if-nez v0, :cond_1

    .line 369
    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "Engine is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iput-object p1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mLocSrvAddr:Ljava/net/InetSocketAddress;

    .line 374
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->VERBOSE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mLocSrvAddr:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    .line 375
    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "SUPL server nullified"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPdeAddress(Ljava/net/InetSocketAddress;)V
    .locals 3
    .param p1, "address"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    if-nez v0, :cond_1

    .line 337
    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "Engine is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iput-object p1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mPdeAddr:Ljava/net/InetSocketAddress;

    .line 344
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mPdeAddr:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_2

    .line 345
    const-string v0, "VzwHalGpsLocProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPdeAddress() - PDE address.getHostString() is Exist! *[1]Hostname: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mPdeAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " *[2]Port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mPdeAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mPdeAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mPLTSPDEHostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsPLTSHost:Z

    .line 351
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->VERBOSE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mPdeAddr:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    .line 352
    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "PDE server nullified"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 347
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsPLTSHost:Z

    goto :goto_1
.end method

.method public declared-synchronized shutdown()V
    .locals 2

    .prologue
    .line 380
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    invoke-interface {v0}, Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;->stop()Z

    .line 381
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    invoke-interface {v0}, Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;->cleanup()V

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mCallback:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    .line 384
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mPdeAddr:Ljava/net/InetSocketAddress;

    .line 387
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mLocSrvAddr:Ljava/net/InetSocketAddress;

    .line 389
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mSessionIdValid:Z

    .line 390
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->Dormant:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    .line 392
    const-string v0, "VzwHalGpsLocProvider"

    const-string v1, "engine shutdown completed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    monitor-exit p0

    return-void

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;I)Z
    .locals 6
    .param p1, "criteria"    # Lcom/qualcomm/location/vzw_library/VzwHalCriteria;
    .param p2, "sessionId"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 237
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    if-nez v2, :cond_0

    .line 239
    const-string v1, "VzwHalGpsLocProvider"

    const-string v2, "Engine is not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    :goto_0
    monitor-exit p0

    return v0

    .line 243
    :cond_0
    :try_start_1
    iput p2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mCurrentSessionId:I

    .line 244
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mSessionIdValid:Z

    .line 246
    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mPdeAddr:Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_1

    .line 253
    const-string v2, "VzwHalGpsLocProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start() - mIsPLTSHost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsPLTSHost:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-boolean v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsPLTSHost:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mPdeAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mPdeAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;->set_agps_server(ILjava/lang/String;I)V

    .line 259
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mLocSrvAddr:Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_2

    .line 262
    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mLocSrvAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mLocSrvAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;->set_agps_server(ILjava/lang/String;I)V

    .line 265
    :cond_2
    sget-object v2, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$2;->$SwitchMap$com$qualcomm$location$vzw_library$imp$VzwHalGpsLocationProviderImp$FixModeDecisionState:[I

    iget-object v3, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    invoke-virtual {v3}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 284
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown mode decision state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 257
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mPdeAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mPdeAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;->set_agps_server(ILjava/lang/String;I)V

    goto :goto_1

    .line 268
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->modeAdjustmentStateMachine_Dormant(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;)V

    .line 287
    :goto_2
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->getHintNextFixArriveInSec()I

    move-result v2

    if-gez v2, :cond_5

    .line 290
    iget-boolean v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "VzwHalGpsLocProvider"

    const-string v3, "move back to Dormant state for lack of hint"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_4
    sget-object v2, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->Dormant:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    .line 294
    :cond_5
    iget-boolean v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->VERBOSE:Z

    if-eqz v2, :cond_6

    const-string v2, "VzwHalGpsLocProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request in mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->getFixMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_6
    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    iget-object v3, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mCredentials:Ljava/lang/String;

    invoke-interface {v2, p1, p2, v3}, Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;->start(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 298
    const-string v1, "VzwHalGpsLocProvider"

    const-string v2, "engine start failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 272
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->modeAdjustmentStateMachine_Standalone(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;)V

    goto :goto_2

    .line 276
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->modeAdjustmentStateMachine_MSA(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;)V

    goto :goto_2

    .line 280
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->modeAdjustmentStateMachine_MSB(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_7
    move v0, v1

    .line 301
    goto/16 :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized stop()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 305
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mIsInitDone:Z

    if-nez v1, :cond_0

    .line 307
    const-string v1, "VzwHalGpsLocProvider"

    const-string v2, "Engine is not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    :goto_0
    monitor-exit p0

    return v0

    .line 311
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mSessionIdValid:Z

    .line 314
    sget-object v1, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;->Dormant:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    iput-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mModeDecisionState:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$FixModeDecisionState;

    .line 316
    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->mGpsEngine:Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;

    invoke-interface {v1}, Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;->stop()Z

    move-result v1

    if-nez v1, :cond_1

    .line 318
    const-string v1, "VzwHalGpsLocProvider"

    const-string v2, "engine stop failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 321
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
