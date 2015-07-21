.class public Lcom/android/internal/telephony/UiccSmsControllerEx;
.super Lcom/android/internal/telephony/UiccSmsController;
.source "UiccSmsControllerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/UiccSmsControllerEx$1;,
        Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RIL_UiccSmsControllerEx"


# instance fields
.field private mExtendedBinderInternal:Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;


# direct methods
.method public constructor <init>([Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "phone"    # [Lcom/android/internal/telephony/Phone;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccSmsController;-><init>([Lcom/android/internal/telephony/Phone;)V

    .line 31
    new-instance v0, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;-><init>(Lcom/android/internal/telephony/UiccSmsControllerEx;Lcom/android/internal/telephony/UiccSmsControllerEx$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccSmsControllerEx;->mExtendedBinderInternal:Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;

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
    .line 496
    const/4 v1, 0x0

    .line 497
    .local v1, "ret":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "originatedBinderDescName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 500
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsControllerEx;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 502
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/UiccSmsController;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 507
    :goto_0
    return v1

    .line 505
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/UiccSmsControllerEx;->mExtendedBinderInternal:Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/UiccSmsControllerEx$ExtendedBinderInternal;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    goto :goto_0
.end method
