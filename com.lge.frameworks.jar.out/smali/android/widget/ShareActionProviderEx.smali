.class public Landroid/widget/ShareActionProviderEx;
.super Landroid/widget/ShareActionProvider;
.source "ShareActionProviderEx.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mShareHistoryFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/ShareActionProvider;-><init>(Landroid/content/Context;)V

    .line 30
    const-string v0, "share_history.xml"

    iput-object v0, p0, Landroid/widget/ShareActionProviderEx;->mShareHistoryFileName:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Landroid/widget/ShareActionProviderEx;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method


# virtual methods
.method public activitySelected(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v2, p0, Landroid/widget/ShareActionProviderEx;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/ShareActionProviderEx;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;

    move-result-object v0

    .line 67
    .local v0, "dataModel":Landroid/widget/ActivityChooserModel;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ActivityChooserModel;->getActivityCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object v2

    .line 72
    :goto_1
    return-object v2

    .line 67
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getSortedList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v2, "mList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p0, Landroid/widget/ShareActionProviderEx;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/widget/ShareActionProviderEx;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;

    move-result-object v0

    .line 52
    .local v0, "dataModel":Landroid/widget/ActivityChooserModel;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ActivityChooserModel;->getActivityCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :cond_0
    return-object v2
.end method
