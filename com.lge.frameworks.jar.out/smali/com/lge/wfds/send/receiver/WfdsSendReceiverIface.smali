.class public interface abstract Lcom/lge/wfds/send/receiver/WfdsSendReceiverIface;
.super Ljava/lang/Object;
.source "WfdsSendReceiverIface.java"


# virtual methods
.method public abstract advertiseService(ZLjava/lang/String;)I
.end method

.method public abstract cancelCurrentFileRx()V
.end method

.method public abstract confirmReceive(Z)V
.end method

.method public abstract getLocalUUID()Ljava/lang/String;
.end method

.method public abstract getTotalFileSize()J
.end method

.method public abstract initialize(Landroid/content/Context;Lcom/lge/wfds/send/receiver/IReceiverEventListener;Z)V
.end method

.method public abstract isBinding()Z
.end method

.method public abstract isServiceAvailable()Z
.end method

.method public abstract serviceUnbind(Z)I
.end method

.method public abstract setAutoAccept(Z)V
.end method

.method public abstract setFileDir(Ljava/lang/String;)V
.end method

.method public abstract setTimeOut(I)V
.end method
