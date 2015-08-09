.class abstract Lcom/android/internal/policy/impl/LGGlobalActions$SinglePressActionForEps;
.super Ljava/lang/Object;
.source "LGGlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/LGGlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LGGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SinglePressActionForEps"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconResId:I

.field private final mMessage:Ljava/lang/CharSequence;

.field private final mMessageResId:I

.field private final mStatusMessageResId:I


# direct methods
.method protected constructor <init>(III)V
    .locals 1
    .param p1, "iconResId"    # I
    .param p2, "messageResId"    # I
    .param p3, "statusMessageResId"    # I

    .prologue
    const/4 v0, 0x0

    .line 989
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 990
    iput p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$SinglePressActionForEps;->mIconResId:I

    .line 991
    iput p2, p0, Lcom/android/internal/policy/impl/LGGlobalActions$SinglePressActionForEps;->mMessageResId:I

    .line 992
    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$SinglePressActionForEps;->mMessage:Ljava/lang/CharSequence;

    .line 993
    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$SinglePressActionForEps;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 994
    iput p3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$SinglePressActionForEps;->mStatusMessageResId:I

    .line 995
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v5, 0x0

    .line 1017
    const v4, 0x1090054

    invoke-virtual {p4, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 1019
    .local v3, "v":Landroid/view/View;
    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1020
    .local v0, "icon":Landroid/widget/ImageView;
    const v4, 0x102000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1021
    .local v1, "messageView":Landroid/widget/TextView;
    const v4, 0x10202f4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1023
    .local v2, "statusMessageView":Landroid/widget/TextView;
    iget v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$SinglePressActionForEps;->mStatusMessageResId:I

    if-nez v4, :cond_1

    .line 1024
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1030
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$SinglePressActionForEps;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 1031
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$SinglePressActionForEps;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1032
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1036
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$SinglePressActionForEps;->mMessage:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    .line 1037
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$SinglePressActionForEps;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1042
    :goto_2
    return-object v3

    .line 1026
    :cond_1
    iget v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$SinglePressActionForEps;->mStatusMessageResId:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1027
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1033
    :cond_2
    iget v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$SinglePressActionForEps;->mIconResId:I

    if-eqz v4, :cond_0

    .line 1034
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$SinglePressActionForEps;->mIconResId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1039
    :cond_3
    iget v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions$SinglePressActionForEps;->mMessageResId:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$SinglePressActionForEps;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$SinglePressActionForEps;->mMessage:Ljava/lang/CharSequence;

    .line 1011
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions$SinglePressActionForEps;->mMessageResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 998
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 1004
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onPress()V
.end method
