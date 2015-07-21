.class Lcom/android/internal/app/ResolverActivityEx$LoadIconTask;
.super Landroid/os/AsyncTask;
.source "ResolverActivityEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivityEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;",
        "Ljava/lang/Void;",
        "Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivityEx;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivityEx;)V
    .locals 0

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityEx$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;)Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;
    .locals 3
    .param p1, "params"    # [Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;

    .prologue
    .line 1068
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 1069
    .local v0, "info":Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;
    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 1070
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityEx$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ResolverActivityEx;->loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 1072
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1065
    check-cast p1, [Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivityEx$LoadIconTask;->doInBackground([Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;)Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityEx$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    # getter for: Lcom/android/internal/app/ResolverActivityEx;->mAdapter:Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivityEx;->access$000(Lcom/android/internal/app/ResolverActivityEx;)Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivityEx$ResolveListAdapter;->notifyDataSetChanged()V

    .line 1078
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1065
    check-cast p1, Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivityEx$LoadIconTask;->onPostExecute(Lcom/android/internal/app/ResolverActivityEx$DisplayResolveInfo;)V

    return-void
.end method
