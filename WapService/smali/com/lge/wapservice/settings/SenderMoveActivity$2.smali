.class Lcom/lge/wapservice/settings/SenderMoveActivity$2;
.super Ljava/lang/Object;
.source "SenderMoveActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wapservice/settings/SenderMoveActivity;->confirmMove()V
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
    .line 209
    iput-object p1, p0, Lcom/lge/wapservice/settings/SenderMoveActivity$2;->this$0:Lcom/lge/wapservice/settings/SenderMoveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 211
    iget-object v0, p0, Lcom/lge/wapservice/settings/SenderMoveActivity$2;->this$0:Lcom/lge/wapservice/settings/SenderMoveActivity;

    invoke-virtual {v0}, Lcom/lge/wapservice/settings/SenderMoveActivity;->moveSenders()V

    .line 212
    return-void
.end method
