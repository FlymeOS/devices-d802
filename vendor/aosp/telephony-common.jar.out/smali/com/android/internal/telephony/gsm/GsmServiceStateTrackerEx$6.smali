.class Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx$6;
.super Ljava/lang/Object;
.source "GsmServiceStateTrackerEx.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 1582
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx$6;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTrackerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1585
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 1587
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
