.class public Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;
.super Ljava/lang/Object;
.source "WifiSapSecurityTypeP.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAuthModeValue:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

.field private final mEncModeValue:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

.field private final mSecModeValue:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP$1;

    invoke-direct {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP$1;-><init>()V

    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;)V
    .locals 0
    .param p1, "authMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;
    .param p2, "secMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;
    .param p3, "encMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;->mAuthModeValue:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 38
    iput-object p2, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;->mSecModeValue:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 39
    iput-object p3, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;->mEncModeValue:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthMode()Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;->mAuthModeValue:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    return-object v0
.end method

.method public getEncMode()Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;->mEncModeValue:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    return-object v0
.end method

.method public getSecMode()Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;->mSecModeValue:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;->mAuthModeValue:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;->mSecModeValue:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;->mEncModeValue:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;->mAuthModeValue:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;->mSecModeValue:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;->mEncModeValue:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method
