.class public interface abstract Landroid/view/ViewRootImpl$IObjectFinderEngineProxy;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IObjectFinderEngineProxy"
.end annotation


# static fields
.field public static final CMD:Ljava/lang/String; = "OFE_CMD"

.field public static final INVALID:Ljava/lang/String; = "INVALID"


# virtual methods
.method public abstract execute(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Ljava/io/OutputStream;)Z
.end method

.method public abstract sendString(Ljava/lang/String;Ljava/io/OutputStream;)V
.end method
