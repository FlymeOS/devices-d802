.class Lcom/lge/wapservice/settings/SenderListActivity$1;
.super Ljava/lang/Object;
.source "SenderListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wapservice/settings/SenderListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wapservice/settings/SenderListActivity;


# direct methods
.method constructor <init>(Lcom/lge/wapservice/settings/SenderListActivity;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/lge/wapservice/settings/SenderListActivity$1;->this$0:Lcom/lge/wapservice/settings/SenderListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lge/wapservice/settings/SenderListActivity$1;->this$0:Lcom/lge/wapservice/settings/SenderListActivity;

    invoke-virtual {v0}, Lcom/lge/wapservice/settings/SenderListActivity;->addNewSender()V

    .line 83
    return-void
.end method
