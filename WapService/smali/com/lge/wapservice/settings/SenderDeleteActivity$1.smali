.class Lcom/lge/wapservice/settings/SenderDeleteActivity$1;
.super Ljava/lang/Object;
.source "SenderDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wapservice/settings/SenderDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wapservice/settings/SenderDeleteActivity;


# direct methods
.method constructor <init>(Lcom/lge/wapservice/settings/SenderDeleteActivity;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lge/wapservice/settings/SenderDeleteActivity$1;->this$0:Lcom/lge/wapservice/settings/SenderDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/wapservice/settings/SenderDeleteActivity$1;->this$0:Lcom/lge/wapservice/settings/SenderDeleteActivity;

    invoke-virtual {v0}, Lcom/lge/wapservice/settings/SenderDeleteActivity;->deleteSenders()V

    .line 57
    return-void
.end method
