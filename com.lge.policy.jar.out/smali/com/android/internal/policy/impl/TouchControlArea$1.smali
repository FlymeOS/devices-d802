.class Lcom/android/internal/policy/impl/TouchControlArea$1;
.super Ljava/lang/Object;
.source "TouchControlArea.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/TouchControlArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mToast:Landroid/widget/Toast;

.field final synthetic this$0:Lcom/android/internal/policy/impl/TouchControlArea;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/TouchControlArea;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/internal/policy/impl/TouchControlArea$1;->this$0:Lcom/android/internal/policy/impl/TouchControlArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 67
    # getter for: Lcom/android/internal/policy/impl/TouchControlArea;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/TouchControlArea;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$string;->activated_touchcontrol:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/TouchControlArea$1;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    .line 69
    # getter for: Lcom/android/internal/policy/impl/TouchControlArea;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/impl/TouchControlArea;->access$000()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/TouchControlArea$1;->mToast:Landroid/widget/Toast;

    .line 73
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/TouchControlArea$1;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 74
    return-void

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/TouchControlArea$1;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
