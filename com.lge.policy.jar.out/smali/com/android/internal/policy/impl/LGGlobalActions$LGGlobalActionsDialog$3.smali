.class Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$3;
.super Ljava/lang/Object;
.source "LGGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->setClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;)V
    .locals 0

    .prologue
    .line 2492
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x40800000    # 4.0f

    const/4 v8, 0x1

    .line 2495
    iget-object v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iput-boolean v8, v5, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mIsExpanded:Z

    .line 2496
    iget-object v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    invoke-virtual {v5, p1}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->selectAnimation(Landroid/view/View;)I

    move-result v1

    .line 2497
    .local v1, "clickButtonNum":I
    iget-object v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v5, v5, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mEnableAnimationActionList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;

    .line 2498
    .local v0, "action":Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;
    iget-object v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v5, v5, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneAction:Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2400(Lcom/android/internal/policy/impl/LGGlobalActions;)Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;

    move-result-object v5

    if-ne v0, v5, :cond_1

    .line 2499
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->getSecondState()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v5, v5, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mCallState:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$200(Lcom/android/internal/policy/impl/LGGlobalActions;)I

    move-result v5

    if-eq v5, v8, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v5, v5, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mCallState:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$200(Lcom/android/internal/policy/impl/LGGlobalActions;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 2501
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v5, v5, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v6, v6, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/lge/internal/R$string;->sp_not_available_during_a_call_NORMAL:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 2523
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->select()V

    .line 2524
    iget-object v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget v5, v5, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCurrentRotation:I

    invoke-virtual {v0, v10, v5}, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->getPopup(ZI)Landroid/widget/RelativeLayout;

    move-result-object v4

    .line 2525
    .local v4, "popup":Landroid/widget/RelativeLayout;
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2526
    .local v3, "layoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget v5, v5, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCurrentRotation:I

    if-nez v5, :cond_4

    .line 2527
    const/4 v5, 0x3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2528
    iget-object v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v5, v5, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    invoke-virtual {v5, v9}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2536
    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2537
    iget-object v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v5, v5, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mMenuLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2539
    iget-object v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    invoke-virtual {v5, v4, v1}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->startPopupAnimation(Landroid/widget/RelativeLayout;I)V

    .line 2540
    .end local v3    # "layoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "popup":Landroid/widget/RelativeLayout;
    :goto_2
    return-void

    .line 2505
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v5, v5, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mHasTelephony:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$600(Lcom/android/internal/policy/impl/LGGlobalActions;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "ril.cdma.inecmmode"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2507
    iget-object v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v5, v5, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # setter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mIsWaitingForEcmExit:Z
    invoke-static {v5, v8}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$702(Lcom/android/internal/policy/impl/LGGlobalActions;Z)Z

    .line 2509
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2511
    .local v2, "ecmDialogIntent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2512
    iget-object v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v5, v5, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2513
    iget-object v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v5, v5, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$100(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 2515
    .end local v2    # "ecmDialogIntent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->getSecondState()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2516
    iget-object v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v5, v5, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/LGGlobalActions;->changeAirplaneModeSystemSetting(Z)V
    invoke-static {v5, v10}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$800(Lcom/android/internal/policy/impl/LGGlobalActions;Z)V

    .line 2517
    iget-object v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v5, v5, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$100(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    goto :goto_2

    .line 2529
    .restart local v3    # "layoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v4    # "popup":Landroid/widget/RelativeLayout;
    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget v5, v5, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCurrentRotation:I

    if-ne v5, v8, :cond_5

    .line 2530
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v3, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2531
    iget-object v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v5, v5, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    invoke-virtual {v5, v9}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 2533
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v3, v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2534
    iget-object v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$3;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v5, v5, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    invoke-virtual {v5, v9}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_1
.end method
