.class public Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx;
.super Lcom/android/server/display/DisplayManagerService$BinderService;
.source "DisplayManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BinderServiceEx"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;
    }
.end annotation


# instance fields
.field private mExtendedBinder:Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;

.field final synthetic this$0:Lcom/android/server/display/DisplayManagerServiceEx;


# direct methods
.method protected constructor <init>(Lcom/android/server/display/DisplayManagerServiceEx;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx;->this$0:Lcom/android/server/display/DisplayManagerServiceEx;

    .line 30
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$BinderService;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    .line 27
    iput-object v1, p0, Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx;->mExtendedBinder:Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;

    .line 31
    new-instance v0, Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;-><init>(Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx;Lcom/android/server/display/DisplayManagerServiceEx$1;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx;->mExtendedBinder:Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;

    .line 32
    return-void
.end method


# virtual methods
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
    .line 67
    const/4 v1, 0x0

    .line 69
    .local v1, "ret":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "originatedBinderDescName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx;->mExtendedBinder:Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx;->mExtendedBinder:Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerServiceEx$BinderServiceEx$ExtendedBinderInternal;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 78
    :goto_0
    return v1

    .line 76
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService$BinderService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    goto :goto_0
.end method
