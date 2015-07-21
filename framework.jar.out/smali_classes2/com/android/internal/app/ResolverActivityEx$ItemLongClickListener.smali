.class Lcom/android/internal/app/ResolverActivityEx$ItemLongClickListener;
.super Ljava/lang/Object;
.source "ResolverActivityEx.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivityEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivityEx;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivityEx;)V
    .locals 0

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityEx$ItemLongClickListener;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 1058
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityEx$ItemLongClickListener;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    # getter for: Lcom/android/internal/app/ResolverActivityEx;->mAdapter:Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivityEx;->access$000(Lcom/android/internal/app/ResolverActivityEx;)Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1059
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityEx$ItemLongClickListener;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ResolverActivityEx;->showAppDetails(Landroid/content/pm/ResolveInfo;)V

    .line 1060
    const/4 v1, 0x1

    return v1
.end method
