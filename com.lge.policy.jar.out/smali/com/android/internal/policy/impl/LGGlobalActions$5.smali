.class Lcom/android/internal/policy/impl/LGGlobalActions$5;
.super Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;
.source "LGGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LGGlobalActions;->createDialog()Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LGGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LGGlobalActions;IIIII)V
    .locals 6
    .param p2, "x0"    # I
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # I

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$5;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 3
    .param p1, "buttonOn"    # Z

    .prologue
    const/4 v2, 0x2

    .line 515
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$5;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mHasTelephony:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$600(Lcom/android/internal/policy/impl/LGGlobalActions;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$5;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mCallState:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$200(Lcom/android/internal/policy/impl/LGGlobalActions;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$5;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mCallState:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$200(Lcom/android/internal/policy/impl/LGGlobalActions;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 525
    :cond_2
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    if-ge v0, v2, :cond_0

    .line 527
    if-eqz p1, :cond_3

    sget-object v0, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;->TurningOn:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    :goto_1
    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$5;->mState:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    .line 528
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$5;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$5;->mState:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    # setter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$402(Lcom/android/internal/policy/impl/LGGlobalActions;Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    goto :goto_0

    .line 527
    :cond_3
    sget-object v0, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;->TurningOff:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 544
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    .line 546
    .local v0, "view":Landroid/view/View;
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 547
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/lge/cappuccino/IMdm;->setAirplaneModeDisplayMenu(Landroid/view/View;)V

    .line 549
    :cond_0
    return-object v0
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    .line 556
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "LGMDMAirplaneModeUIAdpater"

    invoke-interface {v0, v1, v2}, Lcom/lge/cappuccino/IMdm;->checkDisabledGlobalAction(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    const-string v0, "MDM"

    const-string v1, "ToggleAction isEnabled false : restrict airplane mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const/4 v0, 0x0

    .line 562
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method onToggle(Z)V
    .locals 5
    .param p1, "on"    # Z

    .prologue
    const/4 v4, 0x1

    .line 492
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$5;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mCallState:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$200(Lcom/android/internal/policy/impl/LGGlobalActions;)I

    move-result v1

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$5;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mCallState:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$200(Lcom/android/internal/policy/impl/LGGlobalActions;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 494
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

    .line 511
    :goto_0
    return-void

    .line 500
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$5;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mHasTelephony:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$600(Lcom/android/internal/policy/impl/LGGlobalActions;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 502
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$5;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # setter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mIsWaitingForEcmExit:Z
    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$702(Lcom/android/internal/policy/impl/LGGlobalActions;Z)Z

    .line 504
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 506
    .local v0, "ecmDialogIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 507
    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$300()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 509
    .end local v0    # "ecmDialogIntent":Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$5;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/LGGlobalActions;->changeAirplaneModeSystemSetting(Z)V
    invoke-static {v1, p1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$800(Lcom/android/internal/policy/impl/LGGlobalActions;Z)V

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 533
    const/4 v0, 0x1

    return v0
.end method
