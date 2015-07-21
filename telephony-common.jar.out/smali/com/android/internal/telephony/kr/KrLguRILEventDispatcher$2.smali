.class Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$2;
.super Ljava/lang/Object;
.source "KrLguRILEventDispatcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->showPopUp(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;)V
    .locals 0

    .prologue
    .line 769
    iput-object p1, p0, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$2;->this$0:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v5, 0x0

    .line 771
    const-string v0, "showPopUp / onClick "

    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 773
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$2;->this$0:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->mLockOrderPopup:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->access$1002(Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 774
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$2;->this$0:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

    iget-object v1, p0, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$2;->this$0:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

    iget-object v2, p0, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$2;->this$0:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

    iget-object v3, p0, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$2;->this$0:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

    iget-object v4, p0, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$2;->this$0:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

    # setter for: Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->mIsLTEEMMReject:Z
    invoke-static {v4, v5}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->access$602(Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;Z)Z

    move-result v4

    # setter for: Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->mIsLTEAuthError:Z
    invoke-static {v3, v4}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->access$502(Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;Z)Z

    move-result v3

    # setter for: Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->mIsLGTHDRNetworkError:Z
    invoke-static {v2, v3}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->access$402(Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;Z)Z

    move-result v2

    # setter for: Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->mIsLGTUnauthenticated:Z
    invoke-static {v1, v2}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->access$302(Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;Z)Z

    move-result v1

    # setter for: Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->mIsLGTUnregister:Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->access$202(Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;Z)Z

    .line 775
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher$2;->this$0:Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;

    # setter for: Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->mRejectNum:I
    invoke-static {v0, v5}, Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;->access$702(Lcom/android/internal/telephony/kr/KrLguRILEventDispatcher;I)I

    .line 776
    return-void
.end method
