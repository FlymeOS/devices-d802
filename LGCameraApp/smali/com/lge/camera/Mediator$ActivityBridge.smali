.class public interface abstract Lcom/lge/camera/Mediator$ActivityBridge;
.super Ljava/lang/Object;
.source "Mediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/Mediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActivityBridge"
.end annotation


# virtual methods
.method public abstract getActivity()Lcom/lge/camera/CameraActivity;
.end method

.method public abstract getPostviewRename()Ljava/lang/String;
.end method

.method public abstract getPostviewRequestCode()I
.end method

.method public abstract getPostviewUri()Landroid/net/Uri;
.end method

.method public abstract setPostviewRequestInitCode()V
.end method
