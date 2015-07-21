.class public Lcom/android/internal/telephony/dataconnection/DataProfile;
.super Ljava/lang/Object;
.source "DataProfile.java"


# static fields
.field public static final TYPE_3GPP:I = 0x1

.field public static final TYPE_3GPP2:I = 0x2

.field public static final TYPE_COMMON:I


# instance fields
.field public final apn:Ljava/lang/String;

.field public final authType:I

.field public enabled:Z

.field public inactivityTimer:I

.field public final maxConns:I

.field public final maxConnsTime:I

.field public final password:Ljava/lang/String;

.field public profileId:I

.field public final protocol:Ljava/lang/String;

.field public type:I

.field public final user:Ljava/lang/String;

.field public final waitTime:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIZ)V
    .locals 1
    .param p1, "profileId"    # I
    .param p2, "apn"    # Ljava/lang/String;
    .param p3, "protocol"    # Ljava/lang/String;
    .param p4, "authType"    # I
    .param p5, "user"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;
    .param p7, "type"    # I
    .param p8, "maxConnsTime"    # I
    .param p9, "maxConns"    # I
    .param p10, "waitTime"    # I
    .param p11, "enabled"    # Z

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->profileId:I

    .line 71
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->protocol:Ljava/lang/String;

    .line 73
    iput p4, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->authType:I

    .line 74
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->user:Ljava/lang/String;

    .line 75
    iput-object p6, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->password:Ljava/lang/String;

    .line 76
    iput p7, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->type:I

    .line 77
    iput p8, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxConnsTime:I

    .line 78
    iput p9, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxConns:I

    .line 79
    iput p10, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->waitTime:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->inactivityTimer:I

    .line 83
    iput-boolean p11, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->enabled:Z

    .line 84
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/dataconnection/ApnSetting;Z)V
    .locals 13
    .param p1, "apn"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .param p2, "isRoaming"    # Z

    .prologue
    const/4 v12, 0x0

    .line 87
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    if-eqz p2, :cond_0

    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    :goto_0
    iget v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    iget v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    if-nez v0, :cond_1

    move v7, v12

    :goto_1
    iget v8, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    iget v9, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    iget v10, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    iget-boolean v11, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/telephony/dataconnection/DataProfile;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIZ)V

    .line 92
    iput v12, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->inactivityTimer:I

    .line 94
    return-void

    .line 87
    :cond_0
    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    invoke-static {v0}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v7, 0x2

    goto :goto_1

    :cond_2
    const/4 v7, 0x1

    goto :goto_1
.end method

.method public static toParcel(Landroid/os/Parcel;[Lcom/android/internal/telephony/dataconnection/DataProfile;)Landroid/os/Parcel;
    .locals 2
    .param p0, "pc"    # Landroid/os/Parcel;
    .param p1, "dps"    # [Lcom/android/internal/telephony/dataconnection/DataProfile;

    .prologue
    .line 98
    if-nez p0, :cond_1

    .line 99
    const/4 p0, 0x0

    .line 116
    .end local p0    # "pc":Landroid/os/Parcel;
    :cond_0
    return-object p0

    .line 102
    .restart local p0    # "pc":Landroid/os/Parcel;
    :cond_1
    array-length v1, p1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 104
    aget-object v1, p1, v0

    iget v1, v1, Lcom/android/internal/telephony/dataconnection/DataProfile;->profileId:I

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DataProfile;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    aget-object v1, p1, v0

    iget v1, v1, Lcom/android/internal/telephony/dataconnection/DataProfile;->authType:I

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DataProfile;->user:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DataProfile;->password:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    aget-object v1, p1, v0

    iget v1, v1, Lcom/android/internal/telephony/dataconnection/DataProfile;->type:I

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    aget-object v1, p1, v0

    iget v1, v1, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxConnsTime:I

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    aget-object v1, p1, v0

    iget v1, v1, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxConns:I

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    aget-object v1, p1, v0

    iget v1, v1, Lcom/android/internal/telephony/dataconnection/DataProfile;->waitTime:I

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    aget-object v1, p1, v0

    iget-boolean v1, v1, Lcom/android/internal/telephony/dataconnection/DataProfile;->enabled:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 128
    instance-of v0, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 129
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataProfile;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataProfile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->profileId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->authType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxConnsTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxConns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->waitTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
