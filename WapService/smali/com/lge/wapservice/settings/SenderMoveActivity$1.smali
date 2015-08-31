.class Lcom/lge/wapservice/settings/SenderMoveActivity$1;
.super Ljava/lang/Object;
.source "SenderMoveActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wapservice/settings/SenderMoveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wapservice/settings/SenderMoveActivity;


# direct methods
.method constructor <init>(Lcom/lge/wapservice/settings/SenderMoveActivity;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/lge/wapservice/settings/SenderMoveActivity$1;->this$0:Lcom/lge/wapservice/settings/SenderMoveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/wapservice/settings/SenderMoveActivity$1;->this$0:Lcom/lge/wapservice/settings/SenderMoveActivity;

    invoke-virtual {v0}, Lcom/lge/wapservice/settings/SenderMoveActivity;->confirmMove()V

    .line 69
    return-void
.end method
