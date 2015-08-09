.class Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$4;
.super Ljava/lang/Object;
.source "LGGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 2543
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$4;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v7, 0x40800000    # 4.0f

    const/4 v6, 0x1

    .line 2547
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$4;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iput-boolean v6, v4, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mIsExpanded:Z

    .line 2548
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$4;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iput-boolean v6, v4, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mSkipDismiss:Z

    .line 2549
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$4;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    invoke-virtual {v4, p1}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->selectAnimation(Landroid/view/View;)I

    move-result v1

    .line 2550
    .local v1, "clickButtonNum":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$4;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v4, v4, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mEnableAnimationActionList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;

    .line 2551
    .local v0, "action":Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->select()V

    .line 2552
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$4;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget v4, v4, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCurrentRotation:I

    invoke-virtual {v0, v6, v4}, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->getPopup(ZI)Landroid/widget/RelativeLayout;

    move-result-object v3

    .line 2553
    .local v3, "popup":Landroid/widget/RelativeLayout;
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2554
    .local v2, "layoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$4;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget v4, v4, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCurrentRotation:I

    if-nez v4, :cond_0

    .line 2555
    const/4 v4, 0x3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2556
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$4;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v4, v4, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    invoke-virtual {v4, v7}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2564
    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2565
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$4;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v4, v4, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mMenuLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2567
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$4;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    invoke-virtual {v4, v3, v1}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->startPopupAnimation(Landroid/widget/RelativeLayout;I)V

    .line 2568
    return v6

    .line 2557
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$4;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget v4, v4, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCurrentRotation:I

    if-ne v4, v6, :cond_1

    .line 2558
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v2, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2559
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$4;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v4, v4, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    invoke-virtual {v4, v7}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 2561
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2562
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$4;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v4, v4, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    invoke-virtual {v4, v7}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0
.end method
