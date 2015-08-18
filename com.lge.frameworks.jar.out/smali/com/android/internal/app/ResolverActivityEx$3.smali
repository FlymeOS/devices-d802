.class Lcom/android/internal/app/ResolverActivityEx$3;
.super Ljava/lang/Object;
.source "ResolverActivityEx.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivityEx;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivityEx;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivityEx;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityEx$3;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityEx$3;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    # getter for: Lcom/android/internal/app/ResolverActivityEx;->mAlwaysUse:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivityEx;->access$100(Lcom/android/internal/app/ResolverActivityEx;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityEx$3;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    # getter for: Lcom/android/internal/app/ResolverActivityEx;->mAlwaysUse:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivityEx;->access$100(Lcom/android/internal/app/ResolverActivityEx;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityEx$3;->this$0:Lcom/android/internal/app/ResolverActivityEx;

    # getter for: Lcom/android/internal/app/ResolverActivityEx;->mAlwaysUse:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivityEx;->access$100(Lcom/android/internal/app/ResolverActivityEx;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 340
    :cond_0
    return-void

    .line 338
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
