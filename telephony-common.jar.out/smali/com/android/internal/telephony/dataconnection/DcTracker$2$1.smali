.class Lcom/android/internal/telephony/dataconnection/DcTracker$2$1;
.super Ljava/lang/Object;
.source "DcTracker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/dataconnection/DcTracker$2;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker$2;)V
    .locals 0

    .prologue
    .line 687
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2$1;->this$1:Lcom/android/internal/telephony/dataconnection/DcTracker$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 689
    return-void
.end method
