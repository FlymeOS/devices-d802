.class public Lcom/lge/camera/adapter/OptionMenuAdapter;
.super Landroid/widget/ArrayAdapter;
.source "OptionMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/adapter/OptionMenuAdapter$OptionMenuViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/lge/camera/components/OptionMenu;",
        ">;"
    }
.end annotation


# instance fields
.field private adapterResId:I

.field private mContext:Landroid/content/Context;

.field private mOptionMenuList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/components/OptionMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/components/OptionMenu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p3, "optionMenuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/camera/components/OptionMenu;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 35
    iput-object p1, p0, Lcom/lge/camera/adapter/OptionMenuAdapter;->mContext:Landroid/content/Context;

    .line 36
    iput-object p3, p0, Lcom/lge/camera/adapter/OptionMenuAdapter;->mOptionMenuList:Ljava/util/ArrayList;

    .line 37
    iput p2, p0, Lcom/lge/camera/adapter/OptionMenuAdapter;->adapterResId:I

    .line 38
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewgroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 50
    iget-object v5, p0, Lcom/lge/camera/adapter/OptionMenuAdapter;->mContext:Landroid/content/Context;

    if-nez v5, :cond_0

    move-object v1, v4

    .line 72
    :goto_0
    return-object v1

    .line 54
    :cond_0
    move-object v1, p2

    .line 55
    .local v1, "itemView":Landroid/view/View;
    if-nez v1, :cond_1

    .line 56
    iget-object v5, p0, Lcom/lge/camera/adapter/OptionMenuAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 57
    .local v3, "vi":Landroid/view/LayoutInflater;
    iget v5, p0, Lcom/lge/camera/adapter/OptionMenuAdapter;->adapterResId:I

    invoke-virtual {v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 58
    new-instance v0, Lcom/lge/camera/adapter/OptionMenuAdapter$OptionMenuViewHolder;

    invoke-direct {v0, p0}, Lcom/lge/camera/adapter/OptionMenuAdapter$OptionMenuViewHolder;-><init>(Lcom/lge/camera/adapter/OptionMenuAdapter;)V

    .line 59
    .local v0, "holder":Lcom/lge/camera/adapter/OptionMenuAdapter$OptionMenuViewHolder;
    const v4, 0x7f0d0107

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/lge/camera/adapter/OptionMenuAdapter$OptionMenuViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 60
    const v4, 0x7f0d0108

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/lge/camera/adapter/OptionMenuAdapter$OptionMenuViewHolder;->mMenuTitle:Landroid/widget/TextView;

    .line 62
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    .end local v3    # "vi":Landroid/view/LayoutInflater;
    :goto_1
    iget-object v4, p0, Lcom/lge/camera/adapter/OptionMenuAdapter;->mOptionMenuList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/OptionMenu;

    .line 68
    .local v2, "menu":Lcom/lge/camera/components/OptionMenu;
    iget-object v4, v0, Lcom/lge/camera/adapter/OptionMenuAdapter$OptionMenuViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/lge/camera/components/OptionMenu;->getMenuIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v4, v0, Lcom/lge/camera/adapter/OptionMenuAdapter$OptionMenuViewHolder;->mMenuTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/lge/camera/components/OptionMenu;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v4, v0, Lcom/lge/camera/adapter/OptionMenuAdapter$OptionMenuViewHolder;->mMenuTitle:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 64
    .end local v0    # "holder":Lcom/lge/camera/adapter/OptionMenuAdapter$OptionMenuViewHolder;
    .end local v2    # "menu":Lcom/lge/camera/components/OptionMenu;
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/adapter/OptionMenuAdapter$OptionMenuViewHolder;

    .restart local v0    # "holder":Lcom/lge/camera/adapter/OptionMenuAdapter$OptionMenuViewHolder;
    goto :goto_1
.end method

.method public unbind()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lcom/lge/camera/adapter/OptionMenuAdapter;->mContext:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/lge/camera/adapter/OptionMenuAdapter;->mOptionMenuList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/lge/camera/adapter/OptionMenuAdapter;->mOptionMenuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 44
    iput-object v1, p0, Lcom/lge/camera/adapter/OptionMenuAdapter;->mOptionMenuList:Ljava/util/ArrayList;

    .line 46
    :cond_0
    return-void
.end method
