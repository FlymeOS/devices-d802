.class Lcom/android/internal/telephony/SingleBinary$7;
.super Ljava/lang/Object;
.source "SingleBinary.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SingleBinary;->displayFlexInfo(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SingleBinary;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SingleBinary;)V
    .locals 0

    .prologue
    .line 1447
    iput-object p1, p0, Lcom/android/internal/telephony/SingleBinary$7;->this$0:Lcom/android/internal/telephony/SingleBinary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1450
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1451
    packed-switch p2, :pswitch_data_0

    .line 1459
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1453
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/SingleBinary$7;->this$0:Lcom/android/internal/telephony/SingleBinary;

    # getter for: Lcom/android/internal/telephony/SingleBinary;->mFlexText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/telephony/SingleBinary;->access$1500(Lcom/android/internal/telephony/SingleBinary;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/telephony/SingleBinary;->access$400()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1454
    # getter for: Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/telephony/SingleBinary;->access$400()Landroid/content/Context;

    move-result-object v0

    # getter for: Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/telephony/SingleBinary;->access$400()Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/telephony/SingleBinary$7;->this$0:Lcom/android/internal/telephony/SingleBinary;

    # getter for: Lcom/android/internal/telephony/SingleBinary;->mFlexText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/telephony/SingleBinary;->access$1500(Lcom/android/internal/telephony/SingleBinary;)Landroid/widget/TextView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1455
    iget-object v0, p0, Lcom/android/internal/telephony/SingleBinary$7;->this$0:Lcom/android/internal/telephony/SingleBinary;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/telephony/SingleBinary;->mFlexText:Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SingleBinary;->access$1502(Lcom/android/internal/telephony/SingleBinary;Landroid/widget/TextView;)Landroid/widget/TextView;

    goto :goto_0

    .line 1451
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
