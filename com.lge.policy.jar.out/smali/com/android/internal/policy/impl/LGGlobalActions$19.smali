.class Lcom/android/internal/policy/impl/LGGlobalActions$19;
.super Ljava/lang/Object;
.source "LGGlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LGGlobalActions;->changeAirplaneModeSystemSettingUX4_1_VZW(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LGGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LGGlobalActions;)V
    .locals 0

    .prologue
    .line 1714
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$19;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    .line 1716
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$19;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mCallState:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$200(Lcom/android/internal/policy/impl/LGGlobalActions;)I

    move-result v1

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$19;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mCallState:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$200(Lcom/android/internal/policy/impl/LGGlobalActions;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1718
    :cond_0
    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$300()Landroid/content/Context;

    move-result-object v1

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$300()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/lge/internal/R$string;->sp_not_available_during_a_call_NORMAL:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1720
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$19;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    sget-object v2, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    # setter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$402(Lcom/android/internal/policy/impl/LGGlobalActions;Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    .line 1721
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1722
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1738
    :cond_1
    :goto_0
    return-void

    .line 1725
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$19;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2600(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1726
    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$300()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_dialog_do_not_show_this_again"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1728
    :cond_3
    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$300()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1729
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1730
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1731
    const-string v1, "state"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1732
    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$300()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1734
    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1736
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$19;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    sget-object v2, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;->TurningOn:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    # setter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$402(Lcom/android/internal/policy/impl/LGGlobalActions;Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    goto :goto_0
.end method
