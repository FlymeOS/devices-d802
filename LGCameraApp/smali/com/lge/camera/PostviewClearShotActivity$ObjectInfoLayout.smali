.class Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;
.super Landroid/widget/RelativeLayout;
.source "PostviewClearShotActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/PostviewClearShotActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObjectInfoLayout"
.end annotation


# instance fields
.field private mDotObject:Landroid/widget/ImageView;

.field private mNonDotObject:Landroid/widget/ImageView;

.field private mObjectRect:Landroid/graphics/Rect;

.field private mSelected:Z

.field private mTagIndex:I

.field final synthetic this$0:Lcom/lge/camera/PostviewClearShotActivity;


# direct methods
.method public constructor <init>(Lcom/lge/camera/PostviewClearShotActivity;Landroid/content/Context;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 6
    .param p2, "contex"    # Landroid/content/Context;
    .param p3, "tagIndex"    # I
    .param p4, "dot"    # Landroid/graphics/Bitmap;
    .param p5, "nonDot"    # Landroid/graphics/Bitmap;
    .param p6, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1012
    iput-object p1, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    .line 1013
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 996
    iput-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mDotObject:Landroid/widget/ImageView;

    .line 997
    iput-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mNonDotObject:Landroid/widget/ImageView;

    .line 998
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mObjectRect:Landroid/graphics/Rect;

    .line 1000
    iput-boolean v5, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mSelected:Z

    .line 1001
    iput v5, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mTagIndex:I

    .line 1015
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mObjectRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1017
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p6, Landroid/graphics/Rect;->right:I

    iget v2, p6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, p6, Landroid/graphics/Rect;->bottom:I

    iget v3, p6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1020
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mNonDotObject:Landroid/widget/ImageView;

    .line 1021
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mNonDotObject:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1023
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mNonDotObject:Landroid/widget/ImageView;

    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1024
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mNonDotObject:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1025
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mNonDotObject:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1026
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mNonDotObject:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->addView(Landroid/view/View;)V

    .line 1028
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mDotObject:Landroid/widget/ImageView;

    .line 1029
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mDotObject:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1031
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mDotObject:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1032
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mDotObject:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1033
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mDotObject:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1034
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mDotObject:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->addView(Landroid/view/View;)V

    .line 1036
    iput p3, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mTagIndex:I

    .line 1037
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->setTag(Ljava/lang/Object;)V

    .line 1038
    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/PostviewClearShotActivity;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1007
    iput-object p1, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    .line 1008
    invoke-direct {p0, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 996
    iput-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mDotObject:Landroid/widget/ImageView;

    .line 997
    iput-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mNonDotObject:Landroid/widget/ImageView;

    .line 998
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mObjectRect:Landroid/graphics/Rect;

    .line 1000
    iput-boolean v1, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mSelected:Z

    .line 1001
    iput v1, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mTagIndex:I

    .line 1009
    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/PostviewClearShotActivity;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1003
    iput-object p1, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    .line 1004
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 996
    iput-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mDotObject:Landroid/widget/ImageView;

    .line 997
    iput-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mNonDotObject:Landroid/widget/ImageView;

    .line 998
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mObjectRect:Landroid/graphics/Rect;

    .line 1000
    iput-boolean v1, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mSelected:Z

    .line 1001
    iput v1, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mTagIndex:I

    .line 1005
    return-void
.end method


# virtual methods
.method public addRuleWithCorner(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 3
    .param p1, "rlp"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "corner"    # I

    .prologue
    const/16 v2, 0xf

    const/16 v1, 0xe

    .line 1059
    invoke-static {p1}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 1060
    if-nez p2, :cond_1

    .line 1061
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1080
    :cond_0
    :goto_0
    return-void

    .line 1063
    :cond_1
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    .line 1064
    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1065
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1067
    :cond_2
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_3

    .line 1068
    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1069
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1071
    :cond_3
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_4

    .line 1072
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1073
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1075
    :cond_4
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    .line 1076
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1077
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method public animationStart(Z)V
    .locals 6
    .param p1, "select"    # Z

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 1099
    iget-object v4, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mNonDotObject:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 1100
    if-eqz p1, :cond_1

    move v1, v3

    .line 1101
    .local v1, "fromAlpha":F
    :goto_0
    if-eqz p1, :cond_2

    .line 1102
    .local v2, "toAlpha":F
    :goto_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1103
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1105
    iget-object v3, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mNonDotObject:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1106
    iget-object v3, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mNonDotObject:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1108
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    .end local v1    # "fromAlpha":F
    .end local v2    # "toAlpha":F
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 1100
    goto :goto_0

    .restart local v1    # "fromAlpha":F
    :cond_2
    move v2, v3

    .line 1101
    goto :goto_1
.end method

.method public getObjectRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mObjectRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getObjectTagIndex()I
    .locals 1

    .prologue
    .line 1115
    iget v0, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mTagIndex:I

    return v0
.end method

.method public getSelected()Z
    .locals 1

    .prologue
    .line 1111
    iget-boolean v0, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mSelected:Z

    return v0
.end method

.method public setRect(Landroid/graphics/Rect;I)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "corner"    # I

    .prologue
    .line 1041
    iget-object v1, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mNonDotObject:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mDotObject:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 1056
    :cond_0
    :goto_0
    return-void

    .line 1044
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mNonDotObject:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1046
    .local v0, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v0, p2}, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->addRuleWithCorner(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 1047
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1048
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1049
    iget-object v1, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mNonDotObject:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1051
    iget-object v1, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mDotObject:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1052
    .restart local v0    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v0, p2}, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->addRuleWithCorner(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 1053
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1054
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1055
    iget-object v1, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mDotObject:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setSelected()V
    .locals 1

    .prologue
    .line 1083
    iget-boolean v0, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mSelected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->setSelected(Z)V

    .line 1084
    return-void

    .line 1083
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 2
    .param p1, "select"    # Z

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mNonDotObject:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1088
    if-eqz p1, :cond_1

    .line 1089
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mNonDotObject:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1094
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mSelected:Z

    .line 1095
    invoke-virtual {p0, p1}, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->animationStart(Z)V

    .line 1096
    return-void

    .line 1091
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mNonDotObject:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public unbind()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1123
    iput-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mObjectRect:Landroid/graphics/Rect;

    .line 1124
    iput-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mDotObject:Landroid/widget/ImageView;

    .line 1125
    iput-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->mNonDotObject:Landroid/widget/ImageView;

    .line 1126
    return-void
.end method
