.class Lcom/android/internal/telephony/dataconnection/DcTracker$2$2;
.super Ljava/lang/Object;
.source "DcTracker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/dataconnection/DcTracker$2;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker$2;)V
    .locals 0

    .prologue
    .line 682
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2$2;->this$1:Lcom/android/internal/telephony/dataconnection/DcTracker$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2$2;->this$1:Lcom/android/internal/telephony/dataconnection/DcTracker$2;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2$2;->this$1:Lcom/android/internal/telephony/dataconnection/DcTracker$2;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const v3, 0x4283e

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setTddStatus(ILandroid/os/Message;)V

    .line 685
    return-void
.end method
