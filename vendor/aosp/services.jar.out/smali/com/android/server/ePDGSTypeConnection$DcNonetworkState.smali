.class Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;
.super Lcom/android/internal/util/State;
.source "ePDGSTypeConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ePDGSTypeConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcNonetworkState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ePDGSTypeConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/ePDGSTypeConnection;)V
    .locals 0

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ePDGSTypeConnection;Lcom/android/server/ePDGSTypeConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p2, "x1"    # Lcom/android/server/ePDGSTypeConnection$1;

    .prologue
    .line 1036
    invoke-direct {p0, p1}, Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;-><init>(Lcom/android/server/ePDGSTypeConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    invoke-virtual {v0}, Lcom/android/server/ePDGSTypeConnection;->clearSettings()V

    .line 1043
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v1, "DcNonetworkState state enter"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 1045
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v1, "DcNonetworkState state exit"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 1054
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 1060
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1094
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcNonetworkState nothandled msg.what=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 1097
    const/4 v0, 0x0

    .line 1100
    .local v0, "retVal":Z
    :goto_0
    return v0

    .line 1064
    .end local v0    # "retVal":Z
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/ePDGSTypeConnection;->isGoodPacket:Z

    .line 1065
    const/4 v0, 0x1

    .line 1066
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 1070
    .end local v0    # "retVal":Z
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iput-boolean v2, v1, Lcom/android/server/ePDGSTypeConnection;->isWiFi:Z

    .line 1071
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iput-boolean v2, v1, Lcom/android/server/ePDGSTypeConnection;->isGoodPacket:Z

    .line 1072
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-boolean v1, v1, Lcom/android/server/ePDGSTypeConnection;->isManager:Z

    if-ne v1, v2, :cond_0

    .line 1073
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    # getter for: Lcom/android/server/ePDGSTypeConnection;->mReadyState:Lcom/android/server/ePDGSTypeConnection$DcReadyState;
    invoke-static {v2}, Lcom/android/server/ePDGSTypeConnection;->access$1700(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcReadyState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->access$5500(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V

    .line 1075
    :cond_0
    const/4 v0, 0x1

    .line 1076
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 1079
    .end local v0    # "retVal":Z
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v2, "DcNonetworkState get request in no network so deffer msg"

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 1080
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    # invokes: Lcom/android/server/ePDGSTypeConnection;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/server/ePDGSTypeConnection;->access$5600(Lcom/android/server/ePDGSTypeConnection;Landroid/os/Message;)V

    .line 1081
    const/4 v0, 0x1

    .line 1082
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 1085
    .end local v0    # "retVal":Z
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iput-boolean v2, v1, Lcom/android/server/ePDGSTypeConnection;->isManager:Z

    .line 1086
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-boolean v1, v1, Lcom/android/server/ePDGSTypeConnection;->isWiFi:Z

    if-ne v1, v2, :cond_1

    .line 1087
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    iget-object v2, p0, Lcom/android/server/ePDGSTypeConnection$DcNonetworkState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    # getter for: Lcom/android/server/ePDGSTypeConnection;->mReadyState:Lcom/android/server/ePDGSTypeConnection$DcReadyState;
    invoke-static {v2}, Lcom/android/server/ePDGSTypeConnection;->access$1700(Lcom/android/server/ePDGSTypeConnection;)Lcom/android/server/ePDGSTypeConnection$DcReadyState;

    move-result-object v2

    # invokes: Lcom/android/server/ePDGSTypeConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ePDGSTypeConnection;->access$5700(Lcom/android/server/ePDGSTypeConnection;Lcom/android/internal/util/IState;)V

    .line 1088
    :cond_1
    const/4 v0, 0x1

    .line 1089
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 1060
    nop

    :sswitch_data_0
    .sparse-switch
        0x40000 -> :sswitch_1
        0x40002 -> :sswitch_2
        0x40004 -> :sswitch_3
        0x4000b -> :sswitch_0
    .end sparse-switch
.end method
