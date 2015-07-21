.class final Lcom/lge/internal/telephony/LGSendingSMSOption$1;
.super Ljava/lang/Object;
.source "LGSendingSMSOption.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/internal/telephony/LGSendingSMSOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/lge/internal/telephony/LGSendingSMSOption;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/internal/telephony/LGSendingSMSOption;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "mCBNumber":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 50
    .local v2, "mPriority":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    .local v1, "mIsRoaming":I
    const-class v4, Landroid/app/PendingIntent;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 52
    .local v3, "mReadReceiptIntent":Landroid/app/PendingIntent;
    new-instance v4, Lcom/lge/internal/telephony/LGSendingSMSOption;

    invoke-direct {v4, v0, v2, v3, v1}, Lcom/lge/internal/telephony/LGSendingSMSOption;-><init>(Ljava/lang/String;ILandroid/app/PendingIntent;I)V

    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/lge/internal/telephony/LGSendingSMSOption$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/internal/telephony/LGSendingSMSOption;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/internal/telephony/LGSendingSMSOption;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 56
    new-array v0, p1, [Lcom/lge/internal/telephony/LGSendingSMSOption;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/lge/internal/telephony/LGSendingSMSOption$1;->newArray(I)[Lcom/lge/internal/telephony/LGSendingSMSOption;

    move-result-object v0

    return-object v0
.end method
