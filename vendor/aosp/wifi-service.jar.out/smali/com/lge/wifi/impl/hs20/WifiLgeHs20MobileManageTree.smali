.class public Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;
.super Ljava/lang/Object;
.source "WifiLgeHs20MobileManageTree.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCred_SIM;,
        Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCred_DigitalCertificate;,
        Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCredUserPass_EAPMethod;,
        Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;,
        Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_TrustRoot;,
        Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxSubParam_UsageLimits;,
        Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionParameters;,
        Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxHomeSp_OtherHomePartners;,
        Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxHomeSp_HomeOIList;,
        Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxHomeSp_NetworkID;,
        Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Extension;,
        Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;,
        Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;,
        Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;,
        Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_AAAServerTrustRoot;,
        Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_RequiredProtoPortTuple;,
        Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_SPExclusionList;,
        Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;,
        Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_MinBackhaulThresholdNetwork;,
        Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PreferredRoamingPartnerList;,
        Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;,
        Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;,
        Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdn_PPS;,
        Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiSp_Fqdn;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;",
            ">;"
        }
    .end annotation
.end field

.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiLgeHs20MobileManageTree"

.field private static mLogMessages:Z


# instance fields
.field private mVerboseLoggingLevel:I

.field public spFqdn:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiSp_Fqdn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 135
    sput-boolean v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;->DBG:Z

    .line 136
    sput-boolean v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;->mLogMessages:Z

    .line 163
    new-instance v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$1;

    invoke-direct {v0}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$1;-><init>()V

    sput-object v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;->mVerboseLoggingLevel:I

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;->spFqdn:Ljava/util/HashMap;

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;->mVerboseLoggingLevel:I

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;->spFqdn:Ljava/util/HashMap;

    .line 144
    invoke-virtual {p0, p1}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;->readFromParcel(Landroid/os/Parcel;)V

    .line 145
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 132
    sget-boolean v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;->DBG:Z

    return v0
.end method


# virtual methods
.method public createSpFqdn(Ljava/lang/String;)Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiSp_Fqdn;
    .locals 2
    .param p1, "node"    # Ljava/lang/String;

    .prologue
    .line 174
    new-instance v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiSp_Fqdn;

    invoke-direct {v0, p1}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiSp_Fqdn;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, "obj":Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiSp_Fqdn;
    iget-object v1, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;->spFqdn:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 157
    const-string v0, "WifiLgeHs20MobileManageTree"

    const-string v1, "Error !!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 153
    return-void
.end method
