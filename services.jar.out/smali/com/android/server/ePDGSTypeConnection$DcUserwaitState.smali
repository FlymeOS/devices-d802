.class Lcom/android/server/ePDGSTypeConnection$DcUserwaitState;
.super Lcom/android/internal/util/State;
.source "ePDGSTypeConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ePDGSTypeConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcUserwaitState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ePDGSTypeConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/ePDGSTypeConnection;)V
    .locals 0

    .prologue
    .line 880
    iput-object p1, p0, Lcom/android/server/ePDGSTypeConnection$DcUserwaitState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ePDGSTypeConnection;Lcom/android/server/ePDGSTypeConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/ePDGSTypeConnection;
    .param p2, "x1"    # Lcom/android/server/ePDGSTypeConnection$1;

    .prologue
    .line 880
    invoke-direct {p0, p1}, Lcom/android/server/ePDGSTypeConnection$DcUserwaitState;-><init>(Lcom/android/server/ePDGSTypeConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 886
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection$DcUserwaitState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v1, "DcUserwaitState state enter"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 889
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/server/ePDGSTypeConnection$DcUserwaitState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    const-string v1, "DcUserwaitState state exit"

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGSTypeConnection;->log(Ljava/lang/String;)V

    .line 898
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 904
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 913
    iget-object v1, p0, Lcom/android/server/ePDGSTypeConnection$DcUserwaitState;->this$0:Lcom/android/server/ePDGSTypeConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcUserwaitState nothandled msg.what=0x"

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

    .line 916
    const/4 v0, 0x0

    .line 919
    .local v0, "retVal":Z
    :goto_0
    return v0

    .line 908
    .end local v0    # "retVal":Z
    :pswitch_0
    const/4 v0, 0x1

    .line 909
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 904
    nop

    :pswitch_data_0
    .packed-switch 0x40002
        :pswitch_0
    .end packed-switch
.end method
