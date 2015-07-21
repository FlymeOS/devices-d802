.class public final Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActivityResolveInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/widget/ActivityChooserModel$ActivityResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final resolveInfo:Landroid/content/pm/ResolveInfo;

.field final synthetic this$0:Landroid/widget/ActivityChooserModel;

.field public weight:F


# direct methods
.method public constructor <init>(Landroid/widget/ActivityChooserModel;Landroid/content/pm/ResolveInfo;)V
    .locals 0
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 900
    iput-object p1, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 901
    iput-object p2, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 902
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/widget/ActivityChooserModel$ActivityResolveInfo;)I
    .locals 4
    .param p1, "another"    # Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .prologue
    .line 947
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    .line 948
    .local v0, "collator":Ljava/text/Collator;
    iget v1, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iget v2, p1, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 950
    iget-object v1, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->this$0:Landroid/widget/ActivityChooserModel;

    # getter for: Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/widget/ActivityChooserModel;->access$300(Landroid/widget/ActivityChooserModel;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p1, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->this$0:Landroid/widget/ActivityChooserModel;

    # getter for: Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/ActivityChooserModel;->access$300(Landroid/widget/ActivityChooserModel;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 955
    :goto_0
    return v1

    :cond_0
    iget v1, p1, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iget v2, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 883
    check-cast p1, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->compareTo(Landroid/widget/ActivityChooserModel$ActivityResolveInfo;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 922
    if-ne p0, p1, :cond_1

    .line 942
    :cond_0
    :goto_0
    return v2

    .line 925
    :cond_1
    if-nez p1, :cond_2

    move v2, v3

    .line 926
    goto :goto_0

    .line 928
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_3

    move v2, v3

    .line 929
    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 931
    check-cast v1, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 934
    .local v1, "other":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    .line 935
    .local v0, "collator":Ljava/text/Collator;
    iget v4, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    iget v5, v1, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->this$0:Landroid/widget/ActivityChooserModel;

    # getter for: Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/widget/ActivityChooserModel;->access$300(Landroid/widget/ActivityChooserModel;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, v1, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->this$0:Landroid/widget/ActivityChooserModel;

    # getter for: Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/widget/ActivityChooserModel;->access$300(Landroid/widget/ActivityChooserModel;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eq v4, v5, :cond_0

    :cond_4
    move v2, v3

    .line 940
    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 908
    const/16 v0, 0x1f

    .line 909
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 910
    .local v1, "result":I
    iget v2, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 911
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->this$0:Landroid/widget/ActivityChooserModel;

    # getter for: Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/widget/ActivityChooserModel;->access$300(Landroid/widget/ActivityChooserModel;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    .line 916
    return v1

    .line 911
    :cond_0
    iget-object v2, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->this$0:Landroid/widget/ActivityChooserModel;

    # getter for: Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/widget/ActivityChooserModel;->access$300(Landroid/widget/ActivityChooserModel;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 961
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    const-string/jumbo v1, "resolveInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    const-string v1, "; label_name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->this$0:Landroid/widget/ActivityChooserModel;

    # getter for: Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/ActivityChooserModel;->access$300(Landroid/widget/ActivityChooserModel;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 966
    const-string v1, "; weight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/math/BigDecimal;

    iget v3, p0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    float-to-double v4, v3

    invoke-direct {v2, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 967
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
