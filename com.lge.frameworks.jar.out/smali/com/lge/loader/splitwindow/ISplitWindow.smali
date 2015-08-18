.class public interface abstract Lcom/lge/loader/splitwindow/ISplitWindow;
.super Ljava/lang/Object;
.source "ISplitWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;,
        Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;,
        Lcom/lge/loader/splitwindow/ISplitWindow$ILaunchedScreen;
    }
.end annotation


# virtual methods
.method public abstract getPolicyService()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;
.end method

.method public abstract launchService(Landroid/content/Context;)V
.end method
