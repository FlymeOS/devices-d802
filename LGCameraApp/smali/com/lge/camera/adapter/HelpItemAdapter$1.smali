.class Lcom/lge/camera/adapter/HelpItemAdapter$1;
.super Ljava/lang/Object;
.source "HelpItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/adapter/HelpItemAdapter;->setHelpItemLayout(ILandroid/content/Context;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/adapter/HelpItemAdapter;

.field final synthetic val$popupID:I


# direct methods
.method constructor <init>(Lcom/lge/camera/adapter/HelpItemAdapter;I)V
    .locals 0

    .prologue
    .line 610
    iput-object p1, p0, Lcom/lge/camera/adapter/HelpItemAdapter$1;->this$0:Lcom/lge/camera/adapter/HelpItemAdapter;

    iput p2, p0, Lcom/lge/camera/adapter/HelpItemAdapter$1;->val$popupID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter$1;->this$0:Lcom/lge/camera/adapter/HelpItemAdapter;

    iget v1, p0, Lcom/lge/camera/adapter/HelpItemAdapter$1;->val$popupID:I

    invoke-virtual {v0, v1}, Lcom/lge/camera/adapter/HelpItemAdapter;->createDialog(I)V

    .line 614
    return-void
.end method
