.class Lcom/lge/wifi/impl/WifiServerServiceExt$16;
.super Ljava/lang/Object;
.source "WifiServerServiceExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wifi/impl/WifiServerServiceExt;->sendToastMessageId(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/WifiServerServiceExt;I)V
    .locals 0

    .prologue
    .line 8186
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$16;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    iput p2, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$16;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 8189
    iget-object v0, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$16;->this$0:Lcom/lge/wifi/impl/WifiServerServiceExt;

    # getter for: Lcom/lge/wifi/impl/WifiServerServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/wifi/impl/WifiServerServiceExt;->access$400(Lcom/lge/wifi/impl/WifiServerServiceExt;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/lge/wifi/impl/WifiServerServiceExt$16;->val$id:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 8190
    return-void
.end method
