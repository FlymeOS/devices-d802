.class public final enum Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;
.super Ljava/lang/Enum;
.source "ProvisioningOpCfgItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

.field public static final enum PROV_CFG_HANDLING_METHOD_NOSEC:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

.field public static final enum PROV_CFG_INDEX_END:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

.field public static final enum PROV_CFG_PROVISIONING_ENABLE:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

.field public static final enum PROV_CFG_RECEIVE_NOTI_POPUP:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

.field public static final enum PROV_CFG_SEC_SYNCHMLDM_NETPIN_AUTOINSTALL:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

.field public static final enum PROV_CFG_SEC_SYNCHMLDM_USE_ONLY_NETPIN:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

.field public static final enum PROV_CFG_SEC_USERPIN_DISCARD:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

.field public static final enum PROV_CFG_SEC_WRONG_NETPIN_DISCARD:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    const-string v1, "PROV_CFG_HANDLING_METHOD_NOSEC"

    invoke-direct {v0, v1, v3}, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_HANDLING_METHOD_NOSEC:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    .line 22
    new-instance v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    const-string v1, "PROV_CFG_SEC_SYNCHMLDM_USE_ONLY_NETPIN"

    invoke-direct {v0, v1, v4}, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_SEC_SYNCHMLDM_USE_ONLY_NETPIN:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    .line 23
    new-instance v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    const-string v1, "PROV_CFG_SEC_WRONG_NETPIN_DISCARD"

    invoke-direct {v0, v1, v5}, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_SEC_WRONG_NETPIN_DISCARD:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    .line 24
    new-instance v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    const-string v1, "PROV_CFG_SEC_SYNCHMLDM_NETPIN_AUTOINSTALL"

    invoke-direct {v0, v1, v6}, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_SEC_SYNCHMLDM_NETPIN_AUTOINSTALL:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    .line 26
    new-instance v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    const-string v1, "PROV_CFG_RECEIVE_NOTI_POPUP"

    invoke-direct {v0, v1, v7}, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_RECEIVE_NOTI_POPUP:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    .line 28
    new-instance v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    const-string v1, "PROV_CFG_SEC_USERPIN_DISCARD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_SEC_USERPIN_DISCARD:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    .line 29
    new-instance v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    const-string v1, "PROV_CFG_PROVISIONING_ENABLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_PROVISIONING_ENABLE:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    .line 30
    new-instance v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    const-string v1, "PROV_CFG_INDEX_END"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_INDEX_END:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    .line 19
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    sget-object v1, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_HANDLING_METHOD_NOSEC:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_SEC_SYNCHMLDM_USE_ONLY_NETPIN:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_SEC_WRONG_NETPIN_DISCARD:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_SEC_SYNCHMLDM_NETPIN_AUTOINSTALL:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_RECEIVE_NOTI_POPUP:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_SEC_USERPIN_DISCARD:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_PROVISIONING_ENABLE:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_INDEX_END:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->$VALUES:[Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    return-object v0
.end method

.method public static values()[Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->$VALUES:[Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    invoke-virtual {v0}, [Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    return-object v0
.end method
