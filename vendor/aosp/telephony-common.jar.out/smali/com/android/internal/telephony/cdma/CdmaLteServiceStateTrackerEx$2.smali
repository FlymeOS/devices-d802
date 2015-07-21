.class Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx$2;
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
    .line 230
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;

    # invokes: Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;->setTddCheckAlarm()V
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;->access$200(Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;)V

    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CTC : start TDD single lte no svc timer by user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;->mTddNoSVCTimeout:I
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;->access$300(Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;->log(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;->mTddNoSVCDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;->access$400(Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx$2;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;->mTddNoSVCDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;->access$402(Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTrackerEx;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 236
    return-void
.end method
