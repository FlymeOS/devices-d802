.class Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;
.super Landroid/app/Dialog;
.source "LGGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LGGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LGGlobalActionsDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;
    }
.end annotation


# instance fields
.field HEIGHT:[F

.field private final mAnimationStartTime:J

.field mButtonDistance:F

.field mCancelLayout:Landroid/widget/RelativeLayout;

.field private mCancelOnUp:Z

.field final mContext:Landroid/content/Context;

.field mCurrentRotation:I

.field mDimAndBlurLayout:Landroid/widget/FrameLayout;

.field mDimAndBlurView:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;

.field private mDisIntercepted:Z

.field private mDisableAccessibilityController:Lcom/android/internal/policy/impl/DisableAccessibilityController;

.field private mDismissOnTouch:Z

.field private mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

.field mEnableAnimationActionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;",
            ">;"
        }
    .end annotation
.end field

.field mImageButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private mIntercepted:Z

.field mIsAlreadyFocused:Z

.field mIsExpanded:Z

.field mMainLayout:Landroid/widget/RelativeLayout;

.field mMenuLayout:Landroid/widget/RelativeLayout;

.field private mSelectAnimatorSetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet;",
            ">;"
        }
    .end annotation
.end field

.field mSkipDismiss:Z

.field private mStartAnimatorSetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet;",
            ">;"
        }
    .end annotation
.end field

.field mTextViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowTouchSlop:I

.field private mWm:Landroid/view/IWindowManager;

.field final synthetic this$0:Lcom/android/internal/policy/impl/LGGlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/LGGlobalActions;Landroid/content/Context;I)V
    .locals 20
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "theme"    # I

    .prologue
    .line 2056
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    .line 2057
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2022
    const/4 v4, 0x3

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->HEIGHT:[F

    .line 2030
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mEnableAnimationActionList:Ljava/util/ArrayList;

    .line 2031
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mImageButtonList:Ljava/util/ArrayList;

    .line 2032
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mTextViewList:Ljava/util/ArrayList;

    .line 2035
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mStartAnimatorSetList:Ljava/util/ArrayList;

    .line 2036
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mSelectAnimatorSetList:Ljava/util/ArrayList;

    .line 2044
    const-wide/16 v4, 0x12c

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mAnimationStartTime:J

    .line 2047
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDismissOnTouch:Z

    .line 2059
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mContext:Landroid/content/Context;

    .line 2061
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    .line 2063
    .local v11, "display":Landroid/view/Display;
    new-instance v18, Landroid/graphics/Point;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Point;-><init>()V

    .line 2064
    .local v18, "size":Landroid/graphics/Point;
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 2065
    invoke-virtual {v11}, Landroid/view/Display;->getRotation()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCurrentRotation:I

    .line 2067
    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mWm:Landroid/view/IWindowManager;

    .line 2069
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mWm:Landroid/view/IWindowManager;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCurrentRotation:I

    invoke-interface {v4, v5}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2074
    :goto_0
    invoke-static/range {p2 .. p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mWindowTouchSlop:I

    .line 2076
    new-instance v4, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 2077
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mMainLayout:Landroid/widget/RelativeLayout;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2079
    new-instance v4, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDimAndBlurLayout:Landroid/widget/FrameLayout;

    .line 2080
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDimAndBlurLayout:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2081
    new-instance v4, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDimAndBlurLayout:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCurrentRotation:I

    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v18

    iget v10, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;Landroid/content/Context;Landroid/widget/FrameLayout;III)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDimAndBlurView:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;

    .line 2083
    new-instance v4, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mMenuLayout:Landroid/widget/RelativeLayout;

    .line 2084
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mMenuLayout:Landroid/widget/RelativeLayout;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2086
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDimAndBlurLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2087
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mMenuLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2091
    const/4 v15, 0x0

    .line 2092
    .local v15, "prevButtonId":I
    const/16 v16, 0x0

    .line 2093
    .local v16, "prevTextId":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAnimationActionList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v13, v4, :cond_b

    .line 2094
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAnimationActionList:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2095
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mEnableAnimationActionList:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAnimationActionList:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2096
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAnimationActionList:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->getMenuImageButton()Landroid/widget/ImageButton;

    move-result-object v14

    .line 2097
    .local v14, "imageButton":Landroid/widget/ImageButton;
    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2098
    .local v17, "relativeLayoutLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCurrentRotation:I

    if-nez v4, :cond_3

    .line 2099
    const/16 v4, 0xe

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2100
    if-nez v16, :cond_2

    .line 2101
    const/high16 v4, 0x42600000    # 56.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, v17

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2124
    :cond_0
    :goto_2
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2125
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mMenuLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2126
    add-int/lit8 v15, v13, 0x64

    .line 2127
    invoke-virtual {v14, v15}, Landroid/widget/ImageButton;->setId(I)V

    .line 2128
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mImageButtonList:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2130
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAnimationActionList:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->getMenuTextView()Landroid/widget/TextView;

    move-result-object v19

    .line 2131
    .local v19, "textView":Landroid/widget/TextView;
    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v17    # "relativeLayoutLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, -0x2

    const/4 v5, -0x2

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2132
    .restart local v17    # "relativeLayoutLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, 0x3

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2133
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, v17

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2134
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCurrentRotation:I

    if-nez v4, :cond_7

    .line 2135
    const/16 v4, 0xe

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2154
    :goto_3
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 2155
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2156
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mMenuLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2157
    add-int/lit16 v0, v13, 0xc8

    move/from16 v16, v0

    .line 2158
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 2159
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mTextViewList:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2093
    .end local v14    # "imageButton":Landroid/widget/ImageButton;
    .end local v17    # "relativeLayoutLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v19    # "textView":Landroid/widget/TextView;
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 2070
    .end local v13    # "i":I
    .end local v15    # "prevButtonId":I
    .end local v16    # "prevTextId":I
    :catch_0
    move-exception v12

    .line 2071
    .local v12, "e":Ljava/lang/Exception;
    const-string v4, "LGGlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception freezeRotation, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2103
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v13    # "i":I
    .restart local v14    # "imageButton":Landroid/widget/ImageButton;
    .restart local v15    # "prevButtonId":I
    .restart local v16    # "prevTextId":I
    .restart local v17    # "relativeLayoutLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const/4 v4, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2104
    const/high16 v4, 0x41600000    # 14.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, v17

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_2

    .line 2106
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCurrentRotation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 2107
    const/16 v4, 0xf

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2108
    if-nez v15, :cond_4

    .line 2109
    const/high16 v4, 0x42600000    # 56.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, v17

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_2

    .line 2111
    :cond_4
    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2112
    const/high16 v4, 0x42280000    # 42.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, v17

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_2

    .line 2114
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCurrentRotation:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 2115
    const/16 v4, 0xf

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2116
    if-nez v15, :cond_6

    .line 2117
    const/16 v4, 0xb

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2118
    const/high16 v4, 0x42600000    # 56.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, v17

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_2

    .line 2120
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2121
    const/high16 v4, 0x42280000    # 42.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, v17

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_2

    .line 2136
    .restart local v19    # "textView":Landroid/widget/TextView;
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCurrentRotation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 2137
    if-nez v16, :cond_8

    .line 2138
    const/high16 v4, 0x42180000    # 38.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, v17

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2143
    :goto_4
    const/high16 v4, 0x42b80000    # 92.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_3

    .line 2140
    :cond_8
    const/4 v4, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2141
    const/high16 v4, 0x40c00000    # 6.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, v17

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_4

    .line 2145
    :cond_9
    if-nez v16, :cond_a

    .line 2146
    const/16 v4, 0xb

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2147
    const/high16 v4, 0x42180000    # 38.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, v17

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 2152
    :goto_5
    const/high16 v4, 0x42b80000    # 92.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_3

    .line 2149
    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2150
    const/high16 v4, 0x40c00000    # 6.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, v17

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_5

    .line 2162
    .end local v14    # "imageButton":Landroid/widget/ImageButton;
    .end local v17    # "relativeLayoutLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v19    # "textView":Landroid/widget/TextView;
    :cond_b
    new-instance v4, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelLayout:Landroid/widget/RelativeLayout;

    .line 2163
    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x42e00000    # 112.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v4

    float-to-int v4, v4

    const/high16 v5, 0x42500000    # 52.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2164
    .restart local v17    # "relativeLayoutLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCurrentRotation:I

    if-nez v4, :cond_d

    .line 2165
    const/4 v4, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2166
    const/high16 v4, 0x42200000    # 40.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, v17

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2167
    const/16 v4, 0xe

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2177
    :cond_c
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2178
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mMenuLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2180
    new-instance v14, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v14, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 2181
    .restart local v14    # "imageButton":Landroid/widget/ImageButton;
    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    const/16 v5, 0xff

    const/16 v6, 0x19

    const/16 v7, 0xf7

    const/16 v8, 0xff

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/lge/internal/R$drawable;->btn_power_normal:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v14, v4}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2182
    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v17    # "relativeLayoutLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2183
    .restart local v17    # "relativeLayoutLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2184
    new-instance v4, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$1;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;Lcom/android/internal/policy/impl/LGGlobalActions;)V

    invoke-virtual {v14, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2191
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2193
    new-instance v19, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2194
    .restart local v19    # "textView":Landroid/widget/TextView;
    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v17    # "relativeLayoutLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, -0x2

    const/4 v5, -0x2

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2195
    .restart local v17    # "relativeLayoutLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xc

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2196
    const/high16 v4, 0x41600000    # 14.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, v17

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 2197
    const/16 v4, 0xe

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2198
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2199
    sget v4, Lcom/lge/internal/R$string;->cancel:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2200
    const/4 v4, 0x2

    const/high16 v5, 0x41800000    # 16.0f

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2201
    const/4 v4, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2202
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2203
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->setContentView(Landroid/view/View;)V

    .line 2204
    return-void

    .line 2168
    .end local v14    # "imageButton":Landroid/widget/ImageButton;
    .end local v19    # "textView":Landroid/widget/TextView;
    :cond_d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCurrentRotation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e

    .line 2169
    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2170
    const/high16 v4, 0x42500000    # 52.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, v17

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2171
    const/16 v4, 0xf

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_6

    .line 2172
    :cond_e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCurrentRotation:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_c

    .line 2173
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2174
    const/high16 v4, 0x42500000    # 52.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, v17

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 2175
    const/16 v4, 0xf

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_6

    .line 2022
    nop

    :array_0
    .array-data 4
        0x43380000    # 184.0f
        0x432e0000    # 174.0f
        0x432c0000    # 172.0f
    .end array-data
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 3

    .prologue
    .line 2467
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mStartAnimatorSetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 2468
    .local v0, "as":Landroid/animation/AnimatorSet;
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    .line 2470
    .end local v0    # "as":Landroid/animation/AnimatorSet;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mSelectAnimatorSetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 2471
    .restart local v0    # "as":Landroid/animation/AnimatorSet;
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_1

    .line 2473
    .end local v0    # "as":Landroid/animation/AnimatorSet;
    :cond_1
    return-void
.end method

.method public dismiss()V
    .locals 4

    .prologue
    .line 2346
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$102(Lcom/android/internal/policy/impl/LGGlobalActions;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2348
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mWm:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2352
    :goto_0
    const-string v1, "LGGlobalActions"

    const-string v2, "dismiss LGGlobalActionDialog"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2354
    return-void

    .line 2349
    :catch_0
    move-exception v0

    .line 2350
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LGGlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thawRotation, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2247
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mIsExpanded:Z

    if-eqz v4, :cond_2

    .line 2341
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v15

    :cond_1
    :goto_1
    return v15

    .line 2248
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    if-eqz v4, :cond_b

    .line 2249
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    .line 2250
    .local v10, "action":I
    if-nez v10, :cond_4

    .line 2251
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v11, v4

    .line 2252
    .local v11, "eventX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v12, v4

    .line 2254
    .local v12, "eventY":I
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z

    .line 2256
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mImageButtonList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    .line 2257
    .local v16, "view":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mWindowTouchSlop:I

    sub-int/2addr v4, v5

    if-le v11, v4, :cond_3

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mWindowTouchSlop:I

    add-int/2addr v4, v5

    if-ge v11, v4, :cond_3

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mWindowTouchSlop:I

    sub-int/2addr v4, v5

    if-le v12, v4, :cond_3

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mWindowTouchSlop:I

    add-int/2addr v4, v5

    if-ge v12, v4, :cond_3

    .line 2261
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z

    .line 2267
    .end local v11    # "eventX":I
    .end local v12    # "eventY":I
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "view":Landroid/view/View;
    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mIntercepted:Z

    if-nez v4, :cond_7

    .line 2268
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mIntercepted:Z

    .line 2269
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mIntercepted:Z

    if-eqz v4, :cond_5

    .line 2270
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2271
    .local v2, "now":J
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v4, v2

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2273
    const/16 v4, 0x1002

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2274
    const-string v4, "Qtalkback"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EnableAccessibilityController. mCancelOnUp= true, ACTION_CANCEL now : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2281
    .end local v2    # "now":J
    :cond_5
    const/4 v4, 0x1

    if-ne v10, v4, :cond_0

    .line 2282
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v4, :cond_6

    .line 2283
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$100(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 2284
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$100(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 2287
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z

    .line 2288
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mIntercepted:Z

    goto/16 :goto_0

    .line 2278
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v15

    .line 2281
    const/4 v4, 0x1

    if-ne v10, v4, :cond_1

    .line 2282
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v4, :cond_8

    .line 2283
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$100(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 2284
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$100(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 2287
    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z

    .line 2288
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mIntercepted:Z

    goto/16 :goto_1

    .line 2281
    :catchall_0
    move-exception v4

    const/4 v5, 0x1

    if-ne v10, v5, :cond_a

    .line 2282
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v5, :cond_9

    .line 2283
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$100(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 2284
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$100(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 2287
    :cond_9
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z

    .line 2288
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mIntercepted:Z

    :cond_a
    throw v4

    .line 2291
    .end local v10    # "action":I
    :cond_b
    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_TALKBACKQUICKACCESS:Z

    if-eqz v4, :cond_0

    .line 2292
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    .line 2294
    .restart local v10    # "action":I
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDisIntercepted:Z

    if-nez v4, :cond_12

    .line 2295
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDisableAccessibilityController:Lcom/android/internal/policy/impl/DisableAccessibilityController;

    if-nez v4, :cond_c

    .line 2296
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/DisableAccessibilityController;->canDisableAccessibilityViaGesture(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2297
    new-instance v4, Lcom/android/internal/policy/impl/DisableAccessibilityController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/policy/impl/DisableAccessibilityController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDisableAccessibilityController:Lcom/android/internal/policy/impl/DisableAccessibilityController;

    .line 2298
    const-string v4, "Qtalkback"

    const-string v5, "new DisableAccessibilityController"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDisableAccessibilityController:Lcom/android/internal/policy/impl/DisableAccessibilityController;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_d

    .line 2303
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDisableAccessibilityController:Lcom/android/internal/policy/impl/DisableAccessibilityController;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/policy/impl/DisableAccessibilityController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDisIntercepted:Z
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2309
    :cond_d
    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDisIntercepted:Z

    if-eqz v4, :cond_e

    .line 2310
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2311
    .restart local v2    # "now":J
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v4, v2

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2313
    const/16 v4, 0x1002

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2314
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z

    .line 2315
    const-string v4, "Qtalkback"

    const-string v5, "DisableAccessibilityController mCancelOnUp = true, ACTION_CANCEL"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2330
    .end local v2    # "now":J
    :cond_e
    const/4 v4, 0x1

    if-ne v10, v4, :cond_0

    .line 2331
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v4, :cond_f

    .line 2332
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$100(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 2333
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$100(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 2335
    :cond_f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z

    .line 2336
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDisIntercepted:Z

    goto/16 :goto_0

    .line 2304
    :catch_0
    move-exception v13

    .line 2305
    .local v13, "ex":Ljava/lang/IllegalStateException;
    :try_start_5
    const-string v4, "Qtalkback"

    const-string v5, "IllegalStateException ex : mDisableAccessibilityController.onInterceptTouchEvent"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDisIntercepted:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 2330
    .end local v13    # "ex":Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v4

    const/4 v5, 0x1

    if-ne v10, v5, :cond_11

    .line 2331
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v5, :cond_10

    .line 2332
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$100(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 2333
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$100(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 2335
    :cond_10
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z

    .line 2336
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDisIntercepted:Z

    :cond_11
    throw v4

    .line 2318
    :cond_12
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDisableAccessibilityController:Lcom/android/internal/policy/impl/DisableAccessibilityController;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v4, :cond_e

    .line 2320
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDisableAccessibilityController:Lcom/android/internal/policy/impl/DisableAccessibilityController;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/policy/impl/DisableAccessibilityController;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v15

    .line 2330
    .local v15, "mReturnValue":Z
    const/4 v4, 0x1

    if-ne v10, v4, :cond_1

    .line 2331
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v4, :cond_13

    .line 2332
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$100(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 2333
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$100(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 2335
    :cond_13
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z

    .line 2336
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDisIntercepted:Z

    goto/16 :goto_1

    .line 2322
    .end local v15    # "mReturnValue":Z
    :catch_1
    move-exception v13

    .line 2323
    .restart local v13    # "ex":Ljava/lang/IllegalStateException;
    :try_start_8
    const-string v4, "Qtalkback"

    const-string v5, "IllegalStateException : mDisableAccessibilityController.onTouchEvent(event)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    invoke-virtual {v13}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2325
    const/4 v15, 0x0

    .line 2330
    const/4 v4, 0x1

    if-ne v10, v4, :cond_1

    .line 2331
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v4, :cond_14

    .line 2332
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$100(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 2333
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$100(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 2335
    :cond_14
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelOnUp:Z

    .line 2336
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDisIntercepted:Z

    goto/16 :goto_1
.end method

.method public initAnimation()V
    .locals 3

    .prologue
    .line 2401
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mEnableAnimationActionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2402
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mStartAnimatorSetList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mImageButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->initImageButtonAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2403
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mStartAnimatorSetList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->initTextViewAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2401
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2405
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mStartAnimatorSetList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->initTextViewAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2406
    return-void
.end method

.method public initImageButtonAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 23
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2409
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2410
    .local v4, "as":Landroid/animation/AnimatorSet;
    const-string v19, "scaleX"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    aput v22, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 2411
    .local v5, "scaleX0":Landroid/animation/ObjectAnimator;
    const-string v19, "scaleY"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    aput v22, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 2412
    .local v11, "scaleY0":Landroid/animation/ObjectAnimator;
    const-wide/16 v20, 0x12c

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v19

    const-wide/16 v20, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2413
    const-wide/16 v20, 0x12c

    move-wide/from16 v0, v20

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v19

    const-wide/16 v20, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2415
    const-string v19, "scaleX"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const v22, 0x3e4ccccd    # 0.2f

    aput v22, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 2416
    .local v6, "scaleX1":Landroid/animation/ObjectAnimator;
    const-string v19, "scaleY"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const v22, 0x3e4ccccd    # 0.2f

    aput v22, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 2417
    .local v12, "scaleY1":Landroid/animation/ObjectAnimator;
    const-wide/16 v20, 0xc8

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v19

    const-wide/16 v20, 0x12c

    invoke-virtual/range {v19 .. v21}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2418
    const-wide/16 v20, 0xc8

    move-wide/from16 v0, v20

    invoke-virtual {v12, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v19

    const-wide/16 v20, 0x12c

    invoke-virtual/range {v19 .. v21}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2420
    const-string v19, "scaleX"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    aput v22, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 2421
    .local v7, "scaleX2":Landroid/animation/ObjectAnimator;
    const-string v19, "scaleY"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    aput v22, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 2422
    .local v13, "scaleY2":Landroid/animation/ObjectAnimator;
    const-wide/16 v20, 0xc8

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v19

    const-wide/16 v20, 0x1f4

    invoke-virtual/range {v19 .. v21}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2423
    const-wide/16 v20, 0xc8

    move-wide/from16 v0, v20

    invoke-virtual {v13, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v19

    const-wide/16 v20, 0x1f4

    invoke-virtual/range {v19 .. v21}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2425
    const-string v19, "scaleX"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const v22, 0x3e4ccccd    # 0.2f

    aput v22, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 2426
    .local v8, "scaleX3":Landroid/animation/ObjectAnimator;
    const-string v19, "scaleY"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const v22, 0x3e4ccccd    # 0.2f

    aput v22, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 2427
    .local v14, "scaleY3":Landroid/animation/ObjectAnimator;
    const-wide/16 v20, 0xc8

    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v19

    const-wide/16 v20, 0x2bc

    invoke-virtual/range {v19 .. v21}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2428
    const-wide/16 v20, 0xc8

    move-wide/from16 v0, v20

    invoke-virtual {v14, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v19

    const-wide/16 v20, 0x2bc

    invoke-virtual/range {v19 .. v21}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2430
    const-string v19, "scaleX"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const v22, 0x3d4ccccd    # 0.05f

    aput v22, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 2431
    .local v9, "scaleX4":Landroid/animation/ObjectAnimator;
    const-string v19, "scaleY"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const v22, 0x3d4ccccd    # 0.05f

    aput v22, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 2432
    .local v15, "scaleY4":Landroid/animation/ObjectAnimator;
    const-wide/16 v20, 0xc8

    move-wide/from16 v0, v20

    invoke-virtual {v9, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v19

    const-wide/16 v20, 0x384

    invoke-virtual/range {v19 .. v21}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2433
    const-wide/16 v20, 0xc8

    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v19

    const-wide/16 v20, 0x384

    invoke-virtual/range {v19 .. v21}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2435
    const-string v19, "scaleX"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    aput v22, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 2436
    .local v10, "scaleX5":Landroid/animation/ObjectAnimator;
    const-string v19, "scaleY"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    aput v22, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 2437
    .local v16, "scaleY5":Landroid/animation/ObjectAnimator;
    const-wide/16 v20, 0xc8

    move-wide/from16 v0, v20

    invoke-virtual {v10, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v19

    const-wide/16 v20, 0x44c

    invoke-virtual/range {v19 .. v21}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2438
    const-wide/16 v20, 0xc8

    move-object/from16 v0, v16

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v19

    const-wide/16 v20, 0x44c

    invoke-virtual/range {v19 .. v21}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2440
    const-string v19, "translationX"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    aput v22, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    .line 2441
    .local v17, "translationX":Landroid/animation/ObjectAnimator;
    const-string v19, "translationY"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    aput v22, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .line 2442
    .local v18, "translationY":Landroid/animation/ObjectAnimator;
    const-wide/16 v20, 0x12c

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v19

    const-wide/16 v20, 0x44c

    invoke-virtual/range {v19 .. v21}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2443
    const-wide/16 v20, 0x12c

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v19

    const-wide/16 v20, 0x44c

    invoke-virtual/range {v19 .. v21}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2445
    const/16 v19, 0xe

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v5, v19, v20

    const/16 v20, 0x1

    aput-object v11, v19, v20

    const/16 v20, 0x2

    aput-object v6, v19, v20

    const/16 v20, 0x3

    aput-object v12, v19, v20

    const/16 v20, 0x4

    aput-object v7, v19, v20

    const/16 v20, 0x5

    aput-object v13, v19, v20

    const/16 v20, 0x6

    aput-object v8, v19, v20

    const/16 v20, 0x7

    aput-object v14, v19, v20

    const/16 v20, 0x8

    aput-object v9, v19, v20

    const/16 v20, 0x9

    aput-object v15, v19, v20

    const/16 v20, 0xa

    aput-object v10, v19, v20

    const/16 v20, 0xb

    aput-object v16, v19, v20

    const/16 v20, 0xc

    aput-object v17, v19, v20

    const/16 v20, 0xd

    aput-object v18, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2447
    new-instance v19, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2448
    return-object v4
.end method

.method initStatus()V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2380
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mEnableAnimationActionList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2381
    .local v0, "enableSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2382
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mImageButtonList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 2383
    .local v2, "ib":Landroid/widget/ImageButton;
    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setScaleX(F)V

    .line 2384
    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setScaleY(F)V

    .line 2385
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 2386
    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2387
    iget v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCurrentRotation:I

    if-nez v4, :cond_0

    .line 2388
    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    div-float/2addr v4, v8

    int-to-float v5, v1

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mButtonDistance:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setTranslationY(F)V

    .line 2392
    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2393
    .local v3, "tv":Landroid/widget/TextView;
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2394
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2381
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2390
    .end local v3    # "tv":Landroid/widget/TextView;
    :cond_0
    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    div-float/2addr v4, v8

    int-to-float v5, v1

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mButtonDistance:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setTranslationX(F)V

    goto :goto_1

    .line 2396
    .end local v2    # "ib":Landroid/widget/ImageButton;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 2397
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2398
    return-void
.end method

.method public initTextViewAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2452
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2453
    .local v1, "as":Landroid/animation/AnimatorSet;
    const-string v2, "alpha"

    new-array v3, v7, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v6

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2454
    .local v0, "alpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x514

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2455
    new-array v2, v7, [Landroid/animation/Animator;

    aput-object v0, v2, v6

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2456
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2457
    return-object v1
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2212
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->canEnableAccessibilityViaGesture(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2213
    new-instance v0, Lcom/android/internal/policy/impl/EnableAccessibilityController;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$2;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;)V

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/EnableAccessibilityController;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    .line 2220
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDismissOnTouch:Z

    .line 2234
    :goto_0
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 2235
    return-void

    .line 2223
    :cond_0
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_TALKBACKQUICKACCESS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/DisableAccessibilityController;->canDisableAccessibilityViaGesture(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2224
    const-string v0, "Qtalkback"

    const-string v1, "canDisableAccessibilityViaGesture result = true"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    iput-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    .line 2226
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDismissOnTouch:Z

    goto :goto_0

    .line 2230
    :cond_1
    const-string v0, "Qtalkback"

    const-string v1, "setCanceledOnTouchOutside(true)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    iput-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    .line 2232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDismissOnTouch:Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 2239
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    if-eqz v0, :cond_0

    .line 2240
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->onDestroy()V

    .line 2242
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 2243
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2358
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 2359
    .local v0, "action":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2360
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mSkipDismiss:Z

    if-eqz v1, :cond_1

    .line 2361
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mSkipDismiss:Z

    .line 2368
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 2362
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDismissOnTouch:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mIsExpanded:Z

    if-eqz v1, :cond_0

    .line 2363
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$100(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2364
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$100(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 2478
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mIsAlreadyFocused:Z

    if-nez v0, :cond_0

    .line 2479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mIsAlreadyFocused:Z

    .line 2480
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mDimAndBlurView:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->initStatus()V

    .line 2481
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->setValue()V

    .line 2482
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->initStatus()V

    .line 2483
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->initAnimation()V

    .line 2484
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->startAnimation()V

    .line 2485
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->setClickListener()V

    .line 2487
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 2488
    return-void
.end method

.method public selectAnimation(Landroid/view/View;)I
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2618
    const/4 v1, 0x0

    .line 2620
    .local v1, "clickButtonNum":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mEnableAnimationActionList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 2621
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mImageButtonList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne p1, v6, :cond_0

    .line 2622
    move v1, v5

    .line 2641
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "alpha"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2643
    .local v3, "hideAnim2":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2644
    new-instance v6, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$6;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$6;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;)V

    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2653
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2654
    .local v0, "as":Landroid/animation/AnimatorSet;
    const/4 v6, 0x1

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2655
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2656
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mSelectAnimatorSetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2657
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mImageButtonList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 2658
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mImageButtonList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setLongClickable(Z)V

    .line 2620
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2624
    .end local v0    # "as":Landroid/animation/AnimatorSet;
    .end local v3    # "hideAnim2":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mImageButtonList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "alpha"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2626
    .local v2, "hideAnim1":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0x12c

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2627
    new-instance v6, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$5;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$5;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;)V

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2636
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2637
    .restart local v0    # "as":Landroid/animation/AnimatorSet;
    const/4 v6, 0x1

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2638
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2639
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mSelectAnimatorSetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2660
    .end local v0    # "as":Landroid/animation/AnimatorSet;
    .end local v2    # "hideAnim1":Landroid/animation/ObjectAnimator;
    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelLayout:Landroid/widget/RelativeLayout;

    const-string v7, "alpha"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 2661
    .local v4, "hideAnim3":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2662
    new-instance v6, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$7;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$7;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;)V

    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2671
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2672
    .restart local v0    # "as":Landroid/animation/AnimatorSet;
    const/4 v6, 0x1

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2673
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2674
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mSelectAnimatorSetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2675
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelLayout:Landroid/widget/RelativeLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 2676
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCancelLayout:Landroid/widget/RelativeLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setLongClickable(Z)V

    .line 2677
    return v1
.end method

.method public setClickListener()V
    .locals 3

    .prologue
    .line 2491
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mEnableAnimationActionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2492
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mImageButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$3;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2542
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mEnableAnimationActionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2543
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mImageButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$4;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2491
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2573
    :cond_1
    return-void
.end method

.method public setValue()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2372
    iget v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCurrentRotation:I

    if-nez v0, :cond_0

    .line 2373
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mImageButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getY()F

    move-result v1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mImageButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getY()F

    move-result v0

    sub-float v0, v1, v0

    iput v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mButtonDistance:F

    .line 2377
    :goto_0
    return-void

    .line 2375
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mImageButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getX()F

    move-result v1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mImageButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getX()F

    move-result v0

    sub-float v0, v1, v0

    iput v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mButtonDistance:F

    goto :goto_0
.end method

.method public startAnimation()V
    .locals 3

    .prologue
    .line 2461
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mStartAnimatorSetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 2462
    .local v0, "as":Landroid/animation/AnimatorSet;
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 2464
    .end local v0    # "as":Landroid/animation/AnimatorSet;
    :cond_0
    return-void
.end method

.method public startPopupAnimation(Landroid/widget/RelativeLayout;I)V
    .locals 13
    .param p1, "popup"    # Landroid/widget/RelativeLayout;
    .param p2, "index"    # I

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2576
    iget-object v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mMenuLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8, v8}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 2577
    const/16 v5, 0xce7

    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2578
    .local v4, "view":Landroid/view/View;
    iget v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCurrentRotation:I

    if-nez v5, :cond_2

    .line 2579
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    iget-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->HEIGHT:[F

    aget v7, v7, p2

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v6

    float-to-int v6, v6

    if-le v5, v6, :cond_0

    .line 2580
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2581
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->HEIGHT:[F

    aget v6, v6, p2

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v5

    float-to-int v5, v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2582
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2583
    iget-object v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mMenuLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8, v8}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 2594
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    :goto_0
    iget v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCurrentRotation:I

    if-nez v5, :cond_3

    .line 2595
    iget-object v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v6, 0x43a00000    # 320.0f

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v5

    mul-float/2addr v5, v11

    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout;->setPivotX(F)V

    .line 2602
    :cond_1
    :goto_1
    invoke-virtual {p1, v10}, Landroid/widget/RelativeLayout;->setScaleX(F)V

    .line 2603
    invoke-virtual {p1, v10}, Landroid/widget/RelativeLayout;->setScaleY(F)V

    .line 2605
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2606
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const-string v5, "scaleX"

    new-array v6, v9, [F

    aput v12, v6, v8

    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2608
    .local v2, "scaleX":Landroid/animation/ObjectAnimator;
    const-string v5, "scaleY"

    new-array v6, v9, [F

    aput v12, v6, v8

    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2610
    .local v3, "scaleY":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0x190

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2611
    const-wide/16 v6, 0x190

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2612
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v6, 0x3fc00000    # 1.5f

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2613
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v2, v5, v8

    aput-object v3, v5, v9

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2614
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2615
    return-void

    .line 2586
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v2    # "scaleX":Landroid/animation/ObjectAnimator;
    .end local v3    # "scaleY":Landroid/animation/ObjectAnimator;
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v7, 0x432e0000    # 174.0f

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v6

    float-to-int v6, v6

    if-le v5, v6, :cond_0

    .line 2587
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2588
    .restart local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v6, 0x432e0000    # 174.0f

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v5

    float-to-int v5, v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2589
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2590
    iget-object v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mMenuLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8, v8}, Landroid/widget/RelativeLayout;->measure(II)V

    goto/16 :goto_0

    .line 2597
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v11

    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout;->setPivotY(F)V

    .line 2598
    iget v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mCurrentRotation:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 2599
    iget-object v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v6, 0x438a0000    # 276.0f

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout;->setPivotX(F)V

    goto/16 :goto_1
.end method
