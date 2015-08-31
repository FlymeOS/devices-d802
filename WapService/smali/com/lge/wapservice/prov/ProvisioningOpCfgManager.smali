.class public Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;
.super Ljava/lang/Object;
.source "ProvisioningOpCfgManager.java"


# static fields
.field private static sProvisioningOpCfgManager:Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;


# instance fields
.field private mOpIntCfgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOpStrCfgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->sProvisioningOpCfgManager:Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->mOpStrCfgMap:Ljava/util/HashMap;

    .line 35
    return-void
.end method

.method private addATTCfgItems()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 169
    sget-object v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->sProvisioningOpCfgManager:Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_SEC_SYNCHMLDM_USE_ONLY_NETPIN:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->sProvisioningOpCfgManager:Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_SEC_SYNCHMLDM_NETPIN_AUTOINSTALL:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-void
.end method

.method private addBellCfgItems()V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method private addCRKCfgItems()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 223
    sget-object v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->sProvisioningOpCfgManager:Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_SEC_SYNCHMLDM_USE_ONLY_NETPIN:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->sProvisioningOpCfgManager:Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_SEC_SYNCHMLDM_NETPIN_AUTOINSTALL:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    return-void
.end method

.method private addCommonCfgItems()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    sget-object v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->sProvisioningOpCfgManager:Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_HANDLING_METHOD_NOSEC:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->sProvisioningOpCfgManager:Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_SEC_SYNCHMLDM_USE_ONLY_NETPIN:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->sProvisioningOpCfgManager:Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_SEC_WRONG_NETPIN_DISCARD:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->sProvisioningOpCfgManager:Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_SEC_SYNCHMLDM_NETPIN_AUTOINSTALL:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->sProvisioningOpCfgManager:Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_RECEIVE_NOTI_POPUP:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->sProvisioningOpCfgManager:Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_SEC_USERPIN_DISCARD:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->sProvisioningOpCfgManager:Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_PROVISIONING_ENABLE:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-void
.end method

.method private addDefaultCfgItems()V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method private addH3GCfgItems()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method private addOPENCfgItems()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method private addORGCfgItems()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method private addOpCfgItems()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->addCommonCfgItems()V

    .line 58
    invoke-static {}, Lcom/lge/wapservice/utils/LocaleManager;->getOperator()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 107
    :pswitch_0
    invoke-direct {p0}, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->addDefaultCfgItems()V

    .line 110
    :goto_0
    return-void

    .line 60
    :pswitch_1
    invoke-direct {p0}, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->addVDFCfgItems()V

    goto :goto_0

    .line 63
    :pswitch_2
    invoke-direct {p0}, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->addTMOCfgItems()V

    goto :goto_0

    .line 66
    :pswitch_3
    invoke-direct {p0}, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->addORGCfgItems()V

    goto :goto_0

    .line 69
    :pswitch_4
    invoke-direct {p0}, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->addH3GCfgItems()V

    goto :goto_0

    .line 72
    :pswitch_5
    invoke-direct {p0}, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->addTIMCfgItems()V

    goto :goto_0

    .line 75
    :pswitch_6
    invoke-direct {p0}, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->addATTCfgItems()V

    goto :goto_0

    .line 78
    :pswitch_7
    invoke-direct {p0}, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->addRogersCfgItems()V

    goto :goto_0

    .line 81
    :pswitch_8
    invoke-direct {p0}, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->addTelusCfgItems()V

    goto :goto_0

    .line 84
    :pswitch_9
    invoke-direct {p0}, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->addVivoCfgItems()V

    goto :goto_0

    .line 87
    :pswitch_a
    invoke-direct {p0}, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->addTLFCfgItems()V

    goto :goto_0

    .line 90
    :pswitch_b
    invoke-direct {p0}, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->addTelstraCfgItems()V

    goto :goto_0

    .line 93
    :pswitch_c
    invoke-direct {p0}, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->addBellCfgItems()V

    goto :goto_0

    .line 96
    :pswitch_d
    invoke-direct {p0}, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->addOPENCfgItems()V

    goto :goto_0

    .line 99
    :pswitch_e
    invoke-direct {p0}, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->addVZWCfgItems()V

    goto :goto_0

    .line 103
    :pswitch_f
    invoke-direct {p0}, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->addCRKCfgItems()V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private addRogersCfgItems()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method private addTIMCfgItems()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method private addTLFCfgItems()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method private addTMOCfgItems()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 140
    const-string v0, "EU"

    invoke-static {}, Lcom/lge/wapservice/utils/LocaleManager;->getCountryStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "COM"

    invoke-static {}, Lcom/lge/wapservice/utils/LocaleManager;->getCountryStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    sget-object v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->sProvisioningOpCfgManager:Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_SEC_USERPIN_DISCARD:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_1
    sget-object v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->sProvisioningOpCfgManager:Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_SEC_WRONG_NETPIN_DISCARD:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-void
.end method

.method private addTelstraCfgItems()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method private addTelusCfgItems()V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method private addVDFCfgItems()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 129
    sget-object v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->sProvisioningOpCfgManager:Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_RECEIVE_NOTI_POPUP:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->sProvisioningOpCfgManager:Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_SEC_WRONG_NETPIN_DISCARD:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-void
.end method

.method private addVZWCfgItems()V
    .locals 3

    .prologue
    .line 217
    sget-object v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->sProvisioningOpCfgManager:Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_PROVISIONING_ENABLE:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    return-void
.end method

.method private addVivoCfgItems()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public static declared-synchronized getIntValue(Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;)I
    .locals 2
    .param p0, "item"    # Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    .prologue
    .line 38
    const-class v1, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->sProvisioningOpCfgManager:Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;

    invoke-direct {v0}, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;-><init>()V

    sput-object v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->sProvisioningOpCfgManager:Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;

    .line 40
    sget-object v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->sProvisioningOpCfgManager:Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;

    invoke-direct {v0}, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->addOpCfgItems()V

    .line 43
    :cond_0
    sget-object v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->sProvisioningOpCfgManager:Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;

    iget-object v0, v0, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->mOpIntCfgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
