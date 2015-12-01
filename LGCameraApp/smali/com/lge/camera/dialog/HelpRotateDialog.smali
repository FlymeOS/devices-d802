.class public Lcom/lge/camera/dialog/HelpRotateDialog;
.super Lcom/lge/camera/dialog/RotateDialog;
.source "HelpRotateDialog.java"


# instance fields
.field protected mDoNotShowAgain:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/lge/camera/dialog/RotateDialog;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/dialog/HelpRotateDialog;->mDoNotShowAgain:Z

    .line 49
    return-void
.end method


# virtual methods
.method public create(ZI)V
    .locals 10
    .param p1, "useCheckBox"    # Z
    .param p2, "dialogId"    # I

    .prologue
    const/4 v9, 0x0

    .line 52
    iget-object v7, p0, Lcom/lge/camera/dialog/HelpRotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/lge/camera/dialog/HelpRotateDialog;->inflateHelpDialogView()Landroid/view/View;

    move-result-object v5

    .line 56
    .local v5, "rotateHelpView":Landroid/view/View;
    const v7, 0x7f0d00bb

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 57
    .local v6, "titleText":Landroid/widget/TextView;
    const v7, 0x7f0d01c5

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 58
    .local v1, "contentTitleText":Landroid/widget/TextView;
    const v7, 0x7f0d00c1

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 59
    .local v4, "messageText":Landroid/widget/TextView;
    const v7, 0x7f0d00be

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 60
    .local v3, "messageImage":Landroid/widget/ImageView;
    const v7, 0x7f0d00c4

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 62
    .local v0, "btnOk":Landroid/widget/Button;
    iget-object v7, p0, Lcom/lge/camera/dialog/HelpRotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v7

    invoke-static {p2, v7}, Lcom/lge/camera/util/DialogCreater;->getHelpItemResources(II)[I

    move-result-object v2

    .line 63
    .local v2, "helpResources":[I
    aget v7, v2, v9

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 64
    aget v7, v2, v9

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 65
    const/4 v7, 0x1

    aget v7, v2, v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 66
    const/4 v7, 0x2

    aget v7, v2, v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    invoke-virtual {p0, v5}, Lcom/lge/camera/dialog/HelpRotateDialog;->setExtraContents(Landroid/view/View;)V

    .line 70
    const v7, 0x7f0a002f

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(I)V

    .line 71
    invoke-virtual {p0, v5, p1}, Lcom/lge/camera/dialog/HelpRotateDialog;->setCheckBox(Landroid/view/View;Z)V

    .line 72
    invoke-super {p0, v5}, Lcom/lge/camera/dialog/RotateDialog;->create(Landroid/view/View;)V

    .line 73
    invoke-static {p2}, Lcom/lge/camera/util/DialogCreater;->getHelpDialogKeyValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v0, p1, v7}, Lcom/lge/camera/dialog/HelpRotateDialog;->setPositiveButtonListener(Landroid/widget/Button;ZLjava/lang/String;)V

    .line 74
    return-void
.end method

.method protected getHorizontalHelpDialogWidth()I
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/lge/camera/dialog/HelpRotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/camera/util/DialogCreater;->getHorizontalHelpDialogWidth(Landroid/content/Context;Z)I

    move-result v0

    return v0
.end method

.method protected getVerticalMessageScrollWidth()I
    .locals 1

    .prologue
    .line 263
    const/4 v0, -0x2

    return v0
.end method

.method protected inflateHelpDialogView()Landroid/view/View;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/camera/dialog/HelpRotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f030038

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected setCheckBox(Landroid/view/View;Z)V
    .locals 4
    .param p1, "rotateHelpView"    # Landroid/view/View;
    .param p2, "useCheckBox"    # Z

    .prologue
    const/16 v3, 0x8

    .line 84
    const v2, 0x7f0d0068

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 85
    .local v0, "userCheck":Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 86
    if-nez p2, :cond_2

    .line 87
    const v2, 0x7f0d01c6

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 89
    .local v1, "userCheckLayout":Landroid/widget/RelativeLayout;
    if-eqz v1, :cond_1

    .line 90
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 112
    .end local v1    # "userCheckLayout":Landroid/widget/RelativeLayout;
    :cond_0
    :goto_0
    return-void

    .line 92
    .restart local v1    # "userCheckLayout":Landroid/widget/RelativeLayout;
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 95
    .end local v1    # "userCheckLayout":Landroid/widget/RelativeLayout;
    :cond_2
    const v2, 0x7f0a0235

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(I)V

    .line 96
    iget-boolean v2, p0, Lcom/lge/camera/dialog/HelpRotateDialog;->mDoNotShowAgain:Z

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 97
    new-instance v2, Lcom/lge/camera/dialog/HelpRotateDialog$1;

    invoke-direct {v2, p0}, Lcom/lge/camera/dialog/HelpRotateDialog$1;-><init>(Lcom/lge/camera/dialog/HelpRotateDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    new-instance v2, Lcom/lge/camera/dialog/HelpRotateDialog$2;

    invoke-direct {v2, p0}, Lcom/lge/camera/dialog/HelpRotateDialog$2;-><init>(Lcom/lge/camera/dialog/HelpRotateDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method protected setExtraContents(Landroid/view/View;)V
    .locals 0
    .param p1, "rotateHelpView"    # Landroid/view/View;

    .prologue
    .line 81
    return-void
.end method

.method protected setPositiveButtonListener(Landroid/widget/Button;ZLjava/lang/String;)V
    .locals 1
    .param p1, "btnOk"    # Landroid/widget/Button;
    .param p2, "useCheckBox"    # Z
    .param p3, "helpKeyString"    # Ljava/lang/String;

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 137
    :goto_0
    return-void

    .line 119
    :cond_0
    new-instance v0, Lcom/lge/camera/dialog/HelpRotateDialog$3;

    invoke-direct {v0, p0, p3, p2}, Lcom/lge/camera/dialog/HelpRotateDialog$3;-><init>(Lcom/lge/camera/dialog/HelpRotateDialog;Ljava/lang/String;Z)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public startRotation(I)V
    .locals 25
    .param p1, "degree"    # I

    .prologue
    .line 141
    const-string v21, "CameraApp"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "RotatableDialog startRotataion(degree) start = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/dialog/HelpRotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/dialog/HelpRotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v21

    const v22, 0x7f0d0197

    invoke-virtual/range {v21 .. v22}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_0

    .line 148
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/dialog/HelpRotateDialog;->mOrientation:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, p1

    if-ne v0, v1, :cond_2

    .line 149
    const-string v21, "CameraApp"

    const-string v22, "RotatableDialog startRotataion : rotate same."

    invoke-static/range {v21 .. v22}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/dialog/HelpRotateDialog;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 156
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/dialog/HelpRotateDialog;->mOrientation:I

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/dialog/HelpRotateDialog;->hideRotateDialogAnimation()V

    .line 159
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/dialog/HelpRotateDialog;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f0d0196

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 162
    .local v8, "marginLayout":Landroid/widget/RelativeLayout;
    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 163
    .local v9, "marginParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v9}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/dialog/HelpRotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    const v22, 0x7f09001d

    invoke-static/range {v21 .. v22}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v16

    .line 166
    .local v16, "naviMargin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/dialog/HelpRotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 167
    const/16 v21, 0x14

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 168
    move/from16 v0, v16

    iput v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 173
    :goto_1
    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    .end local v8    # "marginLayout":Landroid/widget/RelativeLayout;
    .end local v9    # "marginParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v16    # "naviMargin":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/dialog/HelpRotateDialog;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f0d0197

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/lge/camera/components/RotateLayout;

    .line 177
    .local v17, "rotateDialogView":Lcom/lge/camera/components/RotateLayout;
    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/dialog/HelpRotateDialog;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f0d01c5

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 180
    .local v6, "contentTitleText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/dialog/HelpRotateDialog;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f0d00bf

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ScrollView;

    .line 181
    .local v13, "messageScroll":Landroid/widget/ScrollView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/dialog/HelpRotateDialog;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f0d00be

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 183
    .local v11, "messageImage":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/dialog/HelpRotateDialog;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f0d01c2

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 186
    .local v18, "rotateInnerLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 187
    .local v5, "contentTitleParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v13}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 188
    .local v14, "messageScrollParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v11}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 189
    .local v12, "messageImageParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/RelativeLayout$LayoutParams;

    .line 191
    .local v19, "rotateInnerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v5}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 192
    invoke-static {v14}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 193
    invoke-static {v12}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 194
    invoke-static/range {v19 .. v19}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/dialog/HelpRotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v21

    if-nez v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/dialog/HelpRotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const/16 v22, 0xb4

    move-object/from16 v0, v21

    move/from16 v1, p1

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v21

    if-eqz v21, :cond_7

    :cond_4
    const/4 v7, 0x1

    .line 198
    .local v7, "isLand":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/dialog/HelpRotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    const/high16 v22, 0x41400000    # 12.0f

    invoke-static/range {v21 .. v22}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 199
    .local v10, "marginValue":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/dialog/HelpRotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    const/high16 v22, 0x41000000    # 8.0f

    invoke-static/range {v21 .. v22}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v20

    .line 201
    .local v20, "topValue":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/dialog/HelpRotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    if-eqz v7, :cond_8

    const/high16 v21, 0x41500000    # 13.0f

    :goto_3
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 203
    .local v4, "bottomValue":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/dialog/HelpRotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    if-eqz v7, :cond_9

    const/16 v21, 0x0

    :goto_4
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 206
    .local v15, "msgTopValue":I
    if-eqz v7, :cond_a

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/dialog/HelpRotateDialog;->getHorizontalHelpDialogWidth()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 208
    const/16 v21, -0x2

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 210
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v11, v10, v0, v1, v2}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 212
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v10, v0, v10, v1}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 213
    const/16 v21, 0x12

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 214
    const/16 v21, 0x11

    const v22, 0x7f0d00be

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 215
    const/16 v21, -0x1

    move/from16 v0, v21

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 216
    move/from16 v0, v20

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 217
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 219
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v10, v0, v10, v1}, Landroid/widget/ScrollView;->setPaddingRelative(IIII)V

    .line 220
    const/16 v21, 0x12

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 221
    const/16 v21, 0x11

    const v22, 0x7f0d00be

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 222
    const/16 v21, 0x3

    const v22, 0x7f0d01c5

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 223
    const/16 v21, -0x1

    move/from16 v0, v21

    iput v0, v14, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 224
    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    const/4 v15, 0x0

    .end local v15    # "msgTopValue":I
    :cond_5
    iput v15, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 227
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 249
    :goto_5
    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    invoke-virtual {v13, v14}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/dialog/HelpRotateDialog;->showRotateDialogAnimation()V

    .line 255
    const-string v21, "CameraApp"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "RotatableDialog startRotataion(degree) end = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 170
    .end local v4    # "bottomValue":I
    .end local v5    # "contentTitleParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6    # "contentTitleText":Landroid/widget/TextView;
    .end local v7    # "isLand":Z
    .end local v10    # "marginValue":I
    .end local v11    # "messageImage":Landroid/widget/ImageView;
    .end local v12    # "messageImageParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v13    # "messageScroll":Landroid/widget/ScrollView;
    .end local v14    # "messageScrollParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v17    # "rotateDialogView":Lcom/lge/camera/components/RotateLayout;
    .end local v18    # "rotateInnerLayout":Landroid/widget/LinearLayout;
    .end local v19    # "rotateInnerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v20    # "topValue":I
    .restart local v8    # "marginLayout":Landroid/widget/RelativeLayout;
    .restart local v9    # "marginParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v16    # "naviMargin":I
    :cond_6
    const/16 v21, 0xa

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 171
    move/from16 v0, v16

    iput v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_1

    .line 196
    .end local v8    # "marginLayout":Landroid/widget/RelativeLayout;
    .end local v9    # "marginParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v16    # "naviMargin":I
    .restart local v5    # "contentTitleParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v6    # "contentTitleText":Landroid/widget/TextView;
    .restart local v11    # "messageImage":Landroid/widget/ImageView;
    .restart local v12    # "messageImageParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v13    # "messageScroll":Landroid/widget/ScrollView;
    .restart local v14    # "messageScrollParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v17    # "rotateDialogView":Lcom/lge/camera/components/RotateLayout;
    .restart local v18    # "rotateInnerLayout":Landroid/widget/LinearLayout;
    .restart local v19    # "rotateInnerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 201
    .restart local v7    # "isLand":Z
    .restart local v10    # "marginValue":I
    .restart local v20    # "topValue":I
    :cond_8
    const v21, 0x40b570a4    # 5.67f

    goto/16 :goto_3

    .line 203
    .restart local v4    # "bottomValue":I
    :cond_9
    const/high16 v21, 0x41400000    # 12.0f

    goto/16 :goto_4

    .line 229
    .restart local v15    # "msgTopValue":I
    :cond_a
    const/16 v21, -0x2

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 230
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 232
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v10, v0, v10, v1}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 233
    const/16 v21, -0x1

    move/from16 v0, v21

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 234
    move/from16 v0, v20

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 235
    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 237
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 238
    const/16 v21, 0x3

    const v22, 0x7f0d01c5

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 239
    const/16 v21, 0xe

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 241
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v10, v0, v10, v1}, Landroid/widget/ScrollView;->setPaddingRelative(IIII)V

    .line 242
    const/16 v21, 0x3

    const v22, 0x7f0d00be

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 243
    const/16 v21, 0x11

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/dialog/HelpRotateDialog;->getVerticalMessageScrollWidth()I

    move-result v21

    move/from16 v0, v21

    iput v0, v14, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 245
    iput v15, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 247
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto/16 :goto_5
.end method
