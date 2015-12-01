.class public Lcom/lge/camera/dialog/RotateDialog;
.super Ljava/lang/Object;
.source "RotateDialog.java"


# instance fields
.field protected mGet:Lcom/lge/camera/ControllerFunction;

.field private mOnBackCoverTouchListener:Landroid/view/View$OnTouchListener;

.field protected mOrientation:I

.field protected mView:Landroid/view/View;


# direct methods
.method protected constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/dialog/RotateDialog;->mOrientation:I

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    .line 154
    new-instance v0, Lcom/lge/camera/dialog/RotateDialog$3;

    invoke-direct {v0, p0}, Lcom/lge/camera/dialog/RotateDialog$3;-><init>(Lcom/lge/camera/dialog/RotateDialog;)V

    iput-object v0, p0, Lcom/lge/camera/dialog/RotateDialog;->mOnBackCoverTouchListener:Landroid/view/View$OnTouchListener;

    .line 42
    iput-object p1, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    .line 43
    return-void
.end method


# virtual methods
.method protected alignButtonLine()V
    .locals 6

    .prologue
    .line 111
    iget-object v4, p0, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    const v5, 0x7f0d00c4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 116
    .local v1, "btnOk":Landroid/widget/Button;
    iget-object v4, p0, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    const v5, 0x7f0d01c4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 118
    .local v0, "btnCancel":Landroid/widget/Button;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v1}, Landroid/widget/Button;->getLineCount()I

    move-result v3

    .line 123
    .local v3, "lineCountBtnOk":I
    invoke-virtual {v0}, Landroid/widget/Button;->getLineCount()I

    move-result v2

    .line 124
    .local v2, "lineCountBtnCancel":I
    if-le v3, v2, :cond_2

    .line 125
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setLines(I)V

    .line 127
    :cond_2
    if-le v2, v3, :cond_0

    .line 128
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLines(I)V

    goto :goto_0
.end method

.method protected create(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/dialog/RotateDialog;->create(Landroid/view/View;Z)V

    .line 47
    return-void
.end method

.method protected create(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "isCloseByBackCoverTouch"    # Z

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    .line 51
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    if-nez v2, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d00c5

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 56
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 59
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/dialog/RotateDialog$1;

    invoke-direct {v3, p0}, Lcom/lge/camera/dialog/RotateDialog$1;-><init>(Lcom/lge/camera/dialog/RotateDialog;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 76
    invoke-virtual {p0}, Lcom/lge/camera/dialog/RotateDialog;->showBackcoverAnimation()V

    .line 78
    if-eqz p2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    const v3, 0x7f0d006d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/dialog/RotateDialog;->mOnBackCoverTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method protected hideRotateDialogAnimation()V
    .locals 4

    .prologue
    .line 230
    iget-object v1, p0, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    const v2, 0x7f0d0197

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 232
    .local v0, "rotateDialogView":Landroid/view/View;
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xc8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/dialog/RotateDialog;->startAlphaAnimation(Landroid/view/View;III)V

    .line 234
    .end local v0    # "rotateDialogView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 4

    .prologue
    .line 137
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    const v3, 0x7f0d0197

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 141
    .local v0, "dialog":Landroid/view/ViewGroup;
    const-string v2, "\u00a0"

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 143
    const/high16 v2, 0x10000

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 146
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d00c5

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 147
    .local v1, "vg":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 149
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->dialogControllerOnDismiss()V

    .line 150
    const/4 v2, -0x1

    iput v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mOrientation:I

    .line 151
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    goto :goto_0
.end method

.method public onPrepare()V
    .locals 0

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/lge/camera/dialog/RotateDialog;->alignButtonLine()V

    .line 134
    return-void
.end method

.method public requestFocus()V
    .locals 6

    .prologue
    .line 84
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 87
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    :goto_0
    return-void

    .line 91
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/lge/camera/dialog/RotateDialog$2;

    invoke-direct {v2, p0}, Lcom/lge/camera/dialog/RotateDialog$2;-><init>(Lcom/lge/camera/dialog/RotateDialog;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 107
    .local v1, "requestFocus":Ljava/lang/Thread;
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v1, v4, v5}, Lcom/lge/camera/util/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected showBackcoverAnimation()V
    .locals 4

    .prologue
    .line 214
    iget-object v1, p0, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    const v2, 0x7f0d006d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 216
    .local v0, "rl":Landroid/widget/RelativeLayout;
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x320

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/dialog/RotateDialog;->startAlphaAnimation(Landroid/view/View;III)V

    .line 218
    .end local v0    # "rl":Landroid/widget/RelativeLayout;
    :cond_0
    return-void
.end method

.method protected showRotateDialogAnimation()V
    .locals 4

    .prologue
    .line 222
    iget-object v1, p0, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    const v2, 0x7f0d0197

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 224
    .local v0, "rotateDialogView":Landroid/view/View;
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xc8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/dialog/RotateDialog;->startAlphaAnimation(Landroid/view/View;III)V

    .line 226
    .end local v0    # "rotateDialogView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected startAlphaAnimation(Landroid/view/View;III)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "duration"    # I

    .prologue
    .line 208
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 209
    .local v0, "anim":Landroid/view/animation/Animation;
    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 210
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 211
    return-void
.end method

.method public startRotation(I)V
    .locals 9
    .param p1, "degree"    # I

    .prologue
    const v8, 0x7f0d0197

    const/4 v7, 0x1

    .line 172
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RotatableDialog startRotataion(degree) start = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v4, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    if-nez v4, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 179
    iget v4, p0, Lcom/lge/camera/dialog/RotateDialog;->mOrientation:I

    if-ne v4, p1, :cond_2

    .line 180
    const-string v4, "CameraApp"

    const-string v5, "RotatableDialog startRotataion : rotate same."

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_2
    iput p1, p0, Lcom/lge/camera/dialog/RotateDialog;->mOrientation:I

    .line 184
    invoke-virtual {p0}, Lcom/lge/camera/dialog/RotateDialog;->hideRotateDialogAnimation()V

    .line 185
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 186
    iget-object v4, p0, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    const v5, 0x7f0d0196

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 188
    .local v0, "marginLayout":Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 189
    .local v1, "marginParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v1}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 190
    iget-object v4, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f09001d

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    .line 192
    .local v2, "naviMargin":I
    iget-object v4, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 193
    const/16 v4, 0x14

    invoke-virtual {v1, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 194
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 199
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    .end local v0    # "marginLayout":Landroid/widget/RelativeLayout;
    .end local v1    # "marginParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "naviMargin":I
    :cond_3
    iget-object v4, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v8}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/components/RotateLayout;

    .line 202
    .local v3, "rotateDialogView":Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v3, p1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 203
    invoke-virtual {p0}, Lcom/lge/camera/dialog/RotateDialog;->showRotateDialogAnimation()V

    .line 204
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RotatableDialog startRotataion(degree) end = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 196
    .end local v3    # "rotateDialogView":Lcom/lge/camera/components/RotateLayout;
    .restart local v0    # "marginLayout":Landroid/widget/RelativeLayout;
    .restart local v1    # "marginParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v2    # "naviMargin":I
    :cond_4
    const/16 v4, 0xa

    invoke-virtual {v1, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 197
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1
.end method
