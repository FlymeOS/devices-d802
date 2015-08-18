.class public Lcom/android/internal/app/ResolverActivityEx;
.super Lcom/android/internal/app/AlertActivity;
.source "ResolverActivityEx.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivityEx$ResolverComparator;,
        Lcom/android/internal/app/ResolverActivityEx$LoadIconIntoViewTask;,
        Lcom/android/internal/app/ResolverActivityEx$LoadIconTask;,
        Lcom/android/internal/app/ResolverActivityEx$ItemLongClickListener;,
        Lcom/android/internal/app/ResolverActivityEx$ViewHolder;,
        Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;,
        Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;,
        Lcom/android/internal/app/ResolverActivityEx$ActionTitle;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "ResolverActivityEx"

.field private static final USAGE_STATS_PERIOD:J = 0x48190800L


# instance fields
.field private mAdapter:Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;

.field private mAllowButton:Landroid/widget/Button;

.field private mAlwaysButton:Landroid/widget/Button;

.field private mAlwaysUse:Landroid/widget/CheckBox;

.field private mAlwaysUseOption:Z

.field private mAlwaysUseText:Landroid/widget/TextView;

.field private mClearDefaultHint:Landroid/widget/TextView;

.field private mIconDpi:I

.field private mIconSize:I

.field private mKeyguardEnabled:Z

.field private mLastSelected:I

.field private mLaunchedFromUid:I

.field private mListView:Landroid/widget/ListView;

.field private mMaxColumns:I

.field private mOnceButton:Landroid/widget/Button;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRegistered:Z

.field private mResolvingHome:Z

.field private mSafeForwardingMode:Z

.field private mShowExtended:Z

.field private mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private mUsm:Landroid/app/usage/UsageStatsManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivityEx;->mLastSelected:I

    .line 109
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivityEx;->mResolvingHome:Z

    .line 110
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivityEx;->mKeyguardEnabled:Z

    .line 118
    new-instance v0, Lcom/android/internal/app/ResolverActivityEx$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivityEx$1;-><init>(Lcom/android/internal/app/ResolverActivityEx;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityEx;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 1103
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ResolverActivityEx;)Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivityEx;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityEx;->mAdapter:Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/ResolverActivityEx;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivityEx;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityEx;->mAlwaysUse:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/app/ResolverActivityEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivityEx;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivityEx;->mKeyguardEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/app/ResolverActivityEx;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivityEx;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityEx;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/ResolverActivityEx;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivityEx;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivityEx;->mShowExtended:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/app/ResolverActivityEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivityEx;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivityEx;->mShowExtended:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/app/ResolverActivityEx;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivityEx;

    .prologue
    .line 92
    iget v0, p0, Lcom/android/internal/app/ResolverActivityEx;->mIconSize:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/ResolverActivityEx;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivityEx;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityEx;->mStats:Ljava/util/Map;

    return-object v0
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 165
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityEx;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 166
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 172
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 173
    return-object v0
.end method


# virtual methods
.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 372
    :try_start_0
    iget v2, p0, Lcom/android/internal/app/ResolverActivityEx;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 377
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 373
    .end local v1    # "result":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public getReplacementIntent(Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "defIntent"    # Landroid/content/Intent;

    .prologue
    .line 508
    return-object p2
.end method

.method protected getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "defaultTitleRes"    # I

    .prologue
    .line 359
    invoke-static {p1}, Lcom/android/internal/app/ResolverActivityEx$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivityEx$ActionTitle;

    move-result-object v1

    .line 360
    .local v1, "title":Lcom/android/internal/app/ResolverActivityEx$ActionTitle;
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityEx;->mAdapter:Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->hasFilteredItem()Z

    move-result v0

    .line 361
    .local v0, "named":Z
    sget-object v2, Lcom/android/internal/app/ResolverActivityEx$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivityEx$ActionTitle;

    if-ne v1, v2, :cond_0

    if-eqz p2, :cond_0

    .line 362
    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverActivityEx;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 364
    :goto_0
    return-object v2

    :cond_0
    if-eqz v0, :cond_1

    iget v2, v1, Lcom/android/internal/app/ResolverActivityEx$ActionTitle;->namedTitleRes:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivityEx;->mAdapter:Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->getFilteredItem()Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/ResolverActivityEx;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget v2, v1, Lcom/android/internal/app/ResolverActivityEx$ActionTitle;->titleRes:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivityEx;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 383
    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget v3, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v3, :cond_1

    .line 384
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityEx;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/app/ResolverActivityEx;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 385
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 399
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v0

    .line 389
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    .line 390
    .local v2, "iconRes":I
    if-eqz v2, :cond_2

    .line 391
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityEx;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/app/ResolverActivityEx;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 392
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 399
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v2    # "iconRes":I
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityEx;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 396
    :catch_0
    move-exception v1

    .line 397
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ResolverActivityEx"

    const-string v4, "Couldn\'t find resources for package"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 478
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 480
    .local v0, "id":I
    sget v2, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 481
    sget v2, Lcom/lge/internal/R$id;->allow_button:I

    if-ne v0, v2, :cond_1

    .line 482
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityEx;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityEx;->mAlwaysUse:Landroid/widget/CheckBox;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityEx;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/app/ResolverActivityEx;->startSelected(IZ)V

    .line 491
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityEx;->dismiss()V

    .line 492
    return-void

    .line 484
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityEx;->finish()V

    goto :goto_0

    .line 486
    :cond_2
    sget v2, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 487
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityEx;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityEx;->mAlwaysUse:Landroid/widget/CheckBox;

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityEx;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    :cond_3
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/app/ResolverActivityEx;->startSelected(IZ)V

    goto :goto_0

    .line 489
    :cond_4
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityEx;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    sget v3, Lcom/lge/internal/R$id;->button_always:I

    if-ne v0, v3, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/app/ResolverActivityEx;->startSelected(IZ)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 180
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityEx;->makeMyIntent()Landroid/content/Intent;

    move-result-object v2

    .line 181
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    .line 182
    .local v8, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v7, :cond_0

    const-string v0, "android.intent.category.HOME"

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const v4, 0x104049f

    .line 189
    .local v4, "titleResource":I
    iput-boolean v7, p0, Lcom/android/internal/app/ResolverActivityEx;->mResolvingHome:Z

    .line 194
    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/internal/app/ResolverActivityEx;->setSafeForwardingMode(Z)V

    .line 196
    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityEx;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivityEx;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 199
    return-void

    .line 191
    .end local v4    # "titleResource":I
    :cond_0
    const v4, 0x1040497

    .restart local v4    # "titleResource":I
    goto :goto_0

    :cond_1
    move-object v3, v5

    .line 196
    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "defaultTitleRes"    # I
    .param p5, "initialIntents"    # [Landroid/content/Intent;
    .param p7, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "I[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p6, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget v2, Lcom/lge/internal/R$style;->Theme_LGE_White_Dialog_Alert:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivityEx;->setTheme(I)V

    .line 215
    invoke-super/range {p0 .. p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 217
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivityEx;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mLaunchedFromUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivityEx;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mPm:Landroid/content/pm/PackageManager;

    .line 223
    const-string v2, "usagestats"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivityEx;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mUsm:Landroid/app/usage/UsageStatsManager;

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v6, 0x48190800

    sub-long v16, v2, v6

    .line 226
    .local v16, "sinceTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mUsm:Landroid/app/usage/UsageStatsManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1, v6, v7}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mStats:Ljava/util/Map;

    .line 227
    const-string v2, "ResolverActivityEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sinceTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivityEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e006e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mMaxColumns:I

    .line 231
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/ResolverActivityEx;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 232
    .local v11, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    if-nez p3, :cond_0

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivityEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10404a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 234
    const-string v2, "ResolverActivityEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "title == null "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivityEx;->setTitle(Ljava/lang/CharSequence;)V

    .line 238
    move-object/from16 v0, p3

    iput-object v0, v11, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivityEx;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 241
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mRegistered:Z

    .line 243
    const-string v2, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivityEx;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    .line 244
    .local v10, "am":Landroid/app/ActivityManager;
    invoke-virtual {v10}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mIconDpi:I

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivityEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/lge/internal/R$dimen;->app_icon_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mIconSize:I

    .line 247
    new-instance v2, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/app/ResolverActivityEx;->mLaunchedFromUid:I

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;-><init>(Lcom/android/internal/app/ResolverActivityEx;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;IZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mAdapter:Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mAdapter:Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->hasFilteredItem()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 252
    const v15, 0x10900b1

    .line 253
    .local v15, "layoutId":I
    const/16 p7, 0x0

    .line 257
    :goto_1
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/ResolverActivityEx;->mAlwaysUseOption:Z

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mAdapter:Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    .line 260
    .local v13, "count":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mLaunchedFromUid:I

    if-ltz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mLaunchedFromUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 262
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivityEx;->finish()V

    .line 352
    :cond_2
    :goto_2
    return-void

    .line 219
    .end local v10    # "am":Landroid/app/ActivityManager;
    .end local v11    # "ap":Lcom/android/internal/app/AlertController$AlertParams;
    .end local v13    # "count":I
    .end local v15    # "layoutId":I
    .end local v16    # "sinceTime":J
    :catch_0
    move-exception v14

    .line 220
    .local v14, "e":Landroid/os/RemoteException;
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mLaunchedFromUid:I

    goto/16 :goto_0

    .line 255
    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v10    # "am":Landroid/app/ActivityManager;
    .restart local v11    # "ap":Lcom/android/internal/app/AlertController$AlertParams;
    .restart local v16    # "sinceTime":J
    :cond_3
    sget v15, Lcom/lge/internal/R$layout;->resolver_list_lg:I

    .restart local v15    # "layoutId":I
    goto :goto_1

    .line 264
    .restart local v13    # "count":I
    :cond_4
    const/4 v2, 0x1

    if-le v13, v2, :cond_b

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivityEx;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/lge/internal/R$layout;->resolver_list_lg:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 266
    iget-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    sget v3, Lcom/lge/internal/R$id;->resolver_list_lg:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mListView:Landroid/widget/ListView;

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivityEx;->mAdapter:Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mListView:Landroid/widget/ListView;

    new-instance v3, Lcom/android/internal/app/ResolverActivityEx$ItemLongClickListener;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/app/ResolverActivityEx$ItemLongClickListener;-><init>(Lcom/android/internal/app/ResolverActivityEx;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 271
    if-eqz p7, :cond_5

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 284
    :cond_5
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivityEx;->setupAlert()V

    .line 286
    if-eqz p7, :cond_2

    .line 287
    sget v2, Lcom/lge/internal/R$id;->button_bar:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivityEx;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 288
    .local v12, "buttonLayout":Landroid/view/ViewGroup;
    if-eqz v12, :cond_e

    .line 289
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 290
    sget v2, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_d

    .line 291
    sget v2, Lcom/lge/internal/R$id;->allow_button:I

    invoke-virtual {v12, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mAllowButton:Landroid/widget/Button;

    .line 299
    :goto_4
    sget v2, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_a

    .line 300
    sget v2, Lcom/lge/internal/R$id;->alwaysUse:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivityEx;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mAlwaysUse:Landroid/widget/CheckBox;

    .line 301
    sget v2, Lcom/lge/internal/R$id;->alwaysUseText:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivityEx;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mAlwaysUseText:Landroid/widget/TextView;

    .line 302
    const-string v2, "20815"

    const-string v3, "gsm.sim.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mAlwaysUse:Landroid/widget/CheckBox;

    if-eqz v2, :cond_6

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mAlwaysUse:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 307
    :cond_6
    sget v2, Lcom/lge/internal/R$id;->clearDefaultHint:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivityEx;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mClearDefaultHint:Landroid/widget/TextView;

    .line 308
    const-string v2, "VZW"

    const-string v3, "ro.build.target_operator"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mClearDefaultHint:Landroid/widget/TextView;

    sget v3, Lcom/lge/internal/R$string;->sp_clearDefaultHintMsg_vzw:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 311
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mClearDefaultHint:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mClearDefaultHint:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mAlwaysUse:Landroid/widget/CheckBox;

    if-eqz v2, :cond_9

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mAlwaysUse:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mAlwaysUse:Landroid/widget/CheckBox;

    new-instance v3, Lcom/android/internal/app/ResolverActivityEx$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/app/ResolverActivityEx$2;-><init>(Lcom/android/internal/app/ResolverActivityEx;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mAlwaysUseText:Landroid/widget/TextView;

    if-eqz v2, :cond_a

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mAlwaysUseText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mAlwaysUseText:Landroid/widget/TextView;

    new-instance v3, Lcom/android/internal/app/ResolverActivityEx$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/app/ResolverActivityEx$3;-><init>(Lcom/android/internal/app/ResolverActivityEx;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mAdapter:Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->getInitialHighlight()I

    move-result v5

    .line 346
    .local v5, "initialHighlight":I
    if-ltz v5, :cond_2

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v5, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 348
    if-eqz p7, :cond_2

    .line 349
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/ResolverActivityEx;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto/16 :goto_2

    .line 274
    .end local v5    # "initialHighlight":I
    .end local v12    # "buttonLayout":Landroid/view/ViewGroup;
    :cond_b
    const/4 v2, 0x1

    if-ne v13, v2, :cond_c

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mAdapter:Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivityEx;->startActivity(Landroid/content/Intent;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v2}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 277
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mRegistered:Z

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivityEx;->finish()V

    goto/16 :goto_2

    .line 281
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivityEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10404a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto/16 :goto_3

    .line 293
    .restart local v12    # "buttonLayout":Landroid/view/ViewGroup;
    :cond_d
    sget v2, Lcom/lge/internal/R$id;->button_always:I

    invoke-virtual {v12, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mAlwaysButton:Landroid/widget/Button;

    .line 294
    sget v2, Lcom/lge/internal/R$id;->button_once:I

    invoke-virtual {v12, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mOnceButton:Landroid/widget/Button;

    goto/16 :goto_4

    .line 297
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mAlwaysUseOption:Z

    goto/16 :goto_4
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivityEx;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 209
    return-void
.end method

.method protected onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V
    .locals 27
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "alwaysCheck"    # Z

    .prologue
    .line 512
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mAlwaysUseOption:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mAdapter:Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->hasFilteredItem()Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mAdapter:Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    if-eqz v2, :cond_f

    .line 514
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 516
    .local v6, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 517
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 519
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v13

    .line 520
    .local v13, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v13, :cond_2

    .line 521
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 522
    .local v12, "cat":Ljava/lang/String;
    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_0

    .line 525
    .end local v12    # "cat":Ljava/lang/String;
    .end local v17    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 527
    move-object/from16 v0, p1

    iget v2, v0, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v3, 0xfff0000

    and-int v12, v2, v3

    .line 528
    .local v12, "cat":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    .line 529
    .local v14, "data":Landroid/net/Uri;
    const/high16 v2, 0x600000

    if-ne v12, v2, :cond_3

    .line 530
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 531
    .local v18, "mimeType":Ljava/lang/String;
    if-eqz v18, :cond_3

    .line 533
    :try_start_0
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    .end local v18    # "mimeType":Ljava/lang/String;
    :cond_3
    :goto_1
    if-eqz v14, :cond_a

    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 544
    const/high16 v2, 0x600000

    if-ne v12, v2, :cond_4

    const-string v2, "file"

    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "content"

    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 547
    :cond_4
    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 551
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v20

    .line 552
    .local v20, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v20, :cond_6

    .line 553
    invoke-virtual {v14}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v26

    .line 554
    .local v26, "ssp":Ljava/lang/String;
    :cond_5
    if-eqz v26, :cond_6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 555
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/PatternMatcher;

    .line 556
    .local v19, "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 557
    invoke-virtual/range {v19 .. v19}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 562
    .end local v19    # "p":Landroid/os/PatternMatcher;
    .end local v26    # "ssp":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v11

    .line 563
    .local v11, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v11, :cond_8

    .line 564
    :cond_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 565
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/IntentFilter$AuthorityEntry;

    .line 566
    .local v10, "a":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v10, v14}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v2

    if-ltz v2, :cond_7

    .line 567
    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v22

    .line 568
    .local v22, "port":I
    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v3

    if-ltz v22, :cond_d

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v6, v3, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    .end local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v22    # "port":I
    :cond_8
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v20

    .line 575
    if-eqz v20, :cond_a

    .line 576
    invoke-virtual {v14}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v21

    .line 577
    .local v21, "path":Ljava/lang/String;
    :cond_9
    if-eqz v21, :cond_a

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 578
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/PatternMatcher;

    .line 579
    .restart local v19    # "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 580
    invoke-virtual/range {v19 .. v19}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 588
    .end local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v19    # "p":Landroid/os/PatternMatcher;
    .end local v20    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v21    # "path":Ljava/lang/String;
    :cond_a
    if-eqz v6, :cond_f

    .line 590
    const-string v2, "SKT"

    const-string v3, "ro.build.target_operator"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mAdapter:Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mHiddenResolveList:Ljava/util/List;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mAdapter:Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    if-eqz v2, :cond_b

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mAdapter:Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivityEx;->mAdapter:Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mHiddenResolveList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 596
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mAdapter:Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    .line 597
    .local v9, "N":I
    new-array v0, v9, [Landroid/content/ComponentName;

    move-object/from16 v25, v0

    .line 598
    .local v25, "set":[Landroid/content/ComponentName;
    const/4 v7, 0x0

    .line 599
    .local v7, "bestMatch":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_3
    move/from16 v0, v16

    if-ge v0, v9, :cond_e

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx;->mAdapter:Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/ResolveInfo;

    .line 601
    .local v23, "r":Landroid/content/pm/ResolveInfo;
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v25, v16

    .line 603
    move-object/from16 v0, v23

    iget v2, v0, Landroid/content/pm/ResolveInfo;->match:I

    if-le v2, v7, :cond_c

    move-object/from16 v0, v23

    iget v7, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 599
    :cond_c
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 534
    .end local v7    # "bestMatch":I
    .end local v9    # "N":I
    .end local v16    # "i":I
    .end local v23    # "r":Landroid/content/pm/ResolveInfo;
    .end local v25    # "set":[Landroid/content/ComponentName;
    .restart local v18    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 535
    .local v15, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v2, "ResolverActivityEx"

    invoke-static {v2, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 536
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 568
    .end local v15    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v18    # "mimeType":Ljava/lang/String;
    .restart local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .restart local v20    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .restart local v22    # "port":I
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 605
    .end local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v20    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v22    # "port":I
    .restart local v7    # "bestMatch":I
    .restart local v9    # "N":I
    .restart local v16    # "i":I
    .restart local v25    # "set":[Landroid/content/ComponentName;
    :cond_e
    if-eqz p3, :cond_11

    .line 606
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivityEx;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v2, v6, v7, v0, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 621
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "bestMatch":I
    .end local v9    # "N":I
    .end local v12    # "cat":I
    .end local v13    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "data":Landroid/net/Uri;
    .end local v16    # "i":I
    .end local v25    # "set":[Landroid/content/ComponentName;
    :cond_f
    :goto_4
    if-eqz p2, :cond_10

    .line 622
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivityEx;->safelyStartActivity(Landroid/content/Intent;)V

    .line 624
    :cond_10
    return-void

    .line 610
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    .restart local v7    # "bestMatch":I
    .restart local v9    # "N":I
    .restart local v12    # "cat":I
    .restart local v13    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v14    # "data":Landroid/net/Uri;
    .restart local v16    # "i":I
    .restart local v25    # "set":[Landroid/content/ComponentName;
    :cond_11
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivityEx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    move-object/from16 v3, p2

    invoke-interface/range {v2 .. v8}, Landroid/content/pm/IPackageManager;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 614
    :catch_1
    move-exception v24

    .line 615
    .local v24, "re":Landroid/os/RemoteException;
    const-string v2, "ResolverActivityEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling setLastChosenActivity\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 454
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityEx;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 455
    .local v0, "checkedPos":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    const/4 v1, 0x1

    .line 456
    .local v1, "hasValidSelection":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivityEx;->mAlwaysUseOption:Z

    if-eqz v3, :cond_4

    if-eqz v1, :cond_0

    iget v3, p0, Lcom/android/internal/app/ResolverActivityEx;->mLastSelected:I

    if-eq v3, v0, :cond_4

    .line 457
    :cond_0
    sget v2, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_3

    .line 458
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityEx;->mAllowButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 463
    :goto_1
    if-eqz v1, :cond_1

    .line 464
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityEx;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 466
    :cond_1
    iput v0, p0, Lcom/android/internal/app/ResolverActivityEx;->mLastSelected:I

    .line 470
    :goto_2
    return-void

    .end local v1    # "hasValidSelection":Z
    :cond_2
    move v1, v2

    .line 455
    goto :goto_0

    .line 460
    .restart local v1    # "hasValidSelection":Z
    :cond_3
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityEx;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 461
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityEx;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 468
    :cond_4
    invoke-virtual {p0, p3, v2}, Lcom/android/internal/app/ResolverActivityEx;->startSelected(IZ)V

    goto :goto_2
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 404
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onRestart()V

    .line 405
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivityEx;->mRegistered:Z

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityEx;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityEx;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 407
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivityEx;->mRegistered:Z

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityEx;->mAdapter:Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->handlePackagesChanged()V

    .line 410
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 435
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 436
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivityEx;->mAlwaysUseOption:Z

    if-eqz v2, :cond_0

    .line 437
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityEx;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 438
    .local v0, "checkedPos":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    .line 439
    .local v1, "enabled":Z
    :goto_0
    iput v0, p0, Lcom/android/internal/app/ResolverActivityEx;->mLastSelected:I

    .line 440
    sget v2, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    .line 441
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityEx;->mAllowButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 446
    :goto_1
    if-eqz v1, :cond_0

    .line 447
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityEx;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 450
    .end local v0    # "checkedPos":I
    .end local v1    # "enabled":Z
    :cond_0
    return-void

    .line 438
    .restart local v0    # "checkedPos":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 443
    .restart local v1    # "enabled":Z
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityEx;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 444
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityEx;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 414
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 415
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivityEx;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityEx;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 417
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivityEx;->mRegistered:Z

    .line 419
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityEx;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 427
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityEx;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivityEx;->mKeyguardEnabled:Z

    if-nez v0, :cond_1

    .line 428
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityEx;->finish()V

    .line 431
    :cond_1
    return-void
.end method

.method public safelyStartActivity(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 627
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivityEx;->mSafeForwardingMode:Z

    if-nez v3, :cond_0

    .line 628
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivityEx;->startActivity(Landroid/content/Intent;)V

    .line 645
    :goto_0
    return-void

    .line 632
    :cond_0
    const/4 v3, 0x0

    const/16 v4, -0x2710

    :try_start_0
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/internal/app/ResolverActivityEx;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 633
    :catch_0
    move-exception v0

    .line 636
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityEx;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 641
    .local v2, "launchedFromPackage":Ljava/lang/String;
    :goto_1
    const-string v3, "ResolverActivityEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to launch as uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/ResolverActivityEx;->mLaunchedFromUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", while running in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 638
    .end local v2    # "launchedFromPackage":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 639
    .local v1, "e2":Landroid/os/RemoteException;
    const-string v2, "??"

    .restart local v2    # "launchedFromPackage":Ljava/lang/String;
    goto :goto_1
.end method

.method public setSafeForwardingMode(Z)V
    .locals 0
    .param p1, "safeForwarding"    # Z

    .prologue
    .line 355
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivityEx;->mSafeForwardingMode:Z

    .line 356
    return-void
.end method

.method showAppDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 648
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "package"

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 651
    .local v0, "in":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivityEx;->startActivity(Landroid/content/Intent;)V

    .line 652
    return-void
.end method

.method startSelected(IZ)V
    .locals 3
    .param p1, "which"    # I
    .param p2, "always"    # Z

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityEx;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 502
    :goto_0
    return-void

    .line 498
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityEx;->mAdapter:Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 499
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityEx;->mAdapter:Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v0

    .line 500
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v0, p2}, Lcom/android/internal/app/ResolverActivityEx;->onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V

    .line 501
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityEx;->finish()V

    goto :goto_0
.end method
