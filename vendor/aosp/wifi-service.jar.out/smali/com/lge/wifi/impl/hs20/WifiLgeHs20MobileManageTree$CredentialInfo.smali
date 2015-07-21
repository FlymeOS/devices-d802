.class public Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;
.super Ljava/lang/Object;
.source "WifiLgeHs20MobileManageTree.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CredentialInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public aAAServerTrustRoot:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_AAAServerTrustRoot;",
            ">;"
        }
    .end annotation
.end field

.field public credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

.field public credentialPriority:Ljava/lang/String;

.field public extension:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Extension;

.field public homeSP:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;

.field public nodeName:Ljava/lang/String;

.field public policy:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;

.field public subscriptionParameters:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionParameters;

.field public subscriptionUpdate:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 356
    new-instance v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo$1;

    invoke-direct {v0}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo$1;-><init>()V

    sput-object v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    new-instance v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;

    invoke-direct {v0}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->policy:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;

    .line 296
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->aAAServerTrustRoot:Ljava/util/HashMap;

    .line 297
    new-instance v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;

    invoke-direct {v0}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->subscriptionUpdate:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;

    .line 298
    new-instance v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;

    invoke-direct {v0}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->homeSP:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;

    .line 299
    new-instance v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionParameters;

    invoke-direct {v0}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionParameters;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->subscriptionParameters:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionParameters;

    .line 300
    new-instance v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    invoke-direct {v0}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    .line 301
    new-instance v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Extension;

    invoke-direct {v0}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Extension;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->extension:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Extension;

    .line 315
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    new-instance v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;

    invoke-direct {v0}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->policy:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;

    .line 296
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->aAAServerTrustRoot:Ljava/util/HashMap;

    .line 297
    new-instance v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;

    invoke-direct {v0}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->subscriptionUpdate:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;

    .line 298
    new-instance v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;

    invoke-direct {v0}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->homeSP:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;

    .line 299
    new-instance v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionParameters;

    invoke-direct {v0}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionParameters;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->subscriptionParameters:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionParameters;

    .line 300
    new-instance v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    invoke-direct {v0}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    .line 301
    new-instance v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Extension;

    invoke-direct {v0}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Extension;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->extension:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Extension;

    .line 318
    invoke-virtual {p0, p1}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 319
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "node"    # Ljava/lang/String;

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    new-instance v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;

    invoke-direct {v0}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->policy:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;

    .line 296
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->aAAServerTrustRoot:Ljava/util/HashMap;

    .line 297
    new-instance v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;

    invoke-direct {v0}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->subscriptionUpdate:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;

    .line 298
    new-instance v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;

    invoke-direct {v0}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->homeSP:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;

    .line 299
    new-instance v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionParameters;

    invoke-direct {v0}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionParameters;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->subscriptionParameters:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionParameters;

    .line 300
    new-instance v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    invoke-direct {v0}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    .line 301
    new-instance v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Extension;

    invoke-direct {v0}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Extension;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->extension:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Extension;

    .line 304
    const-string v0, "WifiLgeHs20MobileManageTree"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/PerProviderSubscription/<node=<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iput-object p1, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->nodeName:Ljava/lang/String;

    .line 306
    return-void
.end method


# virtual methods
.method public createAAAServerTrustRoot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_AAAServerTrustRoot;
    .locals 2
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "certURL"    # Ljava/lang/String;
    .param p3, "fingerprint"    # Ljava/lang/String;

    .prologue
    .line 309
    new-instance v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_AAAServerTrustRoot;

    invoke-direct {v0, p1, p2, p3}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_AAAServerTrustRoot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .local v0, "obj":Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_AAAServerTrustRoot;
    iget-object v1, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->aAAServerTrustRoot:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 337
    if-nez p1, :cond_1

    .line 338
    const-string v0, "WifiLgeHs20MobileManageTree"

    const-string v1, "[PerProviderSubscription/<X+>] Error !!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->nodeName:Ljava/lang/String;

    .line 341
    const-class v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->policy:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credentialPriority:Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->aAAServerTrustRoot:Ljava/util/HashMap;

    const-class v1, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_AAAServerTrustRoot;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 344
    const-class v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->subscriptionUpdate:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;

    .line 345
    const-class v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->homeSP:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;

    .line 346
    const-class v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionParameters;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionParameters;

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->subscriptionParameters:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionParameters;

    .line 348
    const-class v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    iput-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    .line 349
    # getter for: Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;->DBG:Z
    invoke-static {}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    const-string v0, "WifiLgeHs20MobileManageTree"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/PerProviderSubscription/<X+><"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->nodeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string v0, "WifiLgeHs20MobileManageTree"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "                                            |<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->nodeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/credentialPriority["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credentialPriority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->nodeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->policy:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 328
    iget-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credentialPriority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->aAAServerTrustRoot:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 330
    iget-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->subscriptionUpdate:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 331
    iget-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->homeSP:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 332
    iget-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->subscriptionParameters:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionParameters;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 333
    iget-object v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 334
    return-void
.end method
