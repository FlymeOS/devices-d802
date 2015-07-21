.class Lcom/lge/wfds/session/UdpDataSender$UdpClient;
.super Landroid/os/AsyncTask;
.source "UdpDataSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/session/UdpDataSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UdpClient"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<[B",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wfds/session/UdpDataSender;


# direct methods
.method private constructor <init>(Lcom/lge/wfds/session/UdpDataSender;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/lge/wfds/session/UdpDataSender$UdpClient;->this$0:Lcom/lge/wfds/session/UdpDataSender;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/wfds/session/UdpDataSender;Lcom/lge/wfds/session/UdpDataSender$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/wfds/session/UdpDataSender;
    .param p2, "x1"    # Lcom/lge/wfds/session/UdpDataSender$1;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/lge/wfds/session/UdpDataSender$UdpClient;-><init>(Lcom/lge/wfds/session/UdpDataSender;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 197
    check-cast p1, [[B

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lge/wfds/session/UdpDataSender$UdpClient;->doInBackground([[B)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([[B)Ljava/lang/Void;
    .locals 3
    .param p1, "msg"    # [[B

    .prologue
    .line 200
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/lge/wfds/session/UdpDataSender$UdpClient;->this$0:Lcom/lge/wfds/session/UdpDataSender;

    aget-object v2, p1, v0

    # invokes: Lcom/lge/wfds/session/UdpDataSender;->sendDataPacket([B)V
    invoke-static {v1, v2}, Lcom/lge/wfds/session/UdpDataSender;->access$100(Lcom/lge/wfds/session/UdpDataSender;[B)V

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
