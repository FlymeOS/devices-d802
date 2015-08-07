.class public Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx;
.super Lcom/android/server/power/PowerManagerService$BinderService;
.source "PowerManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BinderServiceEx"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;
    }
.end annotation


# instance fields
.field private mExtendedBinder:Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;

.field final synthetic this$0:Lcom/android/server/power/PowerManagerServiceEx;


# direct methods
.method protected constructor <init>(Lcom/android/server/power/PowerManagerServiceEx;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 174
    iput-object p1, p0, Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx;->this$0:Lcom/android/server/power/PowerManagerServiceEx;

    .line 175
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$BinderService;-><init>(Lcom/android/server/power/PowerManagerService;)V

    .line 173
    iput-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx;->mExtendedBinder:Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;

    .line 176
    new-instance v0, Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;-><init>(Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx;Lcom/android/server/power/PowerManagerServiceEx$1;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx;->mExtendedBinder:Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;

    .line 177
    return-void
.end method


# virtual methods
.method public goToSleep(JII)V
    .locals 3
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I

    .prologue
    .line 272
    # getter for: Lcom/android/server/power/PowerManagerServiceEx;->NOTUSER_DEBUG:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerServiceEx;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    const-string v0, "PowerManagerServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goToSleep by PID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService$BinderService;->goToSleep(JII)V

    .line 276
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 247
    const/4 v1, 0x0

    .line 249
    .local v1, "ret":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "originatedBinderDescName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 253
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx;->mExtendedBinder:Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx;->mExtendedBinder:Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 258
    :goto_0
    return v1

    .line 256
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService$BinderService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    goto :goto_0
.end method

.method public wakeUp(J)V
    .locals 3
    .param p1, "eventTime"    # J

    .prologue
    .line 264
    # getter for: Lcom/android/server/power/PowerManagerServiceEx;->NOTUSER_DEBUG:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerServiceEx;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    const-string v0, "PowerManagerServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wakeUp by PID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/power/PowerManagerService$BinderService;->wakeUp(J)V

    .line 268
    return-void
.end method
