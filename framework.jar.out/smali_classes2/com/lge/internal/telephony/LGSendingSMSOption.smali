.class public Lcom/lge/internal/telephony/LGSendingSMSOption;
.super Ljava/lang/Object;
.source "LGSendingSMSOption.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/internal/telephony/LGSendingSMSOption;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCBNumber:Ljava/lang/String;

.field public mIsRoaming:I

.field public mPriority:I

.field public mReadReceiptIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/lge/internal/telephony/LGSendingSMSOption$1;

    invoke-direct {v0}, Lcom/lge/internal/telephony/LGSendingSMSOption$1;-><init>()V

    sput-object v0, Lcom/lge/internal/telephony/LGSendingSMSOption;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v1, p0, Lcom/lge/internal/telephony/LGSendingSMSOption;->mCBNumber:Ljava/lang/String;

    .line 10
    iput v0, p0, Lcom/lge/internal/telephony/LGSendingSMSOption;->mPriority:I

    .line 11
    iput v0, p0, Lcom/lge/internal/telephony/LGSendingSMSOption;->mIsRoaming:I

    .line 12
    iput-object v1, p0, Lcom/lge/internal/telephony/LGSendingSMSOption;->mReadReceiptIntent:Landroid/app/PendingIntent;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/app/PendingIntent;I)V
    .locals 2
    .param p1, "CBNumber"    # Ljava/lang/String;
    .param p2, "priority"    # I
    .param p3, "ReadReceipt"    # Landroid/app/PendingIntent;
    .param p4, "isRoaming"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v1, p0, Lcom/lge/internal/telephony/LGSendingSMSOption;->mCBNumber:Ljava/lang/String;

    .line 10
    iput v0, p0, Lcom/lge/internal/telephony/LGSendingSMSOption;->mPriority:I

    .line 11
    iput v0, p0, Lcom/lge/internal/telephony/LGSendingSMSOption;->mIsRoaming:I

    .line 12
    iput-object v1, p0, Lcom/lge/internal/telephony/LGSendingSMSOption;->mReadReceiptIntent:Landroid/app/PendingIntent;

    .line 18
    iput p4, p0, Lcom/lge/internal/telephony/LGSendingSMSOption;->mIsRoaming:I

    .line 19
    iput-object p1, p0, Lcom/lge/internal/telephony/LGSendingSMSOption;->mCBNumber:Ljava/lang/String;

    .line 20
    iput p2, p0, Lcom/lge/internal/telephony/LGSendingSMSOption;->mPriority:I

    .line 21
    iput-object p3, p0, Lcom/lge/internal/telephony/LGSendingSMSOption;->mReadReceiptIntent:Landroid/app/PendingIntent;

    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCBNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/internal/telephony/LGSendingSMSOption;->mCBNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPriority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/internal/telephony/LGSendingSMSOption;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mReadReceiptIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/internal/telephony/LGSendingSMSOption;->mReadReceiptIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/lge/internal/telephony/LGSendingSMSOption;->mIsRoaming:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, " mIsRoaming is TRUE "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, " mIsRoaming is FALSE"

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/internal/telephony/LGSendingSMSOption;->mCBNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget v0, p0, Lcom/lge/internal/telephony/LGSendingSMSOption;->mPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v0, p0, Lcom/lge/internal/telephony/LGSendingSMSOption;->mIsRoaming:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-object v0, p0, Lcom/lge/internal/telephony/LGSendingSMSOption;->mReadReceiptIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 43
    return-void
.end method
