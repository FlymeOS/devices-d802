.class Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;
.super Landroid/widget/BaseAdapter;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ScrollingTabContainerView;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/ScrollingTabContainerView;Lcom/android/internal/widget/ScrollingTabContainerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/widget/ScrollingTabContainerView;
    .param p2, "x1"    # Lcom/android/internal/widget/ScrollingTabContainerView$1;

    .prologue
    .line 517
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    # getter for: Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$200(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 535
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .line 537
    .local v4, "view":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    sget-boolean v5, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMERALDUI:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 538
    invoke-virtual {v4}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getChildCount()I

    move-result v2

    .line 539
    .local v2, "spinnerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 540
    invoke-virtual {v4, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 541
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v5, v0, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    move-object v3, v0

    .line 542
    check-cast v3, Landroid/widget/TextView;

    .line 543
    .local v3, "textview":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1030051

    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 539
    .end local v3    # "textview":Landroid/widget/TextView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 548
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    .end local v2    # "spinnerCount":I
    :cond_1
    return-object v4
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    # getter for: Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$200(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 530
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 554
    if-nez p2, :cond_0

    .line 555
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar$Tab;

    const/4 v2, 0x1

    # invokes: Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    invoke-static {v1, v0, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$300(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object p2

    .line 559
    :goto_0
    return-object p2

    :cond_0
    move-object v0, p2

    .line 557
    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->bindTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_0
.end method
