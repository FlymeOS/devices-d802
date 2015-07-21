.class Lcom/lge/uicc/framework/IccHandlerCN$1;
.super Ljava/lang/Object;
.source "IccHandlerCN.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/uicc/framework/IccHandlerCN;->make_popup_CT()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/uicc/framework/IccHandlerCN;


# direct methods
.method constructor <init>(Lcom/lge/uicc/framework/IccHandlerCN;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/lge/uicc/framework/IccHandlerCN$1;->this$0:Lcom/lge/uicc/framework/IccHandlerCN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 125
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 126
    return-void
.end method
