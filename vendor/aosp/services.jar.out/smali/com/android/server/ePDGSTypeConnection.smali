.class public Lcom/android/server/ePDGSTypeConnection;
.super Lcom/android/server/ePDGConnection;
.source "ePDGSTypeConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ePDGSTypeConnection$1;,
        Lcom/android/server/ePDGSTypeConnection$DcDefaultState;,
        Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;,
        Lcom/android/server/ePDGSTypeConnection$DcReadyState;,
        Lcom/android/server/ePDGSTypeConnection$DcUserwaitState;,
        Lcom/android/server/ePDGSTypeConnection$DcEPSScanState;,
        Lcom/android/server/ePDGSTypeConnection$DcConnectingState;,
        Lcom/android/server/ePDGSTypeConnection$DcConnectedState;,
        Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;,
        Lcom/android/server/ePDGSTypeConnection$DcFailState;
    }
.end annotation


# instance fields
.field private mConnectedState:Lcom/android/server/ePDGSTypeConnection$DcConnectedState;

.field private mConnectingState:Lcom/android/server/ePDGSTypeConnection$DcConnectingState;

.field private mDefaultState:Lcom/android/server/ePDGSTypeConnection$DcDefaultState;

.field private mDisconnectingState:Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;

.field private mEPSScanState:Lcom/android/server/ePDGSTypeConnection$DcEPSScanState;

.field private mFailState:Lcom/android/server/ePDGSTypeConnection$DcFailState;

.field private mNonetworkState:Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;

.field private mReadyState:Lcom/android/server/ePDGSTypeConnection$DcReadyState;

.field private mUserwaitState:Lcom/android/server/ePDGSTypeConnection$DcUserwaitState;


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/server/ePDGConnection;-><init>(Ljava/lang/String;I)V

    .line 57
    new-instance v0, Lcom/android/server/ePDGSTypeConnection$DcDefaultState;

    invoke-direct {v0, p0, v1}, Lcom/android/server/ePDGSTypeConnection$DcDefaultState;-><init>(Lcom/android/server/ePDGSTypeConnection;Lcom/android/server/ePDGSTypeConnection$1;)V

    iput-object v0, p0, Lcom/android/server/ePDGSTypeConnection;->mDefaultState:Lcom/android/server/ePDGSTypeConnection$DcDefaultState;

    .line 58
    new-instance v0, Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;

    invoke-direct {v0, p0, v1}, Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;-><init>(Lcom/android/server/ePDGSTypeConnection;Lcom/android/server/ePDGSTypeConnection$1;)V

    iput-object v0, p0, Lcom/android/server/ePDGSTypeConnection;->mNonetworkState:Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;

    .line 59
    new-instance v0, Lcom/android/server/ePDGSTypeConnection$DcReadyState;

    invoke-direct {v0, p0, v1}, Lcom/android/server/ePDGSTypeConnection$DcReadyState;-><init>(Lcom/android/server/ePDGSTypeConnection;Lcom/android/server/ePDGSTypeConnection$1;)V

    iput-object v0, p0, Lcom/android/server/ePDGSTypeConnection;->mReadyState:Lcom/android/server/ePDGSTypeConnection$DcReadyState;

    .line 60
    new-instance v0, Lcom/android/server/ePDGSTypeConnection$DcEPSScanState;

    invoke-direct {v0, p0, v1}, Lcom/android/server/ePDGSTypeConnection$DcEPSScanState;-><init>(Lcom/android/server/ePDGSTypeConnection;Lcom/android/server/ePDGSTypeConnection$1;)V

    iput-object v0, p0, Lcom/android/server/ePDGSTypeConnection;->mEPSScanState:Lcom/android/server/ePDGSTypeConnection$DcEPSScanState;

    .line 61
    new-instance v0, Lcom/android/server/ePDGSTypeConnection$DcUserwaitState;

    invoke-direct {v0, p0, v1}, Lcom/android/server/ePDGSTypeConnection$DcUserwaitState;-><init>(Lcom/android/server/ePDGSTypeConnection;Lcom/android/server/ePDGSTypeConnection$1;)V

    iput-object v0, p0, Lcom/android/server/ePDGSTypeConnection;->mUserwaitState:Lcom/android/server/ePDGSTypeConnection$DcUserwaitState;

    .line 62
    new-instance v0, Lcom/android/server/ePDGSTypeConnection$DcConnectingState;

    invoke-direct {v0, p0, v1}, Lcom/android/server/ePDGSTypeConnection$DcConnectingState;-><init>(Lcom/android/server/ePDGSTypeConnection;Lcom/android/server/ePDGSTypeConnection$1;)V

    iput-object v0, p0, Lcom/android/server/ePDGSTypeConnection;->mConnectingState:Lcom/android/server/ePDGSTypeConnection$DcConnectingState;

    .line 64
    new-instance v0, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;

    invoke-direct {v0, p0, v1}, Lcom/android/server/ePDGSTypeConnection$DcConnectedState;-><init>(Lcom/android/server/ePDGSTypeConnection;Lcom/android/server/ePDGSTypeConnection$1;)V

    iput-object v0, p0, Lcom/android/server/ePDGSTypeConnection;->mConnectedState:Lcom/android/server/ePDGSTypeConnection$DcConnectedState;

    .line 65
    new-instance v0, Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;

    invoke-direct {v0, p0, v1}, Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;-><init>(Lcom/android/server/ePDGSTypeConnection;Lcom/android/server/ePDGSTypeConnection$1;)V

    iput-object v0, p0, Lcom/android/server/ePDGSTypeConnection;->mDisconnectingState:Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;

    .line 66
    new-instance v0, Lcom/android/server/ePDGSTypeConnection$DcFailState;

    invoke-direct {v0, p0, v1}, Lcom/android/server/ePDGSTypeConnection$DcFailState;-><init>(Lcom/android/server/ePDGSTypeConnection;Lcom/android/server/ePDGSTypeConnection$1;)V

    iput-object v0, p0, Lcom/android/server/ePDGSTypeConnection;->mFailState:Lcom/android/server/ePDGSTypeConnection$DcFailState;

    .line 74
    const-string v0, "ePDGConnection constructor E"

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 76
    iput p2, p0, Lcom/android/server/ePDGSTypeConnection;->mFid:I

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ePDGSTypeConnection;->mGWList:Ljava/util/ArrayList;

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGSTypeConnection;->setDbg(Z)V

    .line 86
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection;->mDefaultState:Lcom/android/server/ePDGSTypeConnection$DcDefaultState;

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGSTypeConnection;->addState(Lcom/android/internal/util/State;)V

    .line 88
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection;->mNonetworkState:Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;

    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection;->mDefaultState:Lcom/android/server/ePDGSTypeConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ePDGSTypeConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 89
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection;->mReadyState:Lcom/android/server/ePDGSTypeConnection$DcReadyState;

    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection;->mDefaultState:Lcom/android/server/ePDGSTypeConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ePDGSTypeConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 90
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection;->mEPSScanState:Lcom/android/server/ePDGSTypeConnection$DcEPSScanState;

    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection;->mDefaultState:Lcom/android/server/ePDGSTypeConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ePDGSTypeConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 91
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection;->mUserwaitState:Lcom/android/server/ePDGSTypeConnection$DcUserwaitState;

    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection;->mDefaultState:Lcom/android/server/ePDGSTypeConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ePDGSTypeConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 92
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection;->mConnectingState:Lcom/android/server/ePDGSTypeConnection$DcConnectingState;

    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection;->mDefaultState:Lcom/android/server/ePDGSTypeConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ePDGSTypeConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 93
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection;->mConnectedState:Lcom/android/server/ePDGSTypeConnection$DcConnectedState;

    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection;->mDefaultState:Lcom/android/server/ePDGSTypeConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ePDGSTypeConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 94
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection;->mDisconnectingState:Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;

    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection;->mDefaultState:Lcom/android/server/ePDGSTypeConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ePDGSTypeConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 95
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection;->mFailState:Lcom/android/server/ePDGSTypeConnection$DcFailState;

    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection;->mDefaultState:Lcom/android/server/ePDGSTypeConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ePDGSTypeConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 96
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection;->mNonetworkState:Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGSTypeConnection;->setInitialState(Lcom/android/internal/util/State;)V

    .line 99
    const-string v0, "Jphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ILGTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ILGTelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ePDGSTypeConnection;->mLGPhoneService:Lcom/android/internal/telephony/ILGTelephony;

    .line 101
    const-string v0, "ePDGConnection constructor X"

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcConnectingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection;->mConnectingState:Lcom/android/server/ePDGSTypeConnection$DcConnectingState;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection;->mNonetworkState:Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcConnectedState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection;->mConnectedState:Lcom/android/server/ePDGSTypeConnection$DcConnectedState;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcReadyState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection;->mReadyState:Lcom/android/server/ePDGSTypeConnection$DcReadyState;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection;->mDisconnectingState:Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcFailState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection;->mFailState:Lcom/android/server/ePDGSTypeConnection$DcFailState;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/ePDGSTypeConnection;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/ePDGSTypeConnection;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcEPSScanState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection;->mEPSScanState:Lcom/android/server/ePDGSTypeConnection$DcEPSScanState;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/ePDGSTypeConnection;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/ePDGSTypeConnection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGSTypeConnection;->removeMessages(I)V

    return-void
.end method

.method static makePDGConnection(I)Lcom/android/server/ePDGSTypeConnection;
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 107
    new-instance v0, Lcom/android/server/ePDGSTypeConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ePDGDC-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/server/ePDGSTypeConnection;-><init>(Ljava/lang/String;I)V

    .line 109
    .local v0, "ePDGDc":Lcom/android/server/ePDGSTypeConnection;
    invoke-virtual {v0}, Lcom/android/server/ePDGSTypeConnection;->start()V

    .line 111
    return-object v0
.end method


# virtual methods
.method public ePDGHandOverStatus(I)V
    .locals 3
    .param p1, "extendedRAT"    # I

    .prologue
    const/4 v2, 0x0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ePDGHandOverStatus, extRat :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 141
    iput p1, p0, Lcom/android/server/ePDGSTypeConnection;->mExtendedRat:I

    .line 143
    const/16 v0, 0x12

    if-ne p1, v0, :cond_1

    .line 145
    const v0, 0x40005

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGSTypeConnection;->sendMessage(I)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    .line 151
    const v0, 0x4000c

    invoke-virtual {p0, v0, v2}, Lcom/android/server/ePDGSTypeConnection;->sendMessage(II)V

    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/ePDGSTypeConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection;->mConnectedState:Lcom/android/server/ePDGSTypeConnection$DcConnectedState;

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/ePDGSTypeConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection;->mDisconnectingState:Lcom/android/server/ePDGSTypeConnection$DcDisconnectingState;

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/ePDGSTypeConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection;->mFailState:Lcom/android/server/ePDGSTypeConnection$DcFailState;

    if-ne v0, v1, :cond_0

    .line 158
    :cond_3
    const v0, 0x40006

    invoke-virtual {p0, v0, v2}, Lcom/android/server/ePDGSTypeConnection;->sendMessage(II)V

    goto :goto_0
.end method

.method public ePDGteardown(Landroid/os/Message;)Z
    .locals 1
    .param p1, "onCompletedMsg"    # Landroid/os/Message;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/server/ePDGSTypeConnection;->mCompletedMsg:Landroid/os/Message;

    .line 127
    const v0, 0x40009

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGSTypeConnection;->sendMessage(I)V

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/server/ePDGSTypeConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection;->mConnectedState:Lcom/android/server/ePDGSTypeConnection$DcConnectedState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
