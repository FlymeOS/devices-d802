.class public Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTreeTesting;
.super Ljava/lang/Object;
.source "WifiLgeHs20MobileManageTreeTesting.java"


# static fields
.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiLgeHs20MobileManageTreeTesting"

.field private static mLogMessages:Z


# instance fields
.field private mVerboseLoggingLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTreeTesting;->DBG:Z

    .line 113
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTreeTesting;->mLogMessages:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTreeTesting;->mVerboseLoggingLevel:I

    .line 118
    return-void
.end method


# virtual methods
.method public PpsMoTreeTestCase1(ILcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;)V
    .locals 8
    .param p1, "updateIdentifier"    # I
    .param p2, "tree"    # Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;

    .prologue
    .line 124
    const-string v4, "wi-fi.org"

    invoke-virtual {p2, v4}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;->createSpFqdn(Ljava/lang/String;)Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiSp_Fqdn;

    move-result-object v1

    .line 125
    .local v1, "currentSpfqdn":Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiSp_Fqdn;
    const/4 v0, 0x0

    .line 126
    .local v0, "aaa":Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_AAAServerTrustRoot;
    const/4 v3, 0x0

    .line 127
    .local v3, "spexclusion":Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_SPExclusionList;
    iget-object v4, v1, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiSp_Fqdn;->perProviderSubscription:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdn_PPS;

    const-string v5, "Cred01"

    invoke-virtual {v4, v5}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdn_PPS;->createCredentialInfo(Ljava/lang/String;)Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;

    move-result-object v2

    .line 129
    .local v2, "info":Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;
    iget-object v4, v1, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiSp_Fqdn;->perProviderSubscription:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdn_PPS;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdn_PPS;->updateIdentifier:Ljava/lang/String;

    .line 130
    const-string v4, "1"

    iput-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credentialPriority:Ljava/lang/String;

    .line 133
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->subscriptionUpdate:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;

    const-string v5, "0xFFFFFFFF"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;->updateInterval:Ljava/lang/String;

    .line 134
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->subscriptionUpdate:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;

    const-string v5, "SPP-ClientInitiated"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;->updateMethod:Ljava/lang/String;

    .line 135
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->subscriptionUpdate:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;

    const-string v5, "HomeSp"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;->restriction:Ljava/lang/String;

    .line 136
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->subscriptionUpdate:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;

    const-string v5, "https://subscription-server.r2-testbed.wi-fi.org"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;->uri:Ljava/lang/String;

    .line 138
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->homeSP:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;

    const-string v5, "Wi-Fi Alliance"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;->friendlyName:Ljava/lang/String;

    .line 139
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->homeSP:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;

    const-string v5, "http://www.wi-fi.org/sites/default/files/lge.png"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;->iconURL:Ljava/lang/String;

    .line 140
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->homeSP:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;

    const-string v5, "wi-fi.org"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;->fqdn:Ljava/lang/String;

    .line 141
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->homeSP:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;

    const-string v5, "HOI01"

    const-string v6, "506F9A"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;->createHomeOIList(Ljava/lang/String;Ljava/lang/String;Z)Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxHomeSp_HomeOIList;

    .line 143
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    const-string v5, "20140812T15:33:16Z"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->creationDate:Ljava/lang/String;

    .line 144
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->usernamePassword:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;

    const-string v5, "lge1"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;->username:Ljava/lang/String;

    .line 145
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->usernamePassword:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;

    const-string v5, "lge123"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;->password:Ljava/lang/String;

    .line 146
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->usernamePassword:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;->machineManaged:Z

    .line 147
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->usernamePassword:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;->eapMethod:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCredUserPass_EAPMethod;

    const-string v5, "21"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCredUserPass_EAPMethod;->eapType:Ljava/lang/String;

    .line 148
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->usernamePassword:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;->eapMethod:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCredUserPass_EAPMethod;

    const-string v5, "29"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCredUserPass_EAPMethod;->innerMethod:Ljava/lang/String;

    .line 149
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    const-string v5, "wi-fi.org"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->realm:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public PpsMoTreeTestCase2(ILcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;)V
    .locals 8
    .param p1, "updateIdentifier"    # I
    .param p2, "tree"    # Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;

    .prologue
    const/4 v7, 0x0

    .line 157
    const-string v4, "wi-fi.org"

    invoke-virtual {p2, v4}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;->createSpFqdn(Ljava/lang/String;)Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiSp_Fqdn;

    move-result-object v1

    .line 158
    .local v1, "currentSpfqdn":Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiSp_Fqdn;
    const/4 v0, 0x0

    .line 159
    .local v0, "aaa":Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_AAAServerTrustRoot;
    const/4 v3, 0x0

    .line 160
    .local v3, "spexclusion":Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_SPExclusionList;
    iget-object v4, v1, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiSp_Fqdn;->perProviderSubscription:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdn_PPS;

    const-string v5, "Cred01"

    invoke-virtual {v4, v5}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdn_PPS;->createCredentialInfo(Ljava/lang/String;)Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;

    move-result-object v2

    .line 162
    .local v2, "info":Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;
    iget-object v4, v1, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiSp_Fqdn;->perProviderSubscription:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdn_PPS;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdn_PPS;->updateIdentifier:Ljava/lang/String;

    .line 163
    const-string v4, "1"

    iput-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credentialPriority:Ljava/lang/String;

    .line 166
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->subscriptionUpdate:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;

    const-string v5, "0xFFFFFFFF"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;->updateInterval:Ljava/lang/String;

    .line 167
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->subscriptionUpdate:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;

    const-string v5, "SPP-ClientInitiated"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;->updateMethod:Ljava/lang/String;

    .line 168
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->subscriptionUpdate:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;

    const-string v5, "HomeSp"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;->restriction:Ljava/lang/String;

    .line 169
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->subscriptionUpdate:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;

    const-string v5, "https://subscription-server.r2-testbed.wi-fi.org"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;->uri:Ljava/lang/String;

    .line 171
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->homeSP:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;

    const-string v5, "Wi-Fi Alliance"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;->friendlyName:Ljava/lang/String;

    .line 172
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->homeSP:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;

    const-string v5, "http://www.wi-fi.org/sites/default/files/lge.png"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;->iconURL:Ljava/lang/String;

    .line 173
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->homeSP:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;

    const-string v5, "wi-fi.org"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;->fqdn:Ljava/lang/String;

    .line 174
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->homeSP:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;

    const-string v5, "HOI01"

    const-string v6, "506F9A"

    invoke-virtual {v4, v5, v6, v7}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;->createHomeOIList(Ljava/lang/String;Ljava/lang/String;Z)Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxHomeSp_HomeOIList;

    .line 176
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    const-string v5, "20140812T15:33:16Z"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->creationDate:Ljava/lang/String;

    .line 177
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->usernamePassword:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;

    const-string v5, "lge2"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;->username:Ljava/lang/String;

    .line 178
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->usernamePassword:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;

    const-string v5, "lge123"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;->password:Ljava/lang/String;

    .line 179
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->usernamePassword:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;

    iput-boolean v7, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;->machineManaged:Z

    .line 180
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->usernamePassword:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;->eapMethod:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCredUserPass_EAPMethod;

    const-string v5, "21"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCredUserPass_EAPMethod;->eapType:Ljava/lang/String;

    .line 181
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->usernamePassword:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;->eapMethod:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCredUserPass_EAPMethod;

    const-string v5, "29"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCredUserPass_EAPMethod;->innerMethod:Ljava/lang/String;

    .line 182
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    const-string v5, "wi-fi.org"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->realm:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public PpsMoTreeTestCase3(ILcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;)V
    .locals 9
    .param p1, "updateIdentifier"    # I
    .param p2, "tree"    # Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;

    .prologue
    .line 190
    const-string v4, "wi-fi.org"

    invoke-virtual {p2, v4}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;->createSpFqdn(Ljava/lang/String;)Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiSp_Fqdn;

    move-result-object v1

    .line 191
    .local v1, "currentSpfqdn":Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiSp_Fqdn;
    const/4 v0, 0x0

    .line 192
    .local v0, "aaa":Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_AAAServerTrustRoot;
    const/4 v3, 0x0

    .line 193
    .local v3, "spexclusion":Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_SPExclusionList;
    iget-object v4, v1, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiSp_Fqdn;->perProviderSubscription:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdn_PPS;

    const-string v5, "Cred01"

    invoke-virtual {v4, v5}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdn_PPS;->createCredentialInfo(Ljava/lang/String;)Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;

    move-result-object v2

    .line 195
    .local v2, "info":Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;
    iget-object v4, v1, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiSp_Fqdn;->perProviderSubscription:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdn_PPS;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdn_PPS;->updateIdentifier:Ljava/lang/String;

    .line 198
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->policy:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;

    const-string v5, "PRP01"

    const-string v6, "ruckuswireless.com,exactMatch"

    const-string v7, "1"

    const-string v8, "US"

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;->createPreferredRoamingPartnerList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PreferredRoamingPartnerList;

    .line 200
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->policy:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;->policyUpdate:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;

    const-string v5, "0xA"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;->updateInterval:Ljava/lang/String;

    .line 201
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->policy:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;->policyUpdate:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;

    const-string v5, "SPP-ClientInitiated"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;->updateMethod:Ljava/lang/String;

    .line 202
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->policy:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;->policyUpdate:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;

    const-string v5, "Unrestricted"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;->restriction:Ljava/lang/String;

    .line 203
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->policy:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;->policyUpdate:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;

    const-string v5, "https://policy-server.r2-testbed.wi-fi.org"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;->uri:Ljava/lang/String;

    .line 205
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->subscriptionUpdate:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;

    const-string v5, "0xFFFFFFFF"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;->updateInterval:Ljava/lang/String;

    .line 206
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->subscriptionUpdate:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;

    const-string v5, "SPP-ClientInitiated"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;->updateMethod:Ljava/lang/String;

    .line 207
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->subscriptionUpdate:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;

    const-string v5, "HomeSp"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;->restriction:Ljava/lang/String;

    .line 208
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->subscriptionUpdate:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;

    const-string v5, "https://subscription-server.r2-testbed.wi-fi.org"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;->uri:Ljava/lang/String;

    .line 210
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->homeSP:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;

    const-string v5, "Wi-Fi Alliance"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;->friendlyName:Ljava/lang/String;

    .line 211
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->homeSP:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;

    const-string v5, "wi-fi.org"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;->fqdn:Ljava/lang/String;

    .line 212
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->homeSP:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;

    const-string v5, "HOI01"

    const-string v6, "506F9A"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;->createHomeOIList(Ljava/lang/String;Ljava/lang/String;Z)Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxHomeSp_HomeOIList;

    .line 214
    const-string v4, "1"

    iput-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credentialPriority:Ljava/lang/String;

    .line 215
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    const-string v5, "20140812T15:33:16Z"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->creationDate:Ljava/lang/String;

    .line 216
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->usernamePassword:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;

    const-string v5, "lge3"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;->username:Ljava/lang/String;

    .line 217
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->usernamePassword:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;

    const-string v5, "lge123"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;->password:Ljava/lang/String;

    .line 218
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->usernamePassword:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;->machineManaged:Z

    .line 219
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->usernamePassword:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;->eapMethod:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCredUserPass_EAPMethod;

    const-string v5, "21"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCredUserPass_EAPMethod;->eapType:Ljava/lang/String;

    .line 220
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->usernamePassword:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;->eapMethod:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCredUserPass_EAPMethod;

    const-string v5, "29"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCredUserPass_EAPMethod;->innerMethod:Ljava/lang/String;

    .line 221
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    const-string v5, "wi-fi.org"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->realm:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public PpsMoTreeTestCase4(ILcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;)V
    .locals 8
    .param p1, "updateIdentifier"    # I
    .param p2, "tree"    # Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;

    .prologue
    .line 228
    const-string v4, "wi-fi.org"

    invoke-virtual {p2, v4}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;->createSpFqdn(Ljava/lang/String;)Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiSp_Fqdn;

    move-result-object v1

    .line 229
    .local v1, "currentSpfqdn":Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiSp_Fqdn;
    const/4 v0, 0x0

    .line 230
    .local v0, "aaa":Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_AAAServerTrustRoot;
    const/4 v3, 0x0

    .line 231
    .local v3, "spexclusion":Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_SPExclusionList;
    iget-object v4, v1, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiSp_Fqdn;->perProviderSubscription:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdn_PPS;

    const-string v5, "Cred01"

    invoke-virtual {v4, v5}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdn_PPS;->createCredentialInfo(Ljava/lang/String;)Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;

    move-result-object v2

    .line 233
    .local v2, "info":Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;
    iget-object v4, v1, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiSp_Fqdn;->perProviderSubscription:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdn_PPS;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdn_PPS;->updateIdentifier:Ljava/lang/String;

    .line 235
    const-string v4, "STR01"

    const-string v5, "www.lge.com"

    const-string v6, "5b393a9246865569485c2605c3304e48212b449367858299beba9384c4cf4647"

    invoke-virtual {v2, v4, v5, v6}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->createAAAServerTrustRoot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_AAAServerTrustRoot;

    move-result-object v0

    .line 236
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->subscriptionUpdate:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;

    const-string v5, "0xFFFFFFFF"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;->updateInterval:Ljava/lang/String;

    .line 237
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->subscriptionUpdate:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;

    const-string v5, "SPP-ClientInitiated"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;->updateMethod:Ljava/lang/String;

    .line 238
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->subscriptionUpdate:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;

    const-string v5, "HomeSp"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;->restriction:Ljava/lang/String;

    .line 239
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->subscriptionUpdate:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;

    const-string v5, "https://subscription-server.r2-testbed.wi-fi.org"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;->uri:Ljava/lang/String;

    .line 240
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->homeSP:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;

    const-string v5, "Wi-Fi Alliance"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;->friendlyName:Ljava/lang/String;

    .line 241
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->homeSP:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;

    const-string v5, "wi-fi.org"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;->fqdn:Ljava/lang/String;

    .line 242
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->homeSP:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;

    const-string v5, "HOI01"

    const-string v6, "506F9A"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;->createHomeOIList(Ljava/lang/String;Ljava/lang/String;Z)Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxHomeSp_HomeOIList;

    .line 243
    const-string v4, "1"

    iput-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credentialPriority:Ljava/lang/String;

    .line 244
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    const-string v5, "20140812T15:33:16Z"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->creationDate:Ljava/lang/String;

    .line 245
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->usernamePassword:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;

    const-string v5, "lge3"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;->username:Ljava/lang/String;

    .line 246
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->usernamePassword:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;

    const-string v5, "lge123"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;->password:Ljava/lang/String;

    .line 247
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->usernamePassword:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;->machineManaged:Z

    .line 248
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->usernamePassword:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;->eapMethod:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCredUserPass_EAPMethod;

    const-string v5, "21"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCredUserPass_EAPMethod;->eapType:Ljava/lang/String;

    .line 249
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->usernamePassword:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;->eapMethod:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCredUserPass_EAPMethod;

    const-string v5, "29"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCredUserPass_EAPMethod;->innerMethod:Ljava/lang/String;

    .line 250
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    const-string v5, "wi-fi.org"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->realm:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public PpsMoTreeTestCase5(ILcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;)V
    .locals 8
    .param p1, "updateIdentifier"    # I
    .param p2, "tree"    # Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;

    .prologue
    .line 257
    const-string v4, "wi-fi.org"

    invoke-virtual {p2, v4}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;->createSpFqdn(Ljava/lang/String;)Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiSp_Fqdn;

    move-result-object v1

    .line 258
    .local v1, "currentSpfqdn":Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiSp_Fqdn;
    const/4 v0, 0x0

    .line 259
    .local v0, "aaa":Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_AAAServerTrustRoot;
    const/4 v3, 0x0

    .line 260
    .local v3, "spexclusion":Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_SPExclusionList;
    iget-object v4, v1, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiSp_Fqdn;->perProviderSubscription:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdn_PPS;

    const-string v5, "Cred01"

    invoke-virtual {v4, v5}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdn_PPS;->createCredentialInfo(Ljava/lang/String;)Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;

    move-result-object v2

    .line 262
    .local v2, "info":Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;
    iget-object v4, v1, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiSp_Fqdn;->perProviderSubscription:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdn_PPS;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdn_PPS;->updateIdentifier:Ljava/lang/String;

    .line 264
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->policy:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;->policyUpdate:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;

    const-string v5, "0xFFFFFFFF"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;->updateInterval:Ljava/lang/String;

    .line 265
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->policy:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;->policyUpdate:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;

    const-string v5, "SPP-ClientInitiated"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;->updateMethod:Ljava/lang/String;

    .line 266
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->policy:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;->policyUpdate:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;

    const-string v5, "Unrestricted"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;->restriction:Ljava/lang/String;

    .line 267
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->policy:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;->policyUpdate:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;

    const-string v5, "https://policy-server.r2-testbed.wi-fi.org"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_PolicyUpdate;->uri:Ljava/lang/String;

    .line 268
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->policy:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;

    const-string v5, "SPE01"

    const-string v6, "Hotspot 2.0 Rel2"

    invoke-virtual {v4, v5, v6}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Policy;->createSPExclusionList(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_SPExclusionList;

    move-result-object v3

    .line 269
    const-string v4, "1"

    iput-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credentialPriority:Ljava/lang/String;

    .line 271
    const-string v4, "STR01"

    const-string v5, "www.lge.com"

    const-string v6, "5b393a9246865569485c2605c3304e48212b449367858299beba9384c4cf4647"

    invoke-virtual {v2, v4, v5, v6}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->createAAAServerTrustRoot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_AAAServerTrustRoot;

    move-result-object v0

    .line 272
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->subscriptionUpdate:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;

    const-string v5, "0xFFFFFFFF"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;->updateInterval:Ljava/lang/String;

    .line 273
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->subscriptionUpdate:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;

    const-string v5, "SPP-ClientInitiated"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;->updateMethod:Ljava/lang/String;

    .line 274
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->subscriptionUpdate:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;

    const-string v5, "HomeSp"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;->restriction:Ljava/lang/String;

    .line 275
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->subscriptionUpdate:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;

    const-string v5, "https://subscription-server.r2-testbed.wi-fi.org"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_SubscriptionUpdate;->uri:Ljava/lang/String;

    .line 276
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->homeSP:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;

    const-string v5, "Wi-Fi Alliance"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;->friendlyName:Ljava/lang/String;

    .line 277
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->homeSP:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;

    const-string v5, "wi-fi.org"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;->fqdn:Ljava/lang/String;

    .line 278
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->homeSP:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;

    const-string v5, "HOI01"

    const-string v6, "506F9A"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_HomeSp;->createHomeOIList(Ljava/lang/String;Ljava/lang/String;Z)Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxHomeSp_HomeOIList;

    .line 279
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    const-string v5, "20140812T15:33:16Z"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->creationDate:Ljava/lang/String;

    .line 280
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->usernamePassword:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;

    const-string v5, "lge5"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;->username:Ljava/lang/String;

    .line 281
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->usernamePassword:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;

    const-string v5, "lge123"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;->password:Ljava/lang/String;

    .line 282
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->usernamePassword:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;->machineManaged:Z

    .line 283
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->usernamePassword:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;->eapMethod:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCredUserPass_EAPMethod;

    const-string v5, "21"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCredUserPass_EAPMethod;->eapType:Ljava/lang/String;

    .line 284
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->usernamePassword:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;

    iget-object v4, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCom_UsernamePassword;->eapMethod:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCredUserPass_EAPMethod;

    const-string v5, "29"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxCredUserPass_EAPMethod;->innerMethod:Ljava/lang/String;

    .line 285
    iget-object v4, v2, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;->credential:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;

    const-string v5, "wi-fi.org"

    iput-object v5, v4, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_Credential;->realm:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public PpsMoTreeTestCase6(ILcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;)V
    .locals 6
    .param p1, "updateIdentifier"    # I
    .param p2, "tree"    # Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;

    .prologue
    .line 292
    const-string v4, "wi-fi.org"

    invoke-virtual {p2, v4}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;->createSpFqdn(Ljava/lang/String;)Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiSp_Fqdn;

    move-result-object v1

    .line 293
    .local v1, "currentSpfqdn":Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiSp_Fqdn;
    const/4 v0, 0x0

    .line 294
    .local v0, "aaa":Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_AAAServerTrustRoot;
    const/4 v3, 0x0

    .line 295
    .local v3, "spexclusion":Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_SPExclusionList;
    iget-object v4, v1, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiSp_Fqdn;->perProviderSubscription:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdn_PPS;

    const-string v5, "Cred01"

    invoke-virtual {v4, v5}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdn_PPS;->createCredentialInfo(Ljava/lang/String;)Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;

    move-result-object v2

    .line 297
    .local v2, "info":Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;
    return-void
.end method

.method public WifiLgeHs20MobileManageTreeSet(ILcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;)V
    .locals 6
    .param p1, "updateIdentifier"    # I
    .param p2, "tree"    # Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;

    .prologue
    .line 305
    const-string v4, "wi-fi.org"

    invoke-virtual {p2, v4}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;->createSpFqdn(Ljava/lang/String;)Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiSp_Fqdn;

    move-result-object v1

    .line 306
    .local v1, "currentSpfqdn":Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiSp_Fqdn;
    const/4 v0, 0x0

    .line 307
    .local v0, "aaa":Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSx_AAAServerTrustRoot;
    const/4 v3, 0x0

    .line 308
    .local v3, "spexclusion":Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdnPPSxPolicy_SPExclusionList;
    iget-object v4, v1, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiSp_Fqdn;->perProviderSubscription:Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdn_PPS;

    const-string v5, "Cred01"

    invoke-virtual {v4, v5}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$WifiFqdn_PPS;->createCredentialInfo(Ljava/lang/String;)Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;

    move-result-object v2

    .line 310
    .local v2, "info":Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree$CredentialInfo;
    packed-switch p1, :pswitch_data_0

    .line 1138
    :goto_0
    return-void

    .line 344
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTreeTesting;->PpsMoTreeTestCase1(ILcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;)V

    goto :goto_0

    .line 381
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTreeTesting;->PpsMoTreeTestCase2(ILcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;)V

    goto :goto_0

    .line 426
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTreeTesting;->PpsMoTreeTestCase3(ILcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;)V

    goto :goto_0

    .line 466
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTreeTesting;->PpsMoTreeTestCase4(ILcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;)V

    goto :goto_0

    .line 513
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTreeTesting;->PpsMoTreeTestCase5(ILcom/lge/wifi/impl/hs20/WifiLgeHs20MobileManageTree;)V

    goto :goto_0

    .line 310
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
