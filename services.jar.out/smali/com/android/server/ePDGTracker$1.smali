.class Lcom/android/server/ePDGTracker$1;
.super Landroid/telephony/PhoneStateListener;
.source "ePDGTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ePDGTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ePDGTracker;


# direct methods
.method constructor <init>(Lcom/android/server/ePDGTracker;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/server/ePDGTracker$1;->this$0:Lcom/android/server/ePDGTracker;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/server/ePDGTracker$1;->this$0:Lcom/android/server/ePDGTracker;

    iput p1, v0, Lcom/android/server/ePDGTracker;->mcallstate:I

    .line 410
    iget-object v0, p0, Lcom/android/server/ePDGTracker$1;->this$0:Lcom/android/server/ePDGTracker;

    iget-object v1, p0, Lcom/android/server/ePDGTracker$1;->this$0:Lcom/android/server/ePDGTracker;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/ePDGTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGTracker;->sendMessage(Landroid/os/Message;)Z

    .line 411
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/server/ePDGTracker$1;->this$0:Lcom/android/server/ePDGTracker;

    iput-object p1, v0, Lcom/android/server/ePDGTracker;->myServiceState:Landroid/telephony/ServiceState;

    .line 404
    iget-object v0, p0, Lcom/android/server/ePDGTracker$1;->this$0:Lcom/android/server/ePDGTracker;

    iget-object v1, p0, Lcom/android/server/ePDGTracker$1;->this$0:Lcom/android/server/ePDGTracker;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/ePDGTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGTracker;->sendMessage(Landroid/os/Message;)Z

    .line 406
    return-void
.end method
