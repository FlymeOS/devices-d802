.class Lcom/android/internal/policy/impl/SplitWindowLauncher$2;
.super Ljava/lang/Object;
.source "SplitWindowLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SplitWindowLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SplitWindowLauncher;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SplitWindowLauncher;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/internal/policy/impl/SplitWindowLauncher$2;->this$0:Lcom/android/internal/policy/impl/SplitWindowLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 157
    iget-object v2, p0, Lcom/android/internal/policy/impl/SplitWindowLauncher$2;->this$0:Lcom/android/internal/policy/impl/SplitWindowLauncher;

    # getter for: Lcom/android/internal/policy/impl/SplitWindowLauncher;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SplitWindowLauncher;->access$000(Lcom/android/internal/policy/impl/SplitWindowLauncher;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/lge/internal/R$string;->EXCEPTIONAL_CASE_MINIVIEW:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/SplitWindowLauncher$2;->this$0:Lcom/android/internal/policy/impl/SplitWindowLauncher;

    # getter for: Lcom/android/internal/policy/impl/SplitWindowLauncher;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SplitWindowLauncher;->access$000(Lcom/android/internal/policy/impl/SplitWindowLauncher;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 160
    .local v0, "exceptionToast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 161
    return-void
.end method
