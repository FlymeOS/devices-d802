.class public Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;
.super Ljava/lang/Object;
.source "LGGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LGGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimationAction"
.end annotation


# instance fields
.field mExpanedDrawable:I

.field mIsLongClickable:Z

.field mIsSecondState:Z

.field mLongOnOkClick:Landroid/view/View$OnClickListener;

.field mLongPopupDescription:I

.field mLongPopupOk:I

.field mLongPopupTitle:I

.field mMenuDrawable:I

.field mMenuDrawable2:I

.field mMenuImageButton:Landroid/widget/ImageButton;

.field mMenuString:I

.field mMenuString2:I

.field mOnOkClick:Landroid/view/View$OnClickListener;

.field mPopupDescription:I

.field mPopupTitle:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/LGGlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/LGGlobalActions;IIIIIIILandroid/view/View$OnClickListener;)V
    .locals 0
    .param p2, "menuString"    # I
    .param p3, "menuString2"    # I
    .param p4, "menuDrawable"    # I
    .param p5, "menuDrawable2"    # I
    .param p6, "expanedDrawable"    # I
    .param p7, "popupTitle"    # I
    .param p8, "popupDescription"    # I
    .param p9, "onOkClick"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 2842
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2843
    iput p2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->mMenuString:I

    .line 2844
    iput p3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->mMenuString2:I

    .line 2845
    iput p4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->mMenuDrawable:I

    .line 2846
    iput p5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->mMenuDrawable2:I

    .line 2847
    iput p6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->mExpanedDrawable:I

    .line 2848
    iput p7, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->mPopupTitle:I

    .line 2849
    iput p8, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->mPopupDescription:I

    .line 2850
    iput-object p9, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->mOnOkClick:Landroid/view/View$OnClickListener;

    .line 2851
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/LGGlobalActions;IIIIILandroid/view/View$OnClickListener;)V
    .locals 10
    .param p2, "menuString"    # I
    .param p3, "menuDrawable"    # I
    .param p4, "expanedDrawable"    # I
    .param p5, "popupTitle"    # I
    .param p6, "popupDescription"    # I
    .param p7, "onOkClick"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 2839
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p2

    move v4, p3

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;IIIIIIILandroid/view/View$OnClickListener;)V

    .line 2840
    return-void
.end method


# virtual methods
.method public getMenuImageButton()Landroid/widget/ImageButton;
    .locals 5

    .prologue
    const/16 v4, 0xff

    .line 2862
    new-instance v0, Landroid/widget/ImageButton;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$300()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->mMenuImageButton:Landroid/widget/ImageButton;

    .line 2863
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->mMenuImageButton:Landroid/widget/ImageButton;

    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    const/16 v0, 0x19

    const/16 v3, 0xf7

    invoke-static {v4, v0, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$300()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->mIsSecondState:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->mMenuDrawable2:I

    :goto_0
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2864
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->mMenuImageButton:Landroid/widget/ImageButton;

    return-object v0

    .line 2863
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->mMenuDrawable:I

    goto :goto_0
.end method

.method public getMenuTextView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 2854
    new-instance v0, Landroid/widget/TextView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$300()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2855
    .local v0, "textView":Landroid/widget/TextView;
    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$300()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->mIsSecondState:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->mMenuString2:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2856
    const/4 v1, 0x2

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2857
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2858
    return-object v0

    .line 2855
    :cond_0
    iget v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->mMenuString:I

    goto :goto_0
.end method

.method public getPopup(ZI)Landroid/widget/RelativeLayout;
    .locals 18
    .param p1, "isLongClick"    # Z
    .param p2, "rotation"    # I

    .prologue
    .line 2896
    new-instance v5, Landroid/widget/RelativeLayout;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$300()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v5, v13}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2898
    .local v5, "mainLayout":Landroid/widget/RelativeLayout;
    if-nez p2, :cond_0

    .line 2899
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v14, 0x43a00000    # 320.0f

    invoke-virtual {v13, v14}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v13

    float-to-int v13, v13

    const/4 v14, -0x2

    invoke-direct {v3, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2900
    .local v3, "layoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v13, 0xe

    invoke-virtual {v3, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2901
    sget v13, Lcom/lge/internal/R$drawable;->system_action_text_box:I

    invoke-virtual {v5, v13}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 2911
    :goto_0
    new-instance v13, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction$1;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;)V

    invoke-virtual {v5, v13}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2917
    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2919
    new-instance v10, Landroid/widget/LinearLayout;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$300()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v10, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2920
    .local v10, "subLayout":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v3    # "layoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v3, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2921
    .restart local v3    # "layoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2922
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2923
    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2925
    new-instance v7, Landroid/widget/RelativeLayout;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$300()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v7, v13}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2926
    .local v7, "scrollParentView":Landroid/widget/RelativeLayout;
    new-instance v13, Landroid/view/ViewGroup$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-direct {v13, v14, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v13}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2927
    invoke-virtual {v10, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2929
    new-instance v8, Landroid/widget/ScrollView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$300()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v8, v13}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 2930
    .local v8, "scrollView":Landroid/widget/ScrollView;
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v3    # "layoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v3, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2931
    .restart local v3    # "layoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v14, 0x41c00000    # 24.0f

    invoke-virtual {v13, v14}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v13

    float-to-int v13, v13

    iput v13, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2932
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v14, 0x41400000    # 12.0f

    invoke-virtual {v13, v14}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v13

    float-to-int v13, v13

    iput v13, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 2933
    invoke-virtual {v8, v3}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2934
    const/16 v13, 0xce7

    invoke-virtual {v8, v13}, Landroid/widget/ScrollView;->setId(I)V

    .line 2935
    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2937
    new-instance v6, Landroid/widget/LinearLayout;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$300()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v6, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2938
    .local v6, "scrollLayout":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v3    # "layoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v3, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2939
    .restart local v3    # "layoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2940
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2941
    invoke-virtual {v8, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 2943
    new-instance v12, Landroid/widget/RelativeLayout;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$300()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2944
    .local v12, "titleLayout":Landroid/widget/RelativeLayout;
    new-instance v13, Landroid/view/ViewGroup$LayoutParams;

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v16, 0x42000000    # 32.0f

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v15

    float-to-int v15, v15

    invoke-direct {v13, v14, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2945
    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2947
    new-instance v11, Landroid/widget/TextView;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$300()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v11, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2948
    .local v11, "textView":Landroid/widget/TextView;
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v3    # "layoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v3, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2949
    .restart local v3    # "layoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v14, -0x3fc00000    # -3.0f

    invoke-virtual {v13, v14}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v13

    float-to-int v13, v13

    iput v13, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2950
    const/16 v13, 0xe

    invoke-virtual {v3, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2951
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2952
    const/4 v13, -0x1

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2953
    const/4 v13, 0x2

    const/high16 v14, 0x41a00000    # 20.0f

    invoke-virtual {v11, v13, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2954
    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v11, v13, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2955
    if-eqz p1, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->mLongPopupTitle:I

    :goto_1
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(I)V

    .line 2956
    invoke-virtual {v12, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2958
    new-instance v2, Landroid/widget/RelativeLayout;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$300()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v2, v13}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2959
    .local v2, "descriptionLayout":Landroid/widget/RelativeLayout;
    new-instance v13, Landroid/view/ViewGroup$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-direct {v13, v14, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v13}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2960
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2962
    new-instance v11, Landroid/widget/TextView;

    .end local v11    # "textView":Landroid/widget/TextView;
    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$300()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v11, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2963
    .restart local v11    # "textView":Landroid/widget/TextView;
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v3    # "layoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v3, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2964
    .restart local v3    # "layoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v14, 0x41c00000    # 24.0f

    invoke-virtual {v13, v14}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v15, 0x41100000    # 9.0f

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v16, 0x41c00000    # 24.0f

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v15

    float-to-int v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    move-object/from16 v16, v0

    const/high16 v17, -0x40000000    # -2.0f

    invoke-virtual/range {v16 .. v17}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v3, v13, v14, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 2965
    const/16 v13, 0xe

    invoke-virtual {v3, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2966
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2967
    const/4 v13, -0x1

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2968
    const/4 v13, 0x2

    const/high16 v14, 0x41900000    # 18.0f

    invoke-virtual {v11, v13, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2969
    if-eqz p1, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->mLongPopupDescription:I

    :goto_2
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(I)V

    .line 2970
    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2972
    new-instance v1, Landroid/widget/RelativeLayout;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$300()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v1, v13}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2973
    .local v1, "buttonLayout":Landroid/widget/RelativeLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v15, 0x42600000    # 56.0f

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v14

    float-to-int v14, v14

    invoke-direct {v4, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2974
    .local v4, "linearLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v14, 0x41800000    # 16.0f

    invoke-virtual {v13, v14}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v13

    float-to-int v13, v13

    iput v13, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2975
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2976
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2978
    new-instance v9, Landroid/widget/RelativeLayout;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$300()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v9, v13}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2979
    .local v9, "subButtonLayout":Landroid/widget/RelativeLayout;
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v3    # "layoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v13, -0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v15, 0x42000000    # 32.0f

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v14

    float-to-int v14, v14

    invoke-direct {v3, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2980
    .restart local v3    # "layoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v13, 0xe

    invoke-virtual {v3, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2981
    const/16 v13, 0xf

    invoke-virtual {v3, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2982
    const/16 v13, 0xb

    invoke-virtual {v3, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2983
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v14, 0x41800000    # 16.0f

    invoke-virtual {v13, v14}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v13

    float-to-int v13, v13

    iput v13, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 2984
    invoke-virtual {v9, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2985
    const/16 v13, 0xbb8

    invoke-virtual {v9, v13}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 2986
    if-eqz p1, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->mLongOnOkClick:Landroid/view/View$OnClickListener;

    :goto_3
    invoke-virtual {v9, v13}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2987
    new-instance v13, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction$2;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;)V

    invoke-virtual {v9, v13}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3010
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 3012
    new-instance v11, Landroid/widget/TextView;

    .end local v11    # "textView":Landroid/widget/TextView;
    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$300()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v11, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3013
    .restart local v11    # "textView":Landroid/widget/TextView;
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v3    # "layoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v3, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3014
    .restart local v3    # "layoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v14, 0x41000000    # 8.0f

    invoke-virtual {v13, v14}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v13

    float-to-int v13, v13

    iput v13, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 3015
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v14, 0x41000000    # 8.0f

    invoke-virtual {v13, v14}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v13

    float-to-int v13, v13

    iput v13, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 3016
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v14, -0x3fc00000    # -3.0f

    invoke-virtual {v13, v14}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v13

    float-to-int v13, v13

    iput v13, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 3017
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v14, -0x40000000    # -2.0f

    invoke-virtual {v13, v14}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v13

    float-to-int v13, v13

    iput v13, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 3018
    const/16 v13, 0xe

    invoke-virtual {v3, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3019
    const/16 v13, 0xf

    invoke-virtual {v3, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3020
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3021
    const/4 v13, -0x1

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3022
    const/4 v13, 0x2

    const/high16 v14, 0x41900000    # 18.0f

    invoke-virtual {v11, v13, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3023
    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v11, v13, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 3024
    if-eqz p1, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->mLongPopupOk:I

    :goto_4
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(I)V

    .line 3025
    invoke-virtual {v9, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 3027
    new-instance v9, Landroid/widget/RelativeLayout;

    .end local v9    # "subButtonLayout":Landroid/widget/RelativeLayout;
    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$300()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v9, v13}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 3028
    .restart local v9    # "subButtonLayout":Landroid/widget/RelativeLayout;
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v3    # "layoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v13, -0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v15, 0x42000000    # 32.0f

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v14

    float-to-int v14, v14

    invoke-direct {v3, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3029
    .restart local v3    # "layoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v13, 0xe

    invoke-virtual {v3, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3030
    const/16 v13, 0xf

    invoke-virtual {v3, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3031
    const/4 v13, 0x0

    const/16 v14, 0xbb8

    invoke-virtual {v3, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3032
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v14, 0x41000000    # 8.0f

    invoke-virtual {v13, v14}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v13

    float-to-int v13, v13

    iput v13, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 3033
    invoke-virtual {v9, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3034
    new-instance v13, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction$3;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;)V

    invoke-virtual {v9, v13}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3041
    new-instance v13, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction$4;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;)V

    invoke-virtual {v9, v13}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3064
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 3066
    new-instance v11, Landroid/widget/TextView;

    .end local v11    # "textView":Landroid/widget/TextView;
    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$300()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v11, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3067
    .restart local v11    # "textView":Landroid/widget/TextView;
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v3    # "layoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v3, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3068
    .restart local v3    # "layoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v14, 0x41000000    # 8.0f

    invoke-virtual {v13, v14}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v13

    float-to-int v13, v13

    iput v13, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 3069
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v14, 0x41000000    # 8.0f

    invoke-virtual {v13, v14}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v13

    float-to-int v13, v13

    iput v13, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 3070
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v14, -0x3fc00000    # -3.0f

    invoke-virtual {v13, v14}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v13

    float-to-int v13, v13

    iput v13, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 3071
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v14, -0x40000000    # -2.0f

    invoke-virtual {v13, v14}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v13

    float-to-int v13, v13

    iput v13, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 3072
    const/16 v13, 0xe

    invoke-virtual {v3, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3073
    const/16 v13, 0xf

    invoke-virtual {v3, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3074
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3075
    const/4 v13, -0x1

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3076
    const/4 v13, 0x2

    const/high16 v14, 0x41900000    # 18.0f

    invoke-virtual {v11, v13, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3077
    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v11, v13, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 3078
    sget v13, Lcom/lge/internal/R$string;->cancel:I

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(I)V

    .line 3079
    invoke-virtual {v9, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 3081
    return-object v5

    .line 2902
    .end local v1    # "buttonLayout":Landroid/widget/RelativeLayout;
    .end local v2    # "descriptionLayout":Landroid/widget/RelativeLayout;
    .end local v3    # "layoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "linearLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "scrollLayout":Landroid/widget/LinearLayout;
    .end local v7    # "scrollParentView":Landroid/widget/RelativeLayout;
    .end local v8    # "scrollView":Landroid/widget/ScrollView;
    .end local v9    # "subButtonLayout":Landroid/widget/RelativeLayout;
    .end local v10    # "subLayout":Landroid/widget/LinearLayout;
    .end local v11    # "textView":Landroid/widget/TextView;
    .end local v12    # "titleLayout":Landroid/widget/RelativeLayout;
    :cond_0
    const/4 v13, 0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_1

    .line 2903
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v14, 0x438a0000    # 276.0f

    invoke-virtual {v13, v14}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v13

    float-to-int v13, v13

    const/4 v14, -0x2

    invoke-direct {v3, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2904
    .restart local v3    # "layoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v13, 0xf

    invoke-virtual {v3, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2905
    sget v13, Lcom/lge/internal/R$drawable;->system_action_text_box_land:I

    invoke-virtual {v5, v13}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2907
    .end local v3    # "layoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v14, 0x438a0000    # 276.0f

    invoke-virtual {v13, v14}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v13

    float-to-int v13, v13

    const/4 v14, -0x2

    invoke-direct {v3, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2908
    .restart local v3    # "layoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v13, 0xf

    invoke-virtual {v3, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2909
    sget v13, Lcom/lge/internal/R$drawable;->system_action_text_box_reversal_land:I

    invoke-virtual {v5, v13}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2955
    .restart local v6    # "scrollLayout":Landroid/widget/LinearLayout;
    .restart local v7    # "scrollParentView":Landroid/widget/RelativeLayout;
    .restart local v8    # "scrollView":Landroid/widget/ScrollView;
    .restart local v10    # "subLayout":Landroid/widget/LinearLayout;
    .restart local v11    # "textView":Landroid/widget/TextView;
    .restart local v12    # "titleLayout":Landroid/widget/RelativeLayout;
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->mPopupTitle:I

    goto/16 :goto_1

    .line 2969
    .restart local v2    # "descriptionLayout":Landroid/widget/RelativeLayout;
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->mPopupDescription:I

    goto/16 :goto_2

    .line 2986
    .restart local v1    # "buttonLayout":Landroid/widget/RelativeLayout;
    .restart local v4    # "linearLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v9    # "subButtonLayout":Landroid/widget/RelativeLayout;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->mOnOkClick:Landroid/view/View$OnClickListener;

    goto/16 :goto_3

    .line 3024
    :cond_5
    sget v13, Lcom/lge/internal/R$string;->dlg_ok:I

    goto/16 :goto_4
.end method

.method public getSecondState()Z
    .locals 1

    .prologue
    .line 2888
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->mIsSecondState:Z

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 2872
    const/4 v0, 0x1

    return v0
.end method

.method public isLongClickable()Z
    .locals 1

    .prologue
    .line 2892
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->mIsLongClickable:Z

    return v0
.end method

.method public select()V
    .locals 2

    .prologue
    .line 2868
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->mMenuImageButton:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->mExpanedDrawable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 2869
    return-void
.end method

.method public setLongClick(IIILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "longPopupTitle"    # I
    .param p2, "longPopupDescription"    # I
    .param p3, "longPopupOk"    # I
    .param p4, "longOnOkClick"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 2876
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->mIsLongClickable:Z

    .line 2877
    iput p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->mLongPopupTitle:I

    .line 2878
    iput p2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->mLongPopupDescription:I

    .line 2879
    iput p3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->mLongPopupOk:I

    .line 2880
    iput-object p4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->mLongOnOkClick:Landroid/view/View$OnClickListener;

    .line 2881
    return-void
.end method

.method public setSecondState(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 2884
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->mIsSecondState:Z

    .line 2885
    return-void
.end method
