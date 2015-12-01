.class public Lcom/lge/camera/controller/OptionMenuController;
.super Lcom/lge/camera/controller/Controller;
.source "OptionMenuController.java"


# instance fields
.field private mAdapter:Lcom/lge/camera/adapter/OptionMenuAdapter;

.field private mCameraOptionMenu:[[I

.field private mHideOptionMenu:Z

.field private mOptionItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

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

.field private mOptionMenuState:I

.field private mOptionMenuView:Landroid/view/View;

.field private mSmartCameraOptionMenu:[[I

.field private mVideoOptionMenu:[[I


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 6
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 64
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 40
    iput v3, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuState:I

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuList:Ljava/util/ArrayList;

    .line 43
    iput-object v1, p0, Lcom/lge/camera/controller/OptionMenuController;->mAdapter:Lcom/lge/camera/adapter/OptionMenuAdapter;

    .line 44
    iput-object v1, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuView:Landroid/view/View;

    .line 46
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/lge/camera/controller/OptionMenuController;->mCameraOptionMenu:[[I

    .line 52
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/lge/camera/controller/OptionMenuController;->mSmartCameraOptionMenu:[[I

    .line 57
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/lge/camera/controller/OptionMenuController;->mVideoOptionMenu:[[I

    .line 88
    iput-boolean v3, p0, Lcom/lge/camera/controller/OptionMenuController;->mHideOptionMenu:Z

    .line 197
    new-instance v0, Lcom/lge/camera/controller/OptionMenuController$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/OptionMenuController$2;-><init>(Lcom/lge/camera/controller/OptionMenuController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 65
    return-void

    .line 46
    nop

    :array_0
    .array-data 4
        0x7f0a0322
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x7f0a0039
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x7f0a01ac
        -0x1
    .end array-data

    .line 52
    :array_3
    .array-data 4
        0x7f0a0039
        -0x1
    .end array-data

    :array_4
    .array-data 4
        0x7f0a01ac
        -0x1
    .end array-data

    .line 57
    :array_5
    .array-data 4
        0x7f0a0322
        -0x1
    .end array-data

    :array_6
    .array-data 4
        0x7f0a0039
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x7f0a01fe
        -0x1
    .end array-data
.end method


# virtual methods
.method public addOptionMenu(Ljava/lang/String;I)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 177
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 178
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    const/4 v0, 0x0

    .line 179
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    new-instance v1, Lcom/lge/camera/components/OptionMenu;

    invoke-direct {v1, p1, v0}, Lcom/lge/camera/components/OptionMenu;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 180
    .local v1, "menu":Lcom/lge/camera/components/OptionMenu;
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "menu":Lcom/lge/camera/components/OptionMenu;
    :cond_0
    return-void

    .line 178
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p2}, Lcom/lge/camera/ControllerFunction;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public createOptionMenu(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 147
    iput p1, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuState:I

    .line 148
    iget v0, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuState:I

    packed-switch v0, :pswitch_data_0

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 150
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/controller/OptionMenuController;->mCameraOptionMenu:[[I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/OptionMenuController;->makeMenuList([[I)V

    goto :goto_0

    .line 153
    :pswitch_1
    iget-object v0, p0, Lcom/lge/camera/controller/OptionMenuController;->mSmartCameraOptionMenu:[[I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/OptionMenuController;->makeMenuList([[I)V

    goto :goto_0

    .line 157
    :pswitch_2
    iget-object v0, p0, Lcom/lge/camera/controller/OptionMenuController;->mVideoOptionMenu:[[I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/OptionMenuController;->makeMenuList([[I)V

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hideOptionMenu()V
    .locals 3

    .prologue
    .line 91
    iget-object v1, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/lge/camera/controller/OptionMenuController;->mHideOptionMenu:Z

    if-nez v1, :cond_0

    .line 95
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/controller/OptionMenuController;->mHideOptionMenu:Z

    .line 96
    iget-object v1, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v1, p0, Lcom/lge/camera/controller/OptionMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d010b

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 99
    .local v0, "optionMenu":Landroid/widget/ListView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 101
    const/4 v1, 0x0

    new-instance v2, Lcom/lge/camera/controller/OptionMenuController$1;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/OptionMenuController$1;-><init>(Lcom/lge/camera/controller/OptionMenuController;)V

    invoke-virtual {p0, v1, v2}, Lcom/lge/camera/controller/OptionMenuController;->startOptionMenuAnimation(ZLandroid/view/animation/Animation$AnimationListener;)V

    .line 120
    .end local v0    # "optionMenu":Landroid/widget/ListView;
    :cond_0
    return-void
.end method

.method public isOptionMenuShowing()Z
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeMenuList([[I)V
    .locals 5
    .param p1, "menuList"    # [[I

    .prologue
    .line 167
    array-length v2, p1

    if-ltz v2, :cond_0

    .line 168
    const-string v1, ""

    .line 169
    .local v1, "menuString":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    aget-object v3, p1, v0

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 171
    aget-object v2, p1, v0

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/lge/camera/controller/OptionMenuController;->addOptionMenu(Ljava/lang/String;I)V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    .end local v0    # "i":I
    .end local v1    # "menuString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onOptionItemSeleteced(Ljava/lang/String;)V
    .locals 4
    .param p1, "itemTitle"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0xc8

    .line 273
    if-nez p1, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/OptionMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0a0322

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/lge/camera/controller/OptionMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.ShowQuickFunctionDragDrop"

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    goto :goto_0

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/OptionMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0a0039

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 279
    iget-object v0, p0, Lcom/lge/camera/controller/OptionMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.ShowResetDialog"

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    goto :goto_0

    .line 280
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/OptionMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0a01ac

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/lge/camera/controller/OptionMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0a01fe

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/OptionMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/OptionMenuController$3;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/OptionMenuController$3;-><init>(Lcom/lge/camera/controller/OptionMenuController;)V

    const-wide/16 v2, 0x12c

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/lge/camera/controller/OptionMenuController;->releaseOptionMenu()V

    .line 297
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onPause()V

    .line 298
    return-void
.end method

.method public releaseOptionMenu()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 123
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 124
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d010b

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 126
    .local v0, "optionMenu":Landroid/widget/ListView;
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 128
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d00c5

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 129
    .local v1, "vg":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 130
    iput-object v4, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuView:Landroid/view/View;

    .line 131
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mAdapter:Lcom/lge/camera/adapter/OptionMenuAdapter;

    if-eqz v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mAdapter:Lcom/lge/camera/adapter/OptionMenuAdapter;

    invoke-virtual {v2}, Lcom/lge/camera/adapter/OptionMenuAdapter;->unbind()V

    .line 133
    iput-object v4, p0, Lcom/lge/camera/controller/OptionMenuController;->mAdapter:Lcom/lge/camera/adapter/OptionMenuAdapter;

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 136
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mHideOptionMenu:Z

    .line 138
    .end local v0    # "optionMenu":Landroid/widget/ListView;
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method public removeMenu(Ljava/lang/String;I)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 185
    iget-object v3, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, "menu":Lcom/lge/camera/components/OptionMenu;
    iget-object v3, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 188
    .local v2, "menuSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 189
    iget-object v3, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "menu":Lcom/lge/camera/components/OptionMenu;
    check-cast v1, Lcom/lge/camera/components/OptionMenu;

    .line 190
    .restart local v1    # "menu":Lcom/lge/camera/components/OptionMenu;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/lge/camera/components/OptionMenu;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    iget-object v3, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 188
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "i":I
    .end local v1    # "menu":Lcom/lge/camera/components/OptionMenu;
    .end local v2    # "menuSize":I
    :cond_1
    return-void
.end method

.method public showOptionMenu(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/OptionMenuController;->createOptionMenu(I)V

    .line 70
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f030020

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuView:Landroid/view/View;

    .line 72
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d00c5

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 73
    .local v1, "vg":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 76
    new-instance v2, Lcom/lge/camera/adapter/OptionMenuAdapter;

    iget-object v3, p0, Lcom/lge/camera/controller/OptionMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f03001f

    iget-object v5, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuList:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4, v5}, Lcom/lge/camera/adapter/OptionMenuAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mAdapter:Lcom/lge/camera/adapter/OptionMenuAdapter;

    .line 79
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d010b

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 80
    .local v0, "optionMenu":Landroid/widget/ListView;
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mAdapter:Lcom/lge/camera/adapter/OptionMenuAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mOptionItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    iget-object v2, p0, Lcom/lge/camera/controller/OptionMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/OptionMenuController;->startRotation(I)V

    .line 84
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/controller/OptionMenuController;->startOptionMenuAnimation(ZLandroid/view/animation/Animation$AnimationListener;)V

    .line 86
    .end local v0    # "optionMenu":Landroid/widget/ListView;
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public startOptionMenuAnimation(ZLandroid/view/animation/Animation$AnimationListener;)V
    .locals 18
    .param p1, "show"    # Z
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 301
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuView:Landroid/view/View;

    if-nez v7, :cond_0

    .line 372
    :goto_0
    return-void

    .line 304
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->clearAnimation()V

    .line 306
    const/high16 v3, 0x3f800000    # 1.0f

    .local v3, "fromX":F
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "toX":F
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "fromY":F
    const/high16 v6, 0x3f800000    # 1.0f

    .line 307
    .local v6, "toY":F
    const/high16 v14, 0x3f800000    # 1.0f

    .local v14, "startAlpha":F
    const/high16 v13, 0x3f800000    # 1.0f

    .line 308
    .local v13, "endAlpha":F
    const/4 v8, 0x0

    .local v8, "pivotX":F
    const/4 v10, 0x0

    .line 310
    .local v10, "pivotY":F
    if-eqz p1, :cond_1

    .line 311
    const v3, 0x3f666666    # 0.9f

    .line 312
    const v5, 0x3f666666    # 0.9f

    .line 313
    const/4 v14, 0x0

    .line 320
    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/camera/controller/OptionMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 359
    :goto_2
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/4 v7, 0x1

    const/4 v9, 0x1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 361
    .local v2, "sa":Landroid/view/animation/ScaleAnimation;
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v9, 0x40200000    # 2.5f

    invoke-direct {v7, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v7}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 362
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v11, v14, v13}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 363
    .local v11, "aa":Landroid/view/animation/AlphaAnimation;
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v9, 0x3fc00000    # 1.5f

    invoke-direct {v7, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v11, v7}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 365
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x1

    invoke-direct {v12, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 366
    .local v12, "aniSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 367
    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 368
    const-wide/16 v16, 0xc8

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 369
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/camera/controller/OptionMenuController;->mOptionMenuView:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 315
    .end local v2    # "sa":Landroid/view/animation/ScaleAnimation;
    .end local v11    # "aa":Landroid/view/animation/AlphaAnimation;
    .end local v12    # "aniSet":Landroid/view/animation/AnimationSet;
    :cond_1
    const v4, 0x3f666666    # 0.9f

    .line 316
    const v6, 0x3f666666    # 0.9f

    .line 317
    const/4 v13, 0x0

    goto :goto_1

    .line 322
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/camera/controller/OptionMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 323
    const/high16 v8, 0x3f800000    # 1.0f

    .line 324
    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_2

    .line 326
    :cond_2
    const/high16 v8, 0x3f000000    # 0.5f

    .line 327
    const/high16 v10, 0x3f800000    # 1.0f

    .line 329
    goto :goto_2

    .line 331
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/camera/controller/OptionMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 332
    const/high16 v8, 0x3f800000    # 1.0f

    .line 333
    const/4 v10, 0x0

    goto :goto_2

    .line 335
    :cond_3
    const/high16 v8, 0x3f000000    # 0.5f

    .line 336
    const/high16 v10, 0x3f800000    # 1.0f

    .line 338
    goto :goto_2

    .line 340
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/camera/controller/OptionMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 341
    const/high16 v8, 0x3f800000    # 1.0f

    .line 342
    const/high16 v10, 0x3f000000    # 0.5f

    goto :goto_2

    .line 344
    :cond_4
    const/4 v8, 0x0

    .line 345
    const/high16 v10, 0x3f800000    # 1.0f

    .line 347
    goto/16 :goto_2

    .line 349
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/camera/controller/OptionMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 350
    const/high16 v8, 0x3f800000    # 1.0f

    .line 351
    const/high16 v10, 0x3f000000    # 0.5f

    goto/16 :goto_2

    .line 353
    :cond_5
    const/4 v8, 0x0

    .line 354
    const/high16 v10, 0x3f800000    # 1.0f

    goto/16 :goto_2

    .line 320
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public startRotation(I)V
    .locals 7
    .param p1, "degree"    # I

    .prologue
    .line 216
    :try_start_0
    iget-object v5, p0, Lcom/lge/camera/controller/OptionMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0d010a

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/RotateLayout;

    .line 217
    .local v4, "rl":Lcom/lge/camera/components/RotateLayout;
    if-eqz v4, :cond_0

    .line 218
    invoke-virtual {v4}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 220
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v3}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 221
    iget-object v5, p0, Lcom/lge/camera/controller/OptionMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 222
    const/16 v5, 0x15

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 226
    :goto_0
    iget-object v5, p0, Lcom/lge/camera/controller/OptionMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f090009

    invoke-static {v5, v6}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    .line 228
    .local v1, "lcdHeight":I
    iget-object v5, p0, Lcom/lge/camera/controller/OptionMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f090245

    invoke-static {v5, v6}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    .line 230
    .local v2, "optionMenuWidth":I
    sparse-switch p1, :sswitch_data_0

    .line 264
    :goto_1
    invoke-virtual {v4, v3}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    invoke-virtual {v4, p1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 270
    .end local v1    # "lcdHeight":I
    .end local v2    # "optionMenuWidth":I
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "rl":Lcom/lge/camera/components/RotateLayout;
    :cond_0
    :goto_2
    return-void

    .line 224
    .restart local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v4    # "rl":Lcom/lge/camera/components/RotateLayout;
    :cond_1
    const/16 v5, 0xc

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 267
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "rl":Lcom/lge/camera/components/RotateLayout;
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v5, "CameraApp"

    const-string v6, "ClassCastException:"

    invoke-static {v5, v6, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 232
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .restart local v1    # "lcdHeight":I
    .restart local v2    # "optionMenuWidth":I
    .restart local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v4    # "rl":Lcom/lge/camera/components/RotateLayout;
    :sswitch_0
    :try_start_1
    iget-object v5, p0, Lcom/lge/camera/controller/OptionMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 233
    const/16 v5, 0xc

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 234
    const/4 v5, 0x0

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 236
    :cond_2
    const/16 v5, 0x14

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 237
    const/4 v5, 0x0

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 238
    sub-int v5, v1, v2

    div-int/lit8 v5, v5, 0x2

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 242
    :sswitch_1
    iget-object v5, p0, Lcom/lge/camera/controller/OptionMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 243
    const/16 v5, 0xa

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 244
    const/4 v5, 0x0

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 246
    :cond_3
    const/16 v5, 0x14

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 247
    const/4 v5, 0x0

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 248
    sub-int v5, v1, v2

    div-int/lit8 v5, v5, 0x2

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 253
    :sswitch_2
    iget-object v5, p0, Lcom/lge/camera/controller/OptionMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 254
    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 255
    sub-int v5, v1, v2

    div-int/lit8 v5, v5, 0x2

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 257
    :cond_4
    const/16 v5, 0x14

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 258
    const/4 v5, 0x0

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 230
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method
