.class Lcom/android/server/wifi/WifiLgeHs20StateMachine$Hs20EnabledState;
.super Lcom/android/internal/util/State;
.source "WifiLgeHs20StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiLgeHs20StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Hs20EnabledState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiLgeHs20StateMachine;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiLgeHs20StateMachine;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/server/wifi/WifiLgeHs20StateMachine$Hs20EnabledState;->this$0:Lcom/android/server/wifi/WifiLgeHs20StateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiLgeHs20StateMachine;Lcom/android/server/wifi/WifiLgeHs20StateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/WifiLgeHs20StateMachine;
    .param p2, "x1"    # Lcom/android/server/wifi/WifiLgeHs20StateMachine$1;

    .prologue
    .line 360
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiLgeHs20StateMachine$Hs20EnabledState;-><init>(Lcom/android/server/wifi/WifiLgeHs20StateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 363
    # getter for: Lcom/android/server/wifi/WifiLgeHs20StateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiLgeHs20StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiLgeHs20StateMachine$Hs20EnabledState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 379
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/server/wifi/WifiLgeHs20StateMachine$Hs20EnabledState;->this$0:Lcom/android/server/wifi/WifiLgeHs20StateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiLgeHs20StateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/server/wifi/WifiLgeHs20StateMachine;->access$900(Lcom/android/server/wifi/WifiLgeHs20StateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 369
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 373
    const/4 v0, 0x0

    .line 375
    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
