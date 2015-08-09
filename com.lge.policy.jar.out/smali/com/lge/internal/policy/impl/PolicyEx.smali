.class public Lcom/lge/internal/policy/impl/PolicyEx;
.super Lcom/android/internal/policy/impl/Policy;
.source "PolicyEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Policy;-><init>()V

    return-void
.end method


# virtual methods
.method public makeNewWindow(Landroid/content/Context;)Landroid/view/Window;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowEx;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowEx;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeNewWindowManager()Landroid/view/WindowManagerPolicy;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;-><init>()V

    return-object v0
.end method
