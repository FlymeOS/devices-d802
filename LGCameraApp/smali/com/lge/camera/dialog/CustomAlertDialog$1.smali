.class Lcom/lge/camera/dialog/CustomAlertDialog$1;
.super Ljava/lang/Object;
.source "CustomAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/dialog/CustomAlertDialog;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/dialog/CustomAlertDialog;


# direct methods
.method constructor <init>(Lcom/lge/camera/dialog/CustomAlertDialog;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/lge/camera/dialog/CustomAlertDialog$1;->this$0:Lcom/lge/camera/dialog/CustomAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog$1;->this$0:Lcom/lge/camera/dialog/CustomAlertDialog;

    invoke-virtual {v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->dismiss()V

    .line 74
    return-void
.end method
