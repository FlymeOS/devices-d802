.class Lcom/android/internal/telephony/SingleBinary$8$1;
.super Ljava/lang/Object;
.source "SingleBinary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SingleBinary$8;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/SingleBinary$8;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SingleBinary$8;)V
    .locals 0

    .prologue
    .line 1468
    iput-object p1, p0, Lcom/android/internal/telephony/SingleBinary$8$1;->this$1:Lcom/android/internal/telephony/SingleBinary$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1471
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 1472
    iget-object v0, p0, Lcom/android/internal/telephony/SingleBinary$8$1;->this$1:Lcom/android/internal/telephony/SingleBinary$8;

    iget-object v0, v0, Lcom/android/internal/telephony/SingleBinary$8;->this$0:Lcom/android/internal/telephony/SingleBinary;

    # getter for: Lcom/android/internal/telephony/SingleBinary;->mFlexText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/telephony/SingleBinary;->access$1500(Lcom/android/internal/telephony/SingleBinary;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/telephony/SingleBinary;->access$400()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1473
    # getter for: Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/telephony/SingleBinary;->access$400()Landroid/content/Context;

    move-result-object v0

    # getter for: Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/telephony/SingleBinary;->access$400()Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/telephony/SingleBinary$8$1;->this$1:Lcom/android/internal/telephony/SingleBinary$8;

    iget-object v1, v1, Lcom/android/internal/telephony/SingleBinary$8;->this$0:Lcom/android/internal/telephony/SingleBinary;

    # getter for: Lcom/android/internal/telephony/SingleBinary;->mFlexText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/telephony/SingleBinary;->access$1500(Lcom/android/internal/telephony/SingleBinary;)Landroid/widget/TextView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1474
    iget-object v0, p0, Lcom/android/internal/telephony/SingleBinary$8$1;->this$1:Lcom/android/internal/telephony/SingleBinary$8;

    iget-object v0, v0, Lcom/android/internal/telephony/SingleBinary$8;->this$0:Lcom/android/internal/telephony/SingleBinary;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/telephony/SingleBinary;->mFlexText:Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SingleBinary;->access$1502(Lcom/android/internal/telephony/SingleBinary;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1479
    :cond_0
    :goto_0
    return-void

    .line 1477
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
