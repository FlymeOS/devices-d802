.class Lcom/android/internal/telephony/gfit/GfitUtils$6;
.super Ljava/lang/Object;
.source "GfitUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gfit/GfitUtils;->createNotePopupGlobal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

.field final synthetic val$linear:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gfit/GfitUtils;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 786
    iput-object p1, p0, Lcom/android/internal/telephony/gfit/GfitUtils$6;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    iput-object p2, p0, Lcom/android/internal/telephony/gfit/GfitUtils$6;->val$linear:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 788
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils$6;->val$linear:Landroid/widget/LinearLayout;

    sget v2, Lcom/lge/internal/R$id;->check:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 789
    .local v0, "ignoreGlobalPopup":Landroid/widget/CheckBox;
    packed-switch p2, :pswitch_data_0

    .line 798
    :goto_0
    return-void

    .line 792
    :pswitch_0
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    # setter for: Lcom/android/internal/telephony/gfit/GfitUtils;->isNoGlobalPopupNeeded:Z
    invoke-static {v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->access$802(Z)Z

    .line 793
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils$6;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNoGlobalPopupNeeded = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/internal/telephony/gfit/GfitUtils;->isNoGlobalPopupNeeded:Z
    invoke-static {}, Lcom/android/internal/telephony/gfit/GfitUtils;->access$800()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->access$000(Lcom/android/internal/telephony/gfit/GfitUtils;Ljava/lang/String;)V

    .line 794
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils$6;->this$0:Lcom/android/internal/telephony/gfit/GfitUtils;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->switchToGlobalMode()V

    .line 795
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 792
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 789
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
