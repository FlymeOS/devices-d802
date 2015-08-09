.class Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "LGGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LGGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LGGlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/LGGlobalActions;)V
    .locals 0

    .prologue
    .line 810
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/LGGlobalActions;Lcom/android/internal/policy/impl/LGGlobalActions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/LGGlobalActions$1;

    .prologue
    .line 810
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 837
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    const-string v1, "LGMDMAirplaneModeUIAdpater"

    invoke-interface {v0, v2, v1}, Lcom/lge/cappuccino/IMdm;->checkDisabledGlobalAction(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    const-string v1, "LGMDMPowerOffUIAdpater"

    invoke-interface {v0, v2, v1}, Lcom/lge/cappuccino/IMdm;->checkPoweroffGlobalAction(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 844
    const/4 v0, 0x1

    .line 847
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 813
    const/4 v1, 0x0

    .line 815
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$1400(Lcom/android/internal/policy/impl/LGGlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 816
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$1400(Lcom/android/internal/policy/impl/LGGlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/LGGlobalActions$Action;

    .line 818
    .local v0, "action":Lcom/android/internal/policy/impl/LGGlobalActions$Action;
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mKeyguardShowing:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$1500(Lcom/android/internal/policy/impl/LGGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$Action;->showDuringKeyguard()Z

    move-result v3

    if-nez v3, :cond_1

    .line 815
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 821
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDeviceProvisioned:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$1600(Lcom/android/internal/policy/impl/LGGlobalActions;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$Action;->showBeforeProvisioning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 824
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 826
    .end local v0    # "action":Lcom/android/internal/policy/impl/LGGlobalActions$Action;
    :cond_3
    return v1
.end method

.method public getItem(I)Lcom/android/internal/policy/impl/LGGlobalActions$Action;
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 852
    const/4 v1, 0x0

    .line 853
    .local v1, "filteredPos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$1400(Lcom/android/internal/policy/impl/LGGlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 854
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$1400(Lcom/android/internal/policy/impl/LGGlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/LGGlobalActions$Action;

    .line 855
    .local v0, "action":Lcom/android/internal/policy/impl/LGGlobalActions$Action;
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mKeyguardShowing:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$1500(Lcom/android/internal/policy/impl/LGGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$Action;->showDuringKeyguard()Z

    move-result v3

    if-nez v3, :cond_1

    .line 853
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 858
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDeviceProvisioned:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$1600(Lcom/android/internal/policy/impl/LGGlobalActions;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$Action;->showBeforeProvisioning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 861
    :cond_2
    if-ne v1, p1, :cond_3

    .line 862
    return-object v0

    .line 864
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 867
    .end local v0    # "action":Lcom/android/internal/policy/impl/LGGlobalActions$Action;
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " out of range of showable actions"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", filtered count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", keyguardshowing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mKeyguardShowing:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$1500(Lcom/android/internal/policy/impl/LGGlobalActions;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", provisioned="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/LGGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mDeviceProvisioned:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$1600(Lcom/android/internal/policy/impl/LGGlobalActions;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 810
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/LGGlobalActions$Action;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 876
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 880
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/LGGlobalActions$Action;

    move-result-object v0

    .line 881
    .local v0, "action":Lcom/android/internal/policy/impl/LGGlobalActions$Action;
    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$300()Landroid/content/Context;

    move-result-object v1

    # getter for: Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/LGGlobalActions;->access$300()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/android/internal/policy/impl/LGGlobalActions$Action;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 831
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/LGGlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$Action;->isEnabled()Z

    move-result v0

    return v0
.end method
