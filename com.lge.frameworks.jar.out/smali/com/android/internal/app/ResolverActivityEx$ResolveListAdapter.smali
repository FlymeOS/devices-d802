.class final Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverActivityEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivityEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ResolveListAdapter"
.end annotation


# instance fields
.field private final mBaseResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterLastUsed:Z

.field mHiddenResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mInitialHighlight:I

.field private final mInitialIntents:[Landroid/content/Intent;

.field private final mIntent:Landroid/content/Intent;

.field private mLastChosen:Landroid/content/pm/ResolveInfo;

.field private mLastChosenPosition:I

.field private final mLaunchedFromUid:I

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mOrigResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivityEx;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivityEx;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;IZ)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "launchedFromUid"    # I
    .param p7, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, -0x1

    .line 691
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 684
    iput v1, p0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mInitialHighlight:I

    .line 686
    iput v1, p0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mLastChosenPosition:I

    .line 692
    const-string v1, "keyguard"

    invoke-virtual {p1, v1}, Lcom/android/internal/app/ResolverActivityEx;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 693
    .local v0, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    # setter for: Lcom/android/internal/app/ResolverActivityEx;->mKeyguardEnabled:Z
    invoke-static {p1, v1}, Lcom/android/internal/app/ResolverActivityEx;->access$202(Lcom/android/internal/app/ResolverActivityEx;Z)Z

    .line 695
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    .line 696
    iput-object p4, p0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    .line 697
    iput-object p5, p0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    .line 698
    iput p6, p0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mLaunchedFromUid:I

    .line 699
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 700
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mList:Ljava/util/List;

    .line 701
    iput-boolean p7, p0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mFilterLastUsed:Z

    .line 702
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->rebuildList()V

    .line 703
    return-void
.end method

.method private final bindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;

    .prologue
    const/4 v4, 0x0

    .line 1005
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivityEx$ViewHolder;

    .line 1007
    .local v1, "holder":Lcom/android/internal/app/ResolverActivityEx$ViewHolder;
    iget-object v2, p2, Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 1009
    :try_start_0
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivityEx$ViewHolder;->text:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 1010
    const-string v2, "ResolverActivityEx"

    const-string v3, "!!!!!!holder.text == null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :cond_0
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivityEx$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    # getter for: Lcom/android/internal/app/ResolverActivityEx;->mShowExtended:Z
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivityEx;->access$400(Lcom/android/internal/app/ResolverActivityEx;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1018
    iget-object v2, p2, Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 1020
    :try_start_1
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivityEx$ViewHolder;->text2:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1021
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivityEx$ViewHolder;->text2:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1035
    :cond_2
    :goto_1
    iget-object v2, p2, Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    .line 1036
    new-instance v2, Lcom/android/internal/app/ResolverActivityEx$LoadIconTask;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    invoke-direct {v2, v3}, Lcom/android/internal/app/ResolverActivityEx$LoadIconTask;-><init>(Lcom/android/internal/app/ResolverActivityEx;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;

    aput-object p2, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverActivityEx$LoadIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1038
    :cond_3
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivityEx$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p2, Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1039
    return-void

    .line 1013
    :catch_0
    move-exception v0

    .line 1014
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "ResolverActivityEx"

    const-string v3, "NullPointerException >> info.displayLabel"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1022
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1023
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    const-string v2, "ResolverActivityEx"

    const-string v3, "NullPointerException >> info.extendedInfo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1029
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_4
    :try_start_2
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivityEx$ViewHolder;->text2:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 1030
    :catch_2
    move-exception v0

    .line 1031
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    const-string v2, "ResolverActivityEx"

    const-string v3, "NullPointerException >> holder.text2.setVisibility"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V
    .locals 16
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "ro"    # Landroid/content/pm/ResolveInfo;
    .param p5, "roLabel"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;II",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 899
    .local p1, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sub-int v1, p3, p2

    add-int/lit8 v12, v1, 0x1

    .line 900
    .local v12, "num":I
    const/4 v1, 0x1

    if-ne v12, v1, :cond_2

    .line 901
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 905
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mInitialHighlight:I

    .line 908
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivityEx;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 953
    :cond_1
    return-void

    .line 910
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    const/4 v2, 0x1

    # setter for: Lcom/android/internal/app/ResolverActivityEx;->mShowExtended:Z
    invoke-static {v1, v2}, Lcom/android/internal/app/ResolverActivityEx;->access$402(Lcom/android/internal/app/ResolverActivityEx;Z)Z

    .line 911
    const/4 v14, 0x0

    .line 912
    .local v14, "usePkg":Z
    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    # getter for: Lcom/android/internal/app/ResolverActivityEx;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivityEx;->access$300(Lcom/android/internal/app/ResolverActivityEx;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 913
    .local v13, "startApp":Ljava/lang/CharSequence;
    if-nez v13, :cond_3

    .line 914
    const/4 v14, 0x1

    .line 916
    :cond_3
    if-nez v14, :cond_6

    .line 918
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 920
    .local v7, "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v7, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 921
    add-int/lit8 v8, p2, 0x1

    .local v8, "j":I
    :goto_0
    move/from16 v0, p3

    if-gt v8, v0, :cond_5

    .line 922
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 923
    .local v10, "jRi":Landroid/content/pm/ResolveInfo;
    iget-object v1, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    # getter for: Lcom/android/internal/app/ResolverActivityEx;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivityEx;->access$300(Lcom/android/internal/app/ResolverActivityEx;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 924
    .local v9, "jApp":Ljava/lang/CharSequence;
    if-eqz v9, :cond_4

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 925
    :cond_4
    const/4 v14, 0x1

    .line 932
    .end local v9    # "jApp":Ljava/lang/CharSequence;
    .end local v10    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_5
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 934
    .end local v7    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v8    # "j":I
    :cond_6
    move/from16 v11, p2

    .local v11, "k":I
    :goto_1
    move/from16 v0, p3

    if-gt v11, v0, :cond_1

    .line 935
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 936
    .local v3, "add":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 940
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mInitialHighlight:I

    .line 942
    :cond_7
    if-eqz v14, :cond_9

    .line 944
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivityEx;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 934
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 928
    .end local v3    # "add":Landroid/content/pm/ResolveInfo;
    .end local v11    # "k":I
    .restart local v7    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .restart local v8    # "j":I
    .restart local v9    # "jApp":Ljava/lang/CharSequence;
    .restart local v10    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_8
    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 921
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 948
    .end local v7    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v8    # "j":I
    .end local v9    # "jApp":Ljava/lang/CharSequence;
    .end local v10    # "jRi":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "add":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "k":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    # getter for: Lcom/android/internal/app/ResolverActivityEx;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/internal/app/ResolverActivityEx;->access$300(Lcom/android/internal/app/ResolverActivityEx;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivityEx;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private rebuildList()V
    .locals 22

    .prologue
    .line 743
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivityEx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-interface {v1, v2, v4, v5}, Landroid/content/pm/IPackageManager;->getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 751
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    if-eqz v1, :cond_6

    .line 752
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 779
    .local v8, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    const-string v1, "SKT"

    const-string v2, "ro.build.target_operator"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 780
    if-eqz v8, :cond_d

    .line 781
    const/16 v18, 0x0

    .line 782
    .local v18, "notShownApp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vnd.android.cursor.dir/calls"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.CALL_BUTTON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 787
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivityEx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone_mode_set"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_a

    .line 788
    const-string v18, "com.skt.prod.dialer"

    .line 799
    :cond_4
    :goto_1
    if-eqz v18, :cond_d

    .line 800
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mHiddenResolveList:Ljava/util/List;

    .line 801
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v16, v1, -0x1

    .local v16, "i":I
    :goto_2
    if-ltz v16, :cond_d

    .line 802
    move/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v14, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 803
    .local v14, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 804
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mHiddenResolveList:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 805
    move/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 801
    :cond_5
    add-int/lit8 v16, v16, -0x1

    goto :goto_2

    .line 746
    .end local v8    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v14    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v16    # "i":I
    .end local v18    # "notShownApp":Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 747
    .local v20, "re":Landroid/os/RemoteException;
    const-string v1, "ResolverActivityEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling setLastChosenActivity\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 754
    .end local v20    # "re":Landroid/os/RemoteException;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    # getter for: Lcom/android/internal/app/ResolverActivityEx;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivityEx;->access$300(Lcom/android/internal/app/ResolverActivityEx;)Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    const/high16 v5, 0x10000

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v1, :cond_9

    const/16 v1, 0x40

    :goto_3
    or-int/2addr v1, v5

    invoke-virtual {v2, v4, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 762
    .restart local v8    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v8, :cond_0

    .line 763
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v16, v1, -0x1

    .restart local v16    # "i":I
    :goto_4
    if-ltz v16, :cond_0

    .line 764
    move/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v14, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 765
    .restart local v14    # "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, v14, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mLaunchedFromUid:I

    iget-object v4, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v5, v14, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-static {v1, v2, v4, v5}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v15

    .line 768
    .local v15, "granted":I
    if-eqz v15, :cond_8

    .line 770
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    if-ne v1, v8, :cond_7

    .line 771
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 773
    :cond_7
    move/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 763
    :cond_8
    add-int/lit8 v16, v16, -0x1

    goto :goto_4

    .line 754
    .end local v8    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v14    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v15    # "granted":I
    .end local v16    # "i":I
    :cond_9
    const/4 v1, 0x0

    goto :goto_3

    .line 790
    .restart local v8    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v18    # "notShownApp":Ljava/lang/String;
    :cond_a
    const-string v18, "com.android.contacts"

    goto/16 :goto_1

    .line 792
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.CALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 793
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivityEx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone_mode_set"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_c

    .line 794
    const-string v18, "com.skt.prod.phone"

    goto/16 :goto_1

    .line 796
    :cond_c
    const-string v18, "com.android.phone"

    goto/16 :goto_1

    .line 813
    .end local v18    # "notShownApp":Ljava/lang/String;
    :cond_d
    if-eqz v8, :cond_1b

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    .local v13, "N":I
    if-lez v13, :cond_1b

    .line 816
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 817
    .local v11, "r0":Landroid/content/pm/ResolveInfo;
    const/16 v16, 0x1

    .restart local v16    # "i":I
    :goto_5
    move/from16 v0, v16

    if-ge v0, v13, :cond_11

    .line 818
    move/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 819
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    const-string v1, "ResolverActivityEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v11, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, v11, Landroid/content/pm/ResolveInfo;->isDefault:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " vs "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v3, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, v3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget v1, v11, Landroid/content/pm/ResolveInfo;->priority:I

    iget v2, v3, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v1, v2, :cond_e

    iget-boolean v1, v11, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v2, v3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v1, v2, :cond_10

    .line 827
    :cond_e
    :goto_6
    move/from16 v0, v16

    if-ge v0, v13, :cond_10

    .line 828
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    if-ne v1, v8, :cond_f

    .line 829
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 831
    :cond_f
    move/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 832
    add-int/lit8 v13, v13, -0x1

    goto :goto_6

    .line 817
    :cond_10
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_5

    .line 836
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_11
    const/4 v1, 0x1

    if-le v13, v1, :cond_12

    .line 837
    new-instance v19, Lcom/android/internal/app/ResolverActivityEx$ResolverComparator;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    move-object/from16 v0, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ResolverActivityEx$ResolverComparator;-><init>(Lcom/android/internal/app/ResolverActivityEx;Landroid/content/Context;)V

    .line 839
    .local v19, "rComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, v19

    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 842
    .end local v19    # "rComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/content/pm/ResolveInfo;>;"
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    if-eqz v1, :cond_16

    .line 843
    const/16 v16, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    array-length v1, v1

    move/from16 v0, v16

    if-ge v0, v1, :cond_16

    .line 844
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    aget-object v6, v1, v16

    .line 845
    .local v6, "ii":Landroid/content/Intent;
    if-nez v6, :cond_13

    .line 843
    :goto_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 848
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivityEx;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v14

    .line 850
    .restart local v14    # "ai":Landroid/content/pm/ActivityInfo;
    if-nez v14, :cond_14

    .line 851
    const-string v1, "ResolverActivityEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No activity found for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 854
    :cond_14
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 855
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    iput-object v14, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 856
    instance-of v1, v6, Landroid/content/pm/LabeledIntent;

    if-eqz v1, :cond_15

    move-object/from16 v17, v6

    .line 857
    check-cast v17, Landroid/content/pm/LabeledIntent;

    .line 858
    .local v17, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 859
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v1

    iput v1, v3, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 860
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v3, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 861
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v1

    iput v1, v3, Landroid/content/pm/ResolveInfo;->icon:I

    .line 863
    .end local v17    # "li":Landroid/content/pm/LabeledIntent;
    :cond_15
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivityEx;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivityEx;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 870
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v6    # "ii":Landroid/content/Intent;
    .end local v14    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_16
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "r0":Landroid/content/pm/ResolveInfo;
    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 871
    .restart local v11    # "r0":Landroid/content/pm/ResolveInfo;
    const/4 v9, 0x0

    .line 872
    .local v9, "start":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    # getter for: Lcom/android/internal/app/ResolverActivityEx;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivityEx;->access$300(Lcom/android/internal/app/ResolverActivityEx;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 873
    .local v12, "r0Label":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/app/ResolverActivityEx;->mShowExtended:Z
    invoke-static {v1, v2}, Lcom/android/internal/app/ResolverActivityEx;->access$402(Lcom/android/internal/app/ResolverActivityEx;Z)Z

    .line 874
    const/16 v16, 0x1

    :goto_9
    move/from16 v0, v16

    if-ge v0, v13, :cond_1a

    .line 875
    if-nez v12, :cond_17

    .line 876
    iget-object v1, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 878
    :cond_17
    move/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 879
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    # getter for: Lcom/android/internal/app/ResolverActivityEx;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivityEx;->access$300(Lcom/android/internal/app/ResolverActivityEx;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v21

    .line 880
    .local v21, "riLabel":Ljava/lang/CharSequence;
    if-nez v21, :cond_18

    .line 881
    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 883
    :cond_18
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 874
    :goto_a
    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    .line 886
    :cond_19
    add-int/lit8 v10, v16, -0x1

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 887
    move-object v11, v3

    .line 888
    move-object/from16 v12, v21

    .line 889
    move/from16 v9, v16

    goto :goto_a

    .line 892
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v21    # "riLabel":Ljava/lang/CharSequence;
    :cond_1a
    add-int/lit8 v10, v13, -0x1

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 894
    .end local v9    # "start":I
    .end local v11    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v12    # "r0Label":Ljava/lang/CharSequence;
    .end local v13    # "N":I
    .end local v16    # "i":I
    :cond_1b
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilteredItem()Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;
    .locals 2

    .prologue
    .line 717
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mList:Ljava/util/List;

    iget v1, p0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mLastChosenPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;

    .line 721
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilteredPosition()I
    .locals 1

    .prologue
    .line 729
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    .line 730
    iget v0, p0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mLastChosenPosition:I

    .line 732
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getInitialHighlight()I
    .locals 1

    .prologue
    .line 725
    iget v0, p0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mInitialHighlight:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 977
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 981
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 986
    if-nez p2, :cond_0

    .line 987
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/lge/internal/R$layout;->resolve_list_item_lg:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 989
    .local v2, "view":Landroid/view/View;
    const-string v3, "ResolverActivityEx"

    const-string v4, "View getView new ViewHolder ,view.setTag(holder); "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    new-instance v0, Lcom/android/internal/app/ResolverActivityEx$ViewHolder;

    invoke-direct {v0, v2}, Lcom/android/internal/app/ResolverActivityEx$ViewHolder;-><init>(Landroid/view/View;)V

    .line 992
    .local v0, "holder":Lcom/android/internal/app/ResolverActivityEx$ViewHolder;
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 995
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivityEx$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 996
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    # getter for: Lcom/android/internal/app/ResolverActivityEx;->mIconSize:I
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivityEx;->access$500(Lcom/android/internal/app/ResolverActivityEx;)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1000
    .end local v0    # "holder":Lcom/android/internal/app/ResolverActivityEx$ViewHolder;
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->bindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;)V

    .line 1001
    return-object v2

    .line 998
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    move-object v2, p2

    .restart local v2    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public handlePackagesChanged()V
    .locals 3

    .prologue
    .line 706
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->getCount()I

    move-result v1

    .line 707
    .local v1, "oldItemCount":I
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->rebuildList()V

    .line 708
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->notifyDataSetChanged()V

    .line 709
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->getCount()I

    move-result v0

    .line 710
    .local v0, "newItemCount":I
    if-nez v0, :cond_0

    .line 712
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivityEx;->finish()V

    .line 714
    :cond_0
    return-void
.end method

.method public hasFilteredItem()Z
    .locals 1

    .prologue
    .line 736
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 960
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;

    .line 962
    .local v1, "dri":Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    :goto_0
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 964
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x3000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 966
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 967
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 969
    return-object v2

    .line 962
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method public resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 956
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method
