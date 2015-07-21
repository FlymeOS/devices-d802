.class Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx$5;
.super Ljava/lang/Object;
.source "GsmServiceStateTrackerEx.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;)V
    .locals 0

    .prologue
    .line 1571
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx$5;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1573
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1578
    return-void
.end method
