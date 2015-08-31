.class Lcom/lge/wapservice/settings/SenderListActivity$2;
.super Ljava/lang/Object;
.source "SenderListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wapservice/settings/SenderListActivity;->confirmMove(Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wapservice/settings/SenderListActivity;

.field final synthetic val$info:Landroid/view/ContextMenu$ContextMenuInfo;


# direct methods
.method constructor <init>(Lcom/lge/wapservice/settings/SenderListActivity;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/lge/wapservice/settings/SenderListActivity$2;->this$0:Lcom/lge/wapservice/settings/SenderListActivity;

    iput-object p2, p0, Lcom/lge/wapservice/settings/SenderListActivity$2;->val$info:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lcom/lge/wapservice/settings/SenderListActivity$2;->this$0:Lcom/lge/wapservice/settings/SenderListActivity;

    iget-object v1, p0, Lcom/lge/wapservice/settings/SenderListActivity$2;->val$info:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-virtual {v0, v1}, Lcom/lge/wapservice/settings/SenderListActivity;->moveList(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 237
    return-void
.end method
