.class public Lcom/android/internal/view/LGActionBarPolicy;
.super Lcom/android/internal/view/ActionBarPolicy;
.source "LGActionBarPolicy.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mPackageName:Ljava/lang/String;

.field private mRcs:Landroid/content/res/Resources;

.field private mShowsOverflowMenuButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 16
    invoke-direct {p0, p1}, Lcom/android/internal/view/ActionBarPolicy;-><init>(Landroid/content/Context;)V

    .line 10
    iput-boolean v1, p0, Lcom/android/internal/view/LGActionBarPolicy;->mShowsOverflowMenuButton:Z

    .line 19
    invoke-direct {p0}, Lcom/android/internal/view/LGActionBarPolicy;->init()V

    .line 23
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_OPTIMUSUI:Z

    if-eqz v3, :cond_0

    .line 26
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/view/LGActionBarPolicy;->mPackageName:Ljava/lang/String;

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 29
    .local v0, "ainfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 30
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.lge.app.forceHideOverflowButton"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/view/LGActionBarPolicy;->mShowsOverflowMenuButton:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    move v1, v2

    .line 30
    goto :goto_0

    .line 34
    .end local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    iput-object v1, p0, Lcom/android/internal/view/LGActionBarPolicy;->mRcs:Landroid/content/res/Resources;

    .line 97
    iput-object v1, p0, Lcom/android/internal/view/LGActionBarPolicy;->mActivity:Landroid/app/Activity;

    .line 98
    iput-object v1, p0, Lcom/android/internal/view/LGActionBarPolicy;->mPackageName:Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lcom/android/internal/view/LGActionBarPolicy;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/android/internal/view/LGActionBarPolicy;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/view/ContextThemeWrapper;

    .line 102
    .local v0, "mWrapperContext":Landroid/view/ContextThemeWrapper;
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/LGActionBarPolicy;->mRcs:Landroid/content/res/Resources;

    .line 104
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lcom/android/internal/view/LGActionBarPolicy;->mActivity:Landroid/app/Activity;

    .line 105
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/LGActionBarPolicy;->mPackageName:Ljava/lang/String;

    .line 112
    .end local v0    # "mWrapperContext":Landroid/view/ContextThemeWrapper;
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/android/internal/view/LGActionBarPolicy;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/internal/view/LGActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/LGActionBarPolicy;->mRcs:Landroid/content/res/Resources;

    .line 109
    iget-object v1, p0, Lcom/android/internal/view/LGActionBarPolicy;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lcom/android/internal/view/LGActionBarPolicy;->mActivity:Landroid/app/Activity;

    .line 110
    iget-object v1, p0, Lcom/android/internal/view/LGActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/LGActionBarPolicy;->mPackageName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getStackedTabMaxWidth()I
    .locals 6

    .prologue
    .line 74
    const/4 v1, 0x0

    .line 76
    .local v1, "useExpandedStackedTabs":Z
    const/4 v0, 0x0

    .line 77
    .local v0, "id":I
    iget-object v2, p0, Lcom/android/internal/view/LGActionBarPolicy;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/view/LGActionBarPolicy;->mRcs:Landroid/content/res/Resources;

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/android/internal/view/LGActionBarPolicy;->mRcs:Landroid/content/res/Resources;

    const-string v3, "com.lge.action_bar_stacked_tabs_expanded"

    const-string v4, "bool"

    iget-object v5, p0, Lcom/android/internal/view/LGActionBarPolicy;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    iget-object v2, p0, Lcom/android/internal/view/LGActionBarPolicy;->mRcs:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 87
    :cond_0
    if-eqz v1, :cond_1

    .line 88
    iget-object v2, p0, Lcom/android/internal/view/LGActionBarPolicy;->mRcs:Landroid/content/res/Resources;

    sget v3, Lcom/lge/internal/R$dimen;->action_bar_stacked_tab_expanded_max_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 91
    :goto_0
    return v2

    :cond_1
    invoke-super {p0}, Lcom/android/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v2

    goto :goto_0
.end method

.method public hasEmbeddedTabs()Z
    .locals 5

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/view/LGActionBarPolicy;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/LGActionBarPolicy;->mRcs:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/android/internal/view/LGActionBarPolicy;->mRcs:Landroid/content/res/Resources;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/view/LGActionBarPolicy;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_action_bar_embed_tabs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bool"

    iget-object v4, p0, Lcom/android/internal/view/LGActionBarPolicy;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 57
    if-nez v0, :cond_0

    .line 58
    iget-object v1, p0, Lcom/android/internal/view/LGActionBarPolicy;->mRcs:Landroid/content/res/Resources;

    const-string v2, "action_bar_embed_tabs"

    const-string v3, "bool"

    iget-object v4, p0, Lcom/android/internal/view/LGActionBarPolicy;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 65
    :cond_0
    if-nez v0, :cond_1

    .line 66
    invoke-super {p0}, Lcom/android/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v1

    .line 69
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/view/LGActionBarPolicy;->mRcs:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    goto :goto_0
.end method

.method public showsOverflowMenuButton()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/internal/view/LGActionBarPolicy;->mShowsOverflowMenuButton:Z

    return v0
.end method
