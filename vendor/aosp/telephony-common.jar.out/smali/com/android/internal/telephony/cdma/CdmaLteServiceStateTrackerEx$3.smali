.class Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx$3;
.super Ljava/lang/Object;
.source "CdmaLteServiceStateTrackerEx.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;->displayTDDNoSVCDuring3min()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;

    const/16 v3, 0x44d

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setTddStatus(ILandroid/os/Message;)V

    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;->mTddNoSVCDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;->access$400(Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;->mTddNoSVCDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;->access$402(Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 227
    return-void
.end method
