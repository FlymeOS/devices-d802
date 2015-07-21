.class Lcom/android/internal/telephony/SingleBinary$6;
.super Ljava/lang/Object;
.source "SingleBinary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SingleBinary;->switchCustBaseUI(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SingleBinary;

.field final synthetic val$finalMapping_rootdir:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SingleBinary;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 880
    iput-object p1, p0, Lcom/android/internal/telephony/SingleBinary$6;->this$0:Lcom/android/internal/telephony/SingleBinary;

    iput-object p2, p0, Lcom/android/internal/telephony/SingleBinary$6;->val$finalMapping_rootdir:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x0

    .line 883
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 884
    const-string v1, "GSM"

    const-string v2, "[LGE][SBP] Send new Intent - CUST_CHNAGED_INFO"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    const-string v1, "3"

    iget-object v2, p0, Lcom/android/internal/telephony/SingleBinary$6;->this$0:Lcom/android/internal/telephony/SingleBinary;

    # getter for: Lcom/android/internal/telephony/SingleBinary;->mMncLength:I
    invoke-static {v2}, Lcom/android/internal/telephony/SingleBinary;->access$1300(Lcom/android/internal/telephony/SingleBinary;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 888
    iget-object v1, p0, Lcom/android/internal/telephony/SingleBinary$6;->this$0:Lcom/android/internal/telephony/SingleBinary;

    const-string v2, "persist.radio.first-mccmnc"

    iget-object v3, p0, Lcom/android/internal/telephony/SingleBinary$6;->this$0:Lcom/android/internal/telephony/SingleBinary;

    # getter for: Lcom/android/internal/telephony/SingleBinary;->mImsi:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/SingleBinary;->access$1400(Lcom/android/internal/telephony/SingleBinary;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/SingleBinary;->access$800(Lcom/android/internal/telephony/SingleBinary;Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.action.CUST_CHANGED_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 895
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cust_old_path"

    const-string v2, "ro.lge.capp_cupss.rootdir"

    const-string v3, "/cust"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 896
    # getter for: Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/telephony/SingleBinary;->access$400()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 897
    iget-object v1, p0, Lcom/android/internal/telephony/SingleBinary$6;->this$0:Lcom/android/internal/telephony/SingleBinary;

    const-string v2, "persist.radio.cupss.next-root"

    iget-object v3, p0, Lcom/android/internal/telephony/SingleBinary$6;->val$finalMapping_rootdir:Ljava/lang/String;

    # invokes: Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/SingleBinary;->access$800(Lcom/android/internal/telephony/SingleBinary;Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    iget-object v1, p0, Lcom/android/internal/telephony/SingleBinary$6;->this$0:Lcom/android/internal/telephony/SingleBinary;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    # getter for: Lcom/android/internal/telephony/SingleBinary;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/telephony/SingleBinary;->access$400()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Please Wait..."

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Device is getting update with new Configuration"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    # setter for: Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/SingleBinary;->access$302(Lcom/android/internal/telephony/SingleBinary;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 904
    iget-object v1, p0, Lcom/android/internal/telephony/SingleBinary$6;->this$0:Lcom/android/internal/telephony/SingleBinary;

    # getter for: Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/internal/telephony/SingleBinary;->access$300(Lcom/android/internal/telephony/SingleBinary;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 905
    iget-object v1, p0, Lcom/android/internal/telephony/SingleBinary$6;->this$0:Lcom/android/internal/telephony/SingleBinary;

    # getter for: Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/internal/telephony/SingleBinary;->access$300(Lcom/android/internal/telephony/SingleBinary;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 906
    iget-object v1, p0, Lcom/android/internal/telephony/SingleBinary$6;->this$0:Lcom/android/internal/telephony/SingleBinary;

    # getter for: Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/internal/telephony/SingleBinary;->access$300(Lcom/android/internal/telephony/SingleBinary;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 907
    iget-object v1, p0, Lcom/android/internal/telephony/SingleBinary$6;->this$0:Lcom/android/internal/telephony/SingleBinary;

    # getter for: Lcom/android/internal/telephony/SingleBinary;->dialogProgress:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/internal/telephony/SingleBinary;->access$300(Lcom/android/internal/telephony/SingleBinary;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 913
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 891
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SingleBinary$6;->this$0:Lcom/android/internal/telephony/SingleBinary;

    const-string v2, "persist.radio.first-mccmnc"

    iget-object v3, p0, Lcom/android/internal/telephony/SingleBinary$6;->this$0:Lcom/android/internal/telephony/SingleBinary;

    # getter for: Lcom/android/internal/telephony/SingleBinary;->mImsi:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/SingleBinary;->access$1400(Lcom/android/internal/telephony/SingleBinary;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/SingleBinary;->lge_set_property(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/SingleBinary;->access$800(Lcom/android/internal/telephony/SingleBinary;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 911
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_1
.end method
