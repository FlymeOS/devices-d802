.class public Lcom/android/server/wifi/WifiLgeHs20StateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiLgeHs20StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiLgeHs20StateMachine$1;,
        Lcom/android/server/wifi/WifiLgeHs20StateMachine$Hs20AccessState;,
        Lcom/android/server/wifi/WifiLgeHs20StateMachine$Hs20ProvisionState;,
        Lcom/android/server/wifi/WifiLgeHs20StateMachine$Hs20RegistrationState;,
        Lcom/android/server/wifi/WifiLgeHs20StateMachine$Hs20DiscoveryState;,
        Lcom/android/server/wifi/WifiLgeHs20StateMachine$Hs20EnabledState;,
        Lcom/android/server/wifi/WifiLgeHs20StateMachine$Hs20DisabledState;,
        Lcom/android/server/wifi/WifiLgeHs20StateMachine$InitialState;,
        Lcom/android/server/wifi/WifiLgeHs20StateMachine$DefaultState;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiLgeHs20StateMachine"

.field private static VDBG:Z

.field private static mLogMessages:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mHs20AccessState:Lcom/android/internal/util/State;

.field private mHs20DisabledState:Lcom/android/internal/util/State;

.field private mHs20DiscoveryState:Lcom/android/internal/util/State;

.field private mHs20EnabledState:Lcom/android/internal/util/State;

.field private mHs20ProvisionState:Lcom/android/internal/util/State;

.field private mHs20RegistrationState:Lcom/android/internal/util/State;

.field private mInitialState:Lcom/android/internal/util/State;

.field private mInterfaceName:Ljava/lang/String;

.field private mVerboseLoggingLevel:I

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 132
    sput-boolean v0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->DBG:Z

    .line 133
    sput-boolean v0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->VDBG:Z

    .line 134
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mLogMessages:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Handler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wlanInterface"    # Ljava/lang/String;
    .param p3, "wsm"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p4, "t"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 179
    const-string v0, "WifiLgeHs20StateMachine"

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 135
    iput v3, p0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mVerboseLoggingLevel:I

    .line 155
    new-instance v0, Lcom/android/server/wifi/WifiLgeHs20StateMachine$DefaultState;

    invoke-direct {v0, p0, v2}, Lcom/android/server/wifi/WifiLgeHs20StateMachine$DefaultState;-><init>(Lcom/android/server/wifi/WifiLgeHs20StateMachine;Lcom/android/server/wifi/WifiLgeHs20StateMachine$1;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mDefaultState:Lcom/android/internal/util/State;

    .line 157
    new-instance v0, Lcom/android/server/wifi/WifiLgeHs20StateMachine$InitialState;

    invoke-direct {v0, p0, v2}, Lcom/android/server/wifi/WifiLgeHs20StateMachine$InitialState;-><init>(Lcom/android/server/wifi/WifiLgeHs20StateMachine;Lcom/android/server/wifi/WifiLgeHs20StateMachine$1;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mInitialState:Lcom/android/internal/util/State;

    .line 159
    new-instance v0, Lcom/android/server/wifi/WifiLgeHs20StateMachine$Hs20DisabledState;

    invoke-direct {v0, p0, v2}, Lcom/android/server/wifi/WifiLgeHs20StateMachine$Hs20DisabledState;-><init>(Lcom/android/server/wifi/WifiLgeHs20StateMachine;Lcom/android/server/wifi/WifiLgeHs20StateMachine$1;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mHs20DisabledState:Lcom/android/internal/util/State;

    .line 161
    new-instance v0, Lcom/android/server/wifi/WifiLgeHs20StateMachine$Hs20EnabledState;

    invoke-direct {v0, p0, v2}, Lcom/android/server/wifi/WifiLgeHs20StateMachine$Hs20EnabledState;-><init>(Lcom/android/server/wifi/WifiLgeHs20StateMachine;Lcom/android/server/wifi/WifiLgeHs20StateMachine$1;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mHs20EnabledState:Lcom/android/internal/util/State;

    .line 167
    new-instance v0, Lcom/android/server/wifi/WifiLgeHs20StateMachine$Hs20DiscoveryState;

    invoke-direct {v0, p0, v2}, Lcom/android/server/wifi/WifiLgeHs20StateMachine$Hs20DiscoveryState;-><init>(Lcom/android/server/wifi/WifiLgeHs20StateMachine;Lcom/android/server/wifi/WifiLgeHs20StateMachine$1;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mHs20DiscoveryState:Lcom/android/internal/util/State;

    .line 169
    new-instance v0, Lcom/android/server/wifi/WifiLgeHs20StateMachine$Hs20RegistrationState;

    invoke-direct {v0, p0, v2}, Lcom/android/server/wifi/WifiLgeHs20StateMachine$Hs20RegistrationState;-><init>(Lcom/android/server/wifi/WifiLgeHs20StateMachine;Lcom/android/server/wifi/WifiLgeHs20StateMachine$1;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mHs20RegistrationState:Lcom/android/internal/util/State;

    .line 171
    new-instance v0, Lcom/android/server/wifi/WifiLgeHs20StateMachine$Hs20ProvisionState;

    invoke-direct {v0, p0, v2}, Lcom/android/server/wifi/WifiLgeHs20StateMachine$Hs20ProvisionState;-><init>(Lcom/android/server/wifi/WifiLgeHs20StateMachine;Lcom/android/server/wifi/WifiLgeHs20StateMachine$1;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mHs20ProvisionState:Lcom/android/internal/util/State;

    .line 173
    new-instance v0, Lcom/android/server/wifi/WifiLgeHs20StateMachine$Hs20AccessState;

    invoke-direct {v0, p0, v2}, Lcom/android/server/wifi/WifiLgeHs20StateMachine$Hs20AccessState;-><init>(Lcom/android/server/wifi/WifiLgeHs20StateMachine;Lcom/android/server/wifi/WifiLgeHs20StateMachine$1;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mHs20AccessState:Lcom/android/internal/util/State;

    .line 180
    iput-object p1, p0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mContext:Landroid/content/Context;

    .line 181
    iput-object p2, p0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mInterfaceName:Ljava/lang/String;

    .line 182
    iput-object p3, p0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 184
    new-instance v0, Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiNative;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 189
    iget-object v0, p0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 190
    iget-object v0, p0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mInitialState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 191
    iget-object v0, p0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mHs20DisabledState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 192
    iget-object v0, p0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mHs20EnabledState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 193
    iget-object v0, p0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mHs20DiscoveryState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mHs20EnabledState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 194
    iget-object v0, p0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mHs20RegistrationState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mHs20EnabledState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 195
    iget-object v0, p0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mHs20ProvisionState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mHs20EnabledState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 196
    iget-object v0, p0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mHs20AccessState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mHs20EnabledState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 198
    iget-object v0, p0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 199
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->setLogRecSize(I)V

    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->setLogOnlyTransitions(Z)V

    .line 201
    sget-boolean v0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->VDBG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->setDbg(Z)V

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->start()V

    .line 206
    return-void
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 129
    sget-boolean v0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->DBG:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiLgeHs20StateMachine;Landroid/os/Message;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiLgeHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V

    return-void
.end method

.method private logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    .line 270
    sget-boolean v0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mLogMessages:Z

    if-eqz v0, :cond_0

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->logd(Ljava/lang/String;)V

    .line 273
    :cond_0
    return-void
.end method


# virtual methods
.method enableVerboseLogging(I)V
    .locals 2
    .param p1, "verbose"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 218
    iput p1, p0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mVerboseLoggingLevel:I

    .line 219
    if-lez p1, :cond_0

    .line 220
    sput-boolean v1, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->DBG:Z

    .line 221
    sput-boolean v1, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->VDBG:Z

    .line 222
    sput-boolean v1, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mLogMessages:Z

    .line 228
    :goto_0
    return-void

    .line 224
    :cond_0
    sput-boolean v0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->DBG:Z

    .line 225
    sput-boolean v0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->VDBG:Z

    .line 226
    sput-boolean v0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mLogMessages:Z

    goto :goto_0
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->smToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    iget v1, p1, Landroid/os/Message;->what:I

    .line 259
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getVerboseLoggingLevel()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->mVerboseLoggingLevel:I

    return v0
.end method

.method smToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "what"    # I

    .prologue
    .line 235
    const-string v0, "unknown"

    .line 239
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    return-object v0
.end method

.method smToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 231
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->smToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
