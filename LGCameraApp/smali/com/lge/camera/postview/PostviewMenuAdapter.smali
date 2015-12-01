.class public Lcom/lge/camera/postview/PostviewMenuAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PostviewMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/lge/camera/postview/PostviewMenu;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPostviewMenu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/camera/postview/PostviewMenu;",
            ">;"
        }
    .end annotation
.end field

.field private final resId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/lge/camera/postview/PostviewMenu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p3, "postviewMenuList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/camera/postview/PostviewMenu;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 29
    iput-object p1, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->mContext:Landroid/content/Context;

    .line 30
    iput p2, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->resId:I

    .line 31
    iput-object p3, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->mPostviewMenu:Ljava/util/List;

    .line 32
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 37
    move-object v2, p2

    .line 39
    .local v2, "itemView":Landroid/view/View;
    if-nez v2, :cond_0

    .line 40
    iget-object v3, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 42
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->resId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 44
    new-instance v0, Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;

    invoke-direct {v0, p0}, Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;-><init>(Lcom/lge/camera/postview/PostviewMenuAdapter;)V

    .line 45
    .local v0, "holder":Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;
    const v3, 0x7f0d0069

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;->mImage:Landroid/widget/ImageView;

    .line 46
    const v3, 0x7f0d006a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;->menuName:Landroid/widget/TextView;

    .line 47
    const v3, 0x7f0d006b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;->menuExtendName:Landroid/widget/TextView;

    .line 49
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 54
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v4, v0, Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;->mImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->mPostviewMenu:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/postview/PostviewMenu;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostviewMenu;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    iget-object v4, v0, Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;->menuName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->mPostviewMenu:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/postview/PostviewMenu;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostviewMenu;->getLabelImage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v3, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->mPostviewMenu:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/postview/PostviewMenu;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostviewMenu;->getLabelApp()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 57
    iget-object v4, v0, Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;->menuExtendName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->mPostviewMenu:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/postview/PostviewMenu;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostviewMenu;->getLabelApp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v3, v0, Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;->menuExtendName:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    :goto_1
    return-object v2

    .line 51
    .end local v0    # "holder":Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;

    .restart local v0    # "holder":Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;
    goto :goto_0

    .line 61
    :cond_1
    iget-object v3, v0, Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;->menuExtendName:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public unbind()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    iput-object v1, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->mContext:Landroid/content/Context;

    .line 75
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->mPostviewMenu:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->mPostviewMenu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 77
    iput-object v1, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->mPostviewMenu:Ljava/util/List;

    .line 79
    :cond_0
    return-void
.end method
