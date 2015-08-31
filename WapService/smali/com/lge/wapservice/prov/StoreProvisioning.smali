.class public Lcom/lge/wapservice/prov/StoreProvisioning;
.super Ljava/lang/Object;
.source "StoreProvisioning.java"


# direct methods
.method public static isSilentlyDiscardedMessage(Landroid/content/Context;Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mProvisioningDoc"    # Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;
    .param p2, "sec"    # Ljava/lang/String;
    .param p3, "mac"    # Ljava/lang/String;
    .param p4, "document"    # [B

    .prologue
    .line 115
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 118
    .local v5, "secCase":I
    const/4 v0, 0x0

    .line 119
    .local v0, "bResult":Z
    const/4 v1, 0x0

    .line 122
    .local v1, "caseResult":Z
    sget-object v8, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_SEC_SYNCHMLDM_USE_ONLY_NETPIN:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    invoke-static {v8}, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->getIntValue(Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 123
    iget-object v8, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->applications:Ljava/util/HashMap;

    const-string v9, "w7"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 124
    if-nez v5, :cond_6

    .line 125
    sget-object v8, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_SEC_SYNCHMLDM_NETPIN_AUTOINSTALL:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    invoke-static {v8}, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->getIntValue(Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 126
    invoke-static {p4}, Lcom/lge/wapservice/utils/LgeUtils;->hexConvert([B)Ljava/lang/String;

    move-result-object v7

    .line 127
    .local v7, "wmlDocument":Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 128
    const/4 v8, 0x1

    invoke-static {p0, p2, p3, p4, v8}, Lcom/lge/wapservice/prov/ProvisioningValidation;->provisionNetpinMsgAutoInstall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BZ)Z

    .line 129
    const/4 v0, 0x1

    .line 130
    const-string v8, "WapService_StoreProvisioining"

    const-string v9, "<isDiscaredMessage> true, SYNCML NETPIN Message and auto install, so don\'t save this message to inbox"

    invoke-static {v8, v9}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .end local v7    # "wmlDocument":Ljava/lang/String;
    :cond_0
    :goto_0
    sget-object v8, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_SEC_WRONG_NETPIN_DISCARD:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    invoke-static {v8}, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->getIntValue(Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 148
    if-nez v5, :cond_1

    .line 149
    if-eqz p3, :cond_7

    .line 150
    invoke-static {p3}, Lcom/lge/wapservice/utils/LgeUtils;->hexConvert(Ljava/lang/String;)[B

    move-result-object v3

    .line 155
    .local v3, "mMac":[B
    :goto_1
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 158
    .local v6, "tm":Landroid/telephony/TelephonyManager;
    :try_start_0
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, p4, v8}, Lcom/lge/wapservice/prov/security/OmaSigner;->signerFor(I[BLjava/lang/String;)Lcom/lge/wapservice/prov/security/OmaSigner;

    move-result-object v4

    .line 159
    .local v4, "mSigner":Lcom/lge/wapservice/prov/security/OmaSigner;
    const/4 v8, 0x0

    invoke-virtual {v4, v8, v3}, Lcom/lge/wapservice/prov/security/OmaSigner;->isDocumentValid(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Lcom/lge/wapservice/prov/security/UnknownSecurityMechanismException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 164
    .end local v4    # "mSigner":Lcom/lge/wapservice/prov/security/OmaSigner;
    :goto_2
    if-nez v1, :cond_8

    .line 165
    const/4 v0, 0x1

    .line 170
    :goto_3
    const-string v8, "WapService_StoreProvisioining"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<isDiscardedMessage> isDiscardedMessage: PROV_CFG_SEC_WRONG_NETPIN_DISCARD = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v3    # "mMac":[B
    .end local v6    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    iget-object v8, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->applications:Ljava/util/HashMap;

    const-string v9, "w5"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    const-string v8, "com.lge.myphonebook"

    invoke-static {p0, v8}, Lcom/lge/wapservice/utils/LgeUtils;->isInstalledPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 176
    const/4 v0, 0x1

    .line 181
    :cond_2
    sget-object v8, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_SEC_USERPIN_DISCARD:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    invoke-static {v8}, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->getIntValue(Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 182
    const/4 v8, 0x1

    if-ne v5, v8, :cond_3

    .line 183
    const-string v8, "WapService_StoreProvisioining"

    const-string v9, "<isDiscardedMessage> isDiscardedMessage: PROV_CFG_SEC_USERPIN_DISCARD"

    invoke-static {v8, v9}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v0, 0x1

    .line 189
    :cond_3
    return v0

    .line 132
    .restart local v7    # "wmlDocument":Ljava/lang/String;
    :cond_4
    const-string v8, "WapService_StoreProvisioining"

    const-string v9, "<isDiscaredMessage> true, SYNCML NETPIN Message and auto install, but document is null error!!"

    invoke-static {v8, v9}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v0, 0x1

    goto :goto_0

    .line 136
    .end local v7    # "wmlDocument":Ljava/lang/String;
    :cond_5
    const/4 v0, 0x0

    .line 137
    const-string v8, "WapService_StoreProvisioining"

    const-string v9, "<isDiscaredMessage> false, SYNCHML NETPIN Message but not auto install so, save this message to inbox"

    invoke-static {v8, v9}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    :cond_6
    const/4 v0, 0x1

    .line 141
    const-string v8, "WapService_StoreProvisioining"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<isDiscardedMessage> PROV_CFG_SEC_SYNCHMLDM_USE_ONLY_NETPIN = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 152
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "mMac":[B
    goto/16 :goto_1

    .line 160
    .restart local v6    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v2

    .line 161
    .local v2, "e":Lcom/lge/wapservice/prov/security/UnknownSecurityMechanismException;
    const/4 v1, 0x0

    goto :goto_2

    .line 167
    .end local v2    # "e":Lcom/lge/wapservice/prov/security/UnknownSecurityMechanismException;
    :cond_8
    or-int/lit8 v0, v0, 0x0

    goto :goto_3
.end method

.method public static parsingSaveData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BI)Landroid/net/Uri;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sec"    # Ljava/lang/String;
    .param p2, "mac"    # Ljava/lang/String;
    .param p3, "wbxml"    # [B
    .param p4, "simID"    # I

    .prologue
    const/4 v0, 0x0

    .line 58
    const/4 v7, 0x0

    .line 61
    .local v7, "insertUri":Landroid/net/Uri;
    const-string v1, "WapService_StoreProvisioining"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[StoreProvisioning] parsingSaveData simID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {p3}, Lcom/lge/wapservice/prov/ProvisioningDocParse;->parseDoc([B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    sget-object v1, Lcom/lge/wapservice/prov/ProvisioningDocParse;->mProvisioningDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    invoke-static {p0, v1, p1, p2, p3}, Lcom/lge/wapservice/prov/StoreProvisioning;->isSilentlyDiscardedMessage(Landroid/content/Context;Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-object v0

    .line 70
    :cond_1
    invoke-static {p0}, Lcom/lge/wapservice/prov/ProvisioningDocParse;->getParseMsg(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    sget-object v1, Lcom/lge/wapservice/prov/ProvisioningDocParse;->mSettingTitle:Ljava/lang/String;

    sget-object v2, Lcom/lge/wapservice/prov/ProvisioningDocParse;->mSettingValue:Ljava/lang/String;

    invoke-static {p3}, Lcom/lge/wapservice/utils/LgeUtils;->hexConvert([B)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/lge/wapservice/prov/StoreProvisioning;->saveDatatoDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v7

    move-object v0, v7

    .line 85
    goto :goto_0

    .line 81
    :cond_2
    const-string v1, "WapService_StoreProvisioining"

    const-string v2, "<StoreProvisioning> Discard because of invalid settings"

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static saveDatatoDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleString"    # Ljava/lang/String;
    .param p2, "msgString"    # Ljava/lang/String;
    .param p3, "secString"    # Ljava/lang/String;
    .param p4, "macString"    # Ljava/lang/String;
    .param p5, "wbxmlDocument"    # Ljava/lang/String;
    .param p6, "simID"    # I

    .prologue
    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 96
    .local v0, "db_params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "MSG_TYPE"

    const-string v2, "application/vnd.wap.connectivity-wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "CONTENT"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "BODY"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "SEC"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "MAC"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v1, "DOC"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {}, Lcom/lge/wapservice/utils/DualSIM_Helper;->supportMultiSIM()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const-string v1, "SIM_ID"

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_0
    const/4 v1, 0x2

    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1, v2, v0}, Lcom/lge/wapservice/utils/DBManager;->insert(Landroid/content/Context;ILandroid/net/Uri;Ljava/util/HashMap;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
