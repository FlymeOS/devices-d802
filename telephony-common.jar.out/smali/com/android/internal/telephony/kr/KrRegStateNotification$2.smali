.class Lcom/android/internal/telephony/kr/KrRegStateNotification$2;
.super Ljava/lang/Object;
.source "KrRegStateNotification.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/kr/KrRegStateNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/kr/KrRegStateNotification;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/kr/KrRegStateNotification;)V
    .locals 0

    .prologue
    .line 838
    iput-object p1, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification$2;->this$0:Lcom/android/internal/telephony/kr/KrRegStateNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v0, 0x0

    .line 840
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 844
    packed-switch p2, :pswitch_data_0

    .line 853
    :goto_0
    return-void

    .line 846
    :pswitch_0
    # setter for: Lcom/android/internal/telephony/kr/KrRegStateNotification;->sHasShownRebootNotiPopup:Z
    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->access$002(Z)Z

    .line 847
    iget-object v0, p0, Lcom/android/internal/telephony/kr/KrRegStateNotification$2;->this$0:Lcom/android/internal/telephony/kr/KrRegStateNotification;

    # invokes: Lcom/android/internal/telephony/kr/KrRegStateNotification;->reBoot()V
    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->access$200(Lcom/android/internal/telephony/kr/KrRegStateNotification;)V

    goto :goto_0

    .line 850
    :pswitch_1
    # setter for: Lcom/android/internal/telephony/kr/KrRegStateNotification;->sHasShownRebootNotiPopup:Z
    invoke-static {v0}, Lcom/android/internal/telephony/kr/KrRegStateNotification;->access$002(Z)Z

    goto :goto_0

    .line 844
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
