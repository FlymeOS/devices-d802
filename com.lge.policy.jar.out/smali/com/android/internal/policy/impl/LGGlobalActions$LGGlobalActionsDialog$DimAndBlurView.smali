.class public Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;
.super Landroid/widget/ImageView;
.source "LGGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DimAndBlurView"
.end annotation


# static fields
.field private static final mBlurFactor:F = 0.8f

.field private static final mDimFactor:I = 0x5


# instance fields
.field private mAnimSpeed:F

.field private mBitmapIn:Landroid/graphics/Bitmap;

.field private mBitmapOut:Landroid/graphics/Bitmap;

.field mContext:Landroid/content/Context;

.field mCurrentRotation:I

.field private mOutput:Landroid/renderscript/Allocation;

.field mScreenHeight:I

.field mScreenWidth:I

.field private mScript:Landroid/renderscript/ScriptIntrinsicBlur;

.field final synthetic this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;Landroid/content/Context;Landroid/widget/FrameLayout;III)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "parentView"    # Landroid/widget/FrameLayout;
    .param p4, "currentRotation"    # I
    .param p5, "screenWidth"    # I
    .param p6, "screenHeight"    # I

    .prologue
    const/high16 v2, 0x3e800000    # 0.25f

    .line 2697
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    .line 2698
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2683
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mAnimSpeed:F

    .line 2699
    iput-object p2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mContext:Landroid/content/Context;

    .line 2700
    iput p4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mCurrentRotation:I

    .line 2701
    iput p5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mScreenWidth:I

    .line 2702
    iput p6, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mScreenHeight:I

    .line 2704
    invoke-virtual {p3, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2706
    iget v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mCurrentRotation:I

    if-nez v0, :cond_0

    .line 2707
    iget v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mScreenWidth:I

    iget v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mScreenHeight:I

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mBitmapIn:Landroid/graphics/Bitmap;

    .line 2708
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mBitmapIn:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mCurrentRotation:I

    mul-int/lit8 v1, v1, 0x5a

    int-to-float v1, v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->resizedBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mBitmapIn:Landroid/graphics/Bitmap;

    .line 2713
    :goto_0
    return-void

    .line 2710
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mScreenHeight:I

    iget v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mScreenWidth:I

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mBitmapIn:Landroid/graphics/Bitmap;

    .line 2711
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mBitmapIn:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mCurrentRotation:I

    rsub-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x5a

    int-to-float v1, v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->resizedBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mBitmapIn:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method public initStatus()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 2716
    iget-object v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v10, v10, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v10}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$100(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2717
    .local v0, "dialogHeight":I
    iget v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mCurrentRotation:I

    if-nez v10, :cond_4

    .line 2720
    iget v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mScreenHeight:I

    if-ne v10, v0, :cond_1

    .line 2721
    const/4 v9, 0x0

    .line 2722
    .local v9, "statusBarHeight":I
    const/4 v5, 0x0

    .line 2734
    .local v5, "navigationBarHeight":I
    :goto_0
    iget-object v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mBitmapIn:Landroid/graphics/Bitmap;

    div-int/lit8 v11, v9, 0x4

    iget v12, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mScreenWidth:I

    div-int/lit8 v12, v12, 0x4

    iget v13, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mScreenHeight:I

    sub-int/2addr v13, v9

    sub-int/2addr v13, v5

    div-int/lit8 v13, v13, 0x4

    invoke-static {v10, v14, v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mBitmapIn:Landroid/graphics/Bitmap;

    .line 2736
    if-eqz v9, :cond_0

    .line 2737
    iget-object v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v10, v10, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mImageButtonList:Ljava/util/ArrayList;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 2738
    .local v2, "imageButton":Landroid/widget/ImageButton;
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2739
    .local v7, "relativeLayoutLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v10, v10, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    const/high16 v11, 0x42600000    # 56.0f

    invoke-virtual {v10, v11}, Lcom/android/internal/policy/impl/LGGlobalActions;->getPixelFromDpi(F)F

    move-result v10

    float-to-int v10, v10

    sub-int/2addr v10, v9

    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2740
    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2765
    .end local v2    # "imageButton":Landroid/widget/ImageButton;
    .end local v5    # "navigationBarHeight":I
    .end local v7    # "relativeLayoutLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    :goto_1
    iget-object v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mBitmapIn:Landroid/graphics/Bitmap;

    invoke-static {v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mBitmapOut:Landroid/graphics/Bitmap;

    .line 2767
    iget-object v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v8

    .line 2768
    .local v8, "rs":Landroid/renderscript/RenderScript;
    iget-object v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mBitmapIn:Landroid/graphics/Bitmap;

    sget-object v11, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v12, 0x1

    invoke-static {v8, v10, v11, v12}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v3

    .line 2770
    .local v3, "input":Landroid/renderscript/Allocation;
    invoke-virtual {v3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mOutput:Landroid/renderscript/Allocation;

    .line 2772
    invoke-static {v8}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 2773
    iget-object v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v10, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 2774
    return-void

    .line 2723
    .end local v3    # "input":Landroid/renderscript/Allocation;
    .end local v8    # "rs":Landroid/renderscript/RenderScript;
    .end local v9    # "statusBarHeight":I
    :cond_1
    iget v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mScreenHeight:I

    iget-object v11, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v11, v11, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mStatusBarHeight:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2700(Lcom/android/internal/policy/impl/LGGlobalActions;)I

    move-result v11

    add-int/2addr v11, v0

    if-ne v10, v11, :cond_2

    .line 2724
    iget-object v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v10, v10, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mStatusBarHeight:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2700(Lcom/android/internal/policy/impl/LGGlobalActions;)I

    move-result v9

    .line 2725
    .restart local v9    # "statusBarHeight":I
    const/4 v5, 0x0

    .restart local v5    # "navigationBarHeight":I
    goto :goto_0

    .line 2726
    .end local v5    # "navigationBarHeight":I
    .end local v9    # "statusBarHeight":I
    :cond_2
    iget v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mScreenHeight:I

    iget-object v11, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v11, v11, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mNavigationBarHeight:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2800(Lcom/android/internal/policy/impl/LGGlobalActions;)I

    move-result v11

    add-int/2addr v11, v0

    if-ne v10, v11, :cond_3

    .line 2727
    const/4 v9, 0x0

    .line 2728
    .restart local v9    # "statusBarHeight":I
    iget-object v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v10, v10, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mNavigationBarHeight:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2800(Lcom/android/internal/policy/impl/LGGlobalActions;)I

    move-result v5

    .restart local v5    # "navigationBarHeight":I
    goto/16 :goto_0

    .line 2730
    .end local v5    # "navigationBarHeight":I
    .end local v9    # "statusBarHeight":I
    :cond_3
    iget-object v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v10, v10, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mStatusBarHeight:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2700(Lcom/android/internal/policy/impl/LGGlobalActions;)I

    move-result v9

    .line 2731
    .restart local v9    # "statusBarHeight":I
    iget-object v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v10, v10, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mNavigationBarHeight:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2800(Lcom/android/internal/policy/impl/LGGlobalActions;)I

    move-result v5

    .restart local v5    # "navigationBarHeight":I
    goto/16 :goto_0

    .line 2745
    .end local v5    # "navigationBarHeight":I
    .end local v9    # "statusBarHeight":I
    :cond_4
    iget-object v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v10, v10, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;
    invoke-static {v10}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$100(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 2746
    .local v1, "dialogWidth":I
    iget v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mScreenHeight:I

    if-ne v10, v0, :cond_5

    .line 2747
    const/4 v9, 0x0

    .line 2751
    .restart local v9    # "statusBarHeight":I
    :goto_2
    iget v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mScreenWidth:I

    if-ne v10, v1, :cond_6

    .line 2752
    const/4 v6, 0x0

    .line 2757
    .local v6, "navigationBarWidth":I
    :goto_3
    iget-object v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mBitmapIn:Landroid/graphics/Bitmap;

    div-int/lit8 v11, v9, 0x4

    iget v12, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mScreenWidth:I

    sub-int/2addr v12, v6

    div-int/lit8 v12, v12, 0x4

    iget v13, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mScreenHeight:I

    sub-int/2addr v13, v9

    div-int/lit8 v13, v13, 0x4

    invoke-static {v10, v14, v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mBitmapIn:Landroid/graphics/Bitmap;

    .line 2759
    if-eqz v9, :cond_0

    .line 2760
    iget-object v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v10, v10, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mMenuLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 2761
    .local v4, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mScreenHeight:I

    mul-int/lit8 v11, v9, 0x2

    sub-int/2addr v10, v11

    iput v10, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2762
    iget-object v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v10, v10, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->mMenuLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 2749
    .end local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v6    # "navigationBarWidth":I
    .end local v9    # "statusBarHeight":I
    :cond_5
    iget-object v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v10, v10, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mStatusBarHeight:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2700(Lcom/android/internal/policy/impl/LGGlobalActions;)I

    move-result v9

    .restart local v9    # "statusBarHeight":I
    goto :goto_2

    .line 2754
    :cond_6
    iget-object v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->this$1:Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    iget-object v10, v10, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mNavigationBarWidth:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$2900(Lcom/android/internal/policy/impl/LGGlobalActions;)I

    move-result v6

    .restart local v6    # "navigationBarWidth":I
    goto :goto_3
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 2778
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2779
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mAnimSpeed:F

    const/high16 v2, 0x41c80000    # 25.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 2780
    iget v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mAnimSpeed:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mAnimSpeed:F

    .line 2781
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    iget v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mAnimSpeed:F

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 2782
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mOutput:Landroid/renderscript/Allocation;

    invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 2783
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mOutput:Landroid/renderscript/Allocation;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mBitmapOut:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 2784
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mBitmapOut:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2785
    .local v0, "newCanvas":Landroid/graphics/Canvas;
    iget v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mAnimSpeed:F

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x5

    invoke-static {v1, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2787
    const/4 v0, 0x0

    .line 2789
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->mBitmapOut:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog$DimAndBlurView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2791
    .end local v0    # "newCanvas":Landroid/graphics/Canvas;
    :cond_0
    return-void
.end method

.method public resizedBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scale"    # F
    .param p3, "degrees"    # F

    .prologue
    .line 2794
    move-object v0, p1

    .line 2795
    .local v0, "temp":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 2796
    .local v5, "matrix":Landroid/graphics/Matrix;
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_0

    .line 2797
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 2798
    invoke-virtual {v5, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2799
    invoke-virtual {v5, p3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 2802
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 2804
    .local v8, "temp2":Landroid/graphics/Bitmap;
    if-eq v0, v8, :cond_0

    .line 2805
    move-object v0, v8

    .line 2811
    .end local v8    # "temp2":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v0

    .line 2807
    :catch_0
    move-exception v7

    .line 2808
    .local v7, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method
