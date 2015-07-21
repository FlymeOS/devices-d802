.class public Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;
.super Lcom/android/internal/telephony/PhoneSubInfoController;
.source "PhoneSubInfoControllerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/internal/telephony/PhoneSubInfoControllerEx$1;,
        Lcom/lge/internal/telephony/PhoneSubInfoControllerEx$ExtendedBinderInternal;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneSubInfoControllerEx"


# instance fields
.field private mBinderInternal:Lcom/lge/internal/telephony/PhoneSubInfoControllerEx$ExtendedBinderInternal;


# direct methods
.method public constructor <init>([Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "phone"    # [Lcom/android/internal/telephony/Phone;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;-><init>([Lcom/android/internal/telephony/Phone;)V

    .line 23
    new-instance v0, Lcom/lge/internal/telephony/PhoneSubInfoControllerEx$ExtendedBinderInternal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/internal/telephony/PhoneSubInfoControllerEx$ExtendedBinderInternal;-><init>(Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;Lcom/lge/internal/telephony/PhoneSubInfoControllerEx$1;)V

    iput-object v0, p0, Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;->mBinderInternal:Lcom/lge/internal/telephony/PhoneSubInfoControllerEx$ExtendedBinderInternal;

    .line 24
    return-void
.end method

.method static synthetic access$100(Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;)J
    .locals 2
    .param p0, "x0"    # Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;->getDefaultSubId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;J)Lcom/android/internal/telephony/PhoneSubInfoProxy;
    .locals 1
    .param p0, "x0"    # Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;
    .param p1, "x1"    # J

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;)J
    .locals 2
    .param p0, "x0"    # Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;->getDefaultSubId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;J)Lcom/android/internal/telephony/PhoneSubInfoProxy;
    .locals 1
    .param p0, "x0"    # Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;
    .param p1, "x1"    # J

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;)J
    .locals 2
    .param p0, "x0"    # Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;->getDefaultSubId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;J)Lcom/android/internal/telephony/PhoneSubInfoProxy;
    .locals 1
    .param p0, "x0"    # Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;
    .param p1, "x1"    # J

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;J)Lcom/android/internal/telephony/PhoneSubInfoProxy;
    .locals 1
    .param p0, "x0"    # Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;
    .param p1, "x1"    # J

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;)J
    .locals 2
    .param p0, "x0"    # Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;->getDefaultSubId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;J)Lcom/android/internal/telephony/PhoneSubInfoProxy;
    .locals 1
    .param p0, "x0"    # Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;
    .param p1, "x1"    # J

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;)J
    .locals 2
    .param p0, "x0"    # Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;->getDefaultSubId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;J)Lcom/android/internal/telephony/PhoneSubInfoProxy;
    .locals 1
    .param p0, "x0"    # Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;
    .param p1, "x1"    # J

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;)J
    .locals 2
    .param p0, "x0"    # Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;->getDefaultSubId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;J)Lcom/android/internal/telephony/PhoneSubInfoProxy;
    .locals 1
    .param p0, "x0"    # Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;
    .param p1, "x1"    # J

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;->getPhoneSubInfoProxy(J)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;)J
    .locals 2
    .param p0, "x0"    # Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;->getDefaultSubId()J

    move-result-wide v0

    return-wide v0
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
    .line 153
    const/4 v1, 0x0

    .line 155
    .local v1, "ret":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "originatedBinderDescName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 158
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;->mBinderInternal:Lcom/lge/internal/telephony/PhoneSubInfoControllerEx$ExtendedBinderInternal;

    invoke-virtual {v2}, Lcom/lge/internal/telephony/PhoneSubInfoControllerEx$ExtendedBinderInternal;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/lge/internal/telephony/PhoneSubInfoControllerEx;->mBinderInternal:Lcom/lge/internal/telephony/PhoneSubInfoControllerEx$ExtendedBinderInternal;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/lge/internal/telephony/PhoneSubInfoControllerEx$ExtendedBinderInternal;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 164
    :goto_0
    return v1

    .line 162
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/PhoneSubInfoController;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    goto :goto_0
.end method
