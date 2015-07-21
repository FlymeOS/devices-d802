.class Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;
.super Ljava/lang/Object;
.source "LgeNetworkNameManager.java"


# static fields
.field protected static final DBG:Z

.field protected static final IS_AVAILABLE:Z

.field protected static final LOG_TAG:Ljava/lang/String; = "LgeNetworkNameManager"

.field protected static final VDBG:Z

.field protected static sXmlPath:Ljava/lang/String;


# instance fields
.field protected mConditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mCorrections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mEmergencyOnly:Z

.field protected mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field protected mIsDataModified:Z

.field protected mModifiedData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPlmn:Ljava/lang/String;

.field protected mServiceState:Landroid/telephony/ServiceState;

.field protected mShowPlmn:Z

.field protected mShowSpn:Z

.field protected mSpn:Ljava/lang/String;

.field protected mSubId:J

.field protected mSystemData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mTempSystemData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    sget-boolean v0, Lcom/android/internal/telephony/gsm/LgeNetworkNameConstants;->DBG:Z

    sput-boolean v0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->DBG:Z

    .line 46
    sget-boolean v0, Lcom/android/internal/telephony/gsm/LgeNetworkNameConstants;->VDBG:Z

    sput-boolean v0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->VDBG:Z

    .line 129
    const-string v0, "/system/etc/networkNameMod.xml"

    sput-object v0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->sXmlPath:Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->sXmlPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->IS_AVAILABLE:Z

    .line 133
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    sget-boolean v0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->IS_AVAILABLE:Z

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mSystemData:Ljava/util/HashMap;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mTempSystemData:Ljava/util/HashMap;

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mModifiedData:Ljava/util/HashMap;

    .line 144
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->parseXml()V

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    const-string v0, "LgeNetworkNameManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xml file is not exist - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->sXmlPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;-><init>()V

    .line 155
    iput-wide p1, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mSubId:J

    .line 156
    return-void
.end method

.method private getCurrentSystemData()V
    .locals 11

    .prologue
    const/4 v7, 0x3

    .line 213
    const/4 v2, 0x0

    .line 214
    .local v2, "simMcc":Ljava/lang/String;
    const/4 v3, 0x0

    .line 215
    .local v3, "simMnc":Ljava/lang/String;
    const/4 v4, 0x0

    .line 216
    .local v4, "simNumeric":Ljava/lang/String;
    const/4 v0, 0x0

    .line 217
    .local v0, "gid":Ljava/lang/String;
    const/4 v1, 0x0

    .line 218
    .local v1, "imsi":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v5, :cond_1

    .line 220
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 221
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_0

    .line 222
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 223
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 225
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    move-result-object v0

    .line 226
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    .line 228
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mTempSystemData:Ljava/util/HashMap;

    const-string v6, "serviceState"

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mTempSystemData:Ljava/util/HashMap;

    const-string v6, "operatorNumeric"

    const-string v7, "gsm.sim.operator.numeric"

    iget-wide v8, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mSubId:J

    const-string v10, ""

    invoke-static {v7, v8, v9, v10}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mTempSystemData:Ljava/util/HashMap;

    const-string v6, "networkOperator"

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mTempSystemData:Ljava/util/HashMap;

    const-string v6, "roaming"

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mTempSystemData:Ljava/util/HashMap;

    const-string v6, "showPlmn"

    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mShowPlmn:Z

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mTempSystemData:Ljava/util/HashMap;

    const-string v6, "plmn"

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mPlmn:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mTempSystemData:Ljava/util/HashMap;

    const-string v6, "showSpn"

    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mShowSpn:Z

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mTempSystemData:Ljava/util/HashMap;

    const-string v6, "spn"

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mSpn:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mTempSystemData:Ljava/util/HashMap;

    const-string v6, "emergencyOnly"

    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mEmergencyOnly:Z

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mTempSystemData:Ljava/util/HashMap;

    const-string v6, "mcc"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mTempSystemData:Ljava/util/HashMap;

    const-string v6, "mnc"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mTempSystemData:Ljava/util/HashMap;

    const-string v6, "gid"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mTempSystemData:Ljava/util/HashMap;

    const-string v6, "imsi"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    return-void
.end method

.method private getCurrentSystemDataForTest()V
    .locals 24

    .prologue
    .line 251
    const-string v20, "persist.nwnametest.country"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 252
    .local v4, "countryTest":Ljava/lang/String;
    const-string v20, "persist.nwnametest.operator"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 253
    .local v12, "operatorTest":Ljava/lang/String;
    const-string v20, "persist.nwnametest.region"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 255
    .local v14, "regionTest":Ljava/lang/String;
    const-string v20, "persist.nwnametest.ss"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 256
    .local v16, "serviceStateTest":Ljava/lang/String;
    const-string v20, "persist.nwnametest.opnumeric"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mSubId:J

    move-wide/from16 v22, v0

    const-string v21, ""

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 257
    .local v11, "operatorNumericTest":Ljava/lang/String;
    const-string v20, "persist.nwnametest.nwoperator"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 258
    .local v10, "networkOperatorTest":Ljava/lang/String;
    const-string v20, "persist.nwnametest.roaming"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 259
    .local v15, "roamingTest":Ljava/lang/String;
    const-string v20, "persist.nwnametest.showplmn"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 260
    .local v17, "showPlmnTest":Ljava/lang/String;
    const-string v20, "persist.nwnametest.plmn"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 261
    .local v13, "plmnTest":Ljava/lang/String;
    const-string v20, "persist.nwnametest.showspn"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 262
    .local v18, "showSpnTest":Ljava/lang/String;
    const-string v20, "persist.nwnametest.spn"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 263
    .local v19, "spnTest":Ljava/lang/String;
    const-string v20, "persist.nwnametest.emergonly"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 264
    .local v5, "emergencyOnlyTest":Ljava/lang/String;
    const-string v20, "persist.nwnametest.mcc"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 265
    .local v8, "mccTest":Ljava/lang/String;
    const-string v20, "persist.nwnametest.mnc"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 266
    .local v9, "mncTest":Ljava/lang/String;
    const-string v20, "persist.nwnametest.gid"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 267
    .local v6, "gidTest":Ljava/lang/String;
    const-string v20, "persist.nwnametest.imsi"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 270
    .local v7, "imsiTest":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mTempSystemData:Ljava/util/HashMap;

    move-object/from16 v20, v0

    const-string v21, "country"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mTempSystemData:Ljava/util/HashMap;

    move-object/from16 v20, v0

    const-string v21, "operator"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mTempSystemData:Ljava/util/HashMap;

    move-object/from16 v20, v0

    const-string v21, "region"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mTempSystemData:Ljava/util/HashMap;

    move-object/from16 v20, v0

    const-string v21, "serviceState"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mTempSystemData:Ljava/util/HashMap;

    move-object/from16 v20, v0

    const-string v21, "operatorNumeric"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mTempSystemData:Ljava/util/HashMap;

    move-object/from16 v20, v0

    const-string v21, "networkOperator"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mTempSystemData:Ljava/util/HashMap;

    move-object/from16 v20, v0

    const-string v21, "roaming"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mTempSystemData:Ljava/util/HashMap;

    move-object/from16 v20, v0

    const-string v21, "showPlmn"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mTempSystemData:Ljava/util/HashMap;

    move-object/from16 v20, v0

    const-string v21, "plmn"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mTempSystemData:Ljava/util/HashMap;

    move-object/from16 v20, v0

    const-string v21, "showSpn"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mTempSystemData:Ljava/util/HashMap;

    move-object/from16 v20, v0

    const-string v21, "spn"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mTempSystemData:Ljava/util/HashMap;

    move-object/from16 v20, v0

    const-string v21, "emergencyOnly"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mTempSystemData:Ljava/util/HashMap;

    move-object/from16 v20, v0

    const-string v21, "mcc"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mTempSystemData:Ljava/util/HashMap;

    move-object/from16 v20, v0

    const-string v21, "mnc"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mTempSystemData:Ljava/util/HashMap;

    move-object/from16 v20, v0

    const-string v21, "gid"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mTempSystemData:Ljava/util/HashMap;

    move-object/from16 v20, v0

    const-string v21, "imsi"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    return-void
.end method

.method private getSystemData()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mTempSystemData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 201
    sget-boolean v0, Lcom/android/internal/telephony/gsm/LgeNetworkNameConstants;->IS_TEST_MODE:Z

    if-eqz v0, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->getCurrentSystemDataForTest()V

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->getCurrentSystemData()V

    goto :goto_0
.end method

.method private isNetworkNameDataModified()Z
    .locals 1

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mIsDataModified:Z

    return v0
.end method

.method private modifyData()V
    .locals 13

    .prologue
    .line 355
    const/4 v5, 0x0

    .line 357
    .local v5, "isModified":Z
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_7

    .line 358
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 359
    .local v1, "condition":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 361
    .local v7, "skipCorrection":Z
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 362
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 363
    .local v0, "condVal":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mSystemData:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 365
    .local v8, "sysVal":Ljava/lang/String;
    invoke-static {v6, v8, v0}, Lcom/android/internal/telephony/gsm/LgeNetworkNameUtils;->matchData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 366
    sget-boolean v10, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->DBG:Z

    if-eqz v10, :cond_1

    .line 367
    const-string v10, "LgeNetworkNameManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "condition doesn\'t match, skip this requirement - ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] System value : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Xml Value : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", modifiedData : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mModifiedData:Ljava/util/HashMap;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const-string v10, "LgeNetworkNameManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "key : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", systemData : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mSystemData:Ljava/util/HashMap;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_1
    const/4 v7, 0x1

    .line 376
    .end local v0    # "condVal":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "sysVal":Ljava/lang/String;
    :cond_2
    if-nez v7, :cond_6

    .line 377
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mCorrections:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 379
    .local v2, "correction":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 380
    .restart local v6    # "key":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 382
    .local v9, "value":Ljava/lang/String;
    const-string v10, "plmn"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 383
    const-string v10, "LONG_NAME"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 384
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v9

    .line 389
    :cond_3
    :goto_2
    const/4 v5, 0x1

    .line 390
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mModifiedData:Ljava/util/HashMap;

    invoke-virtual {v10, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 385
    :cond_4
    const-string v10, "SHORT_NAME"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 386
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 393
    .end local v6    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_5
    sget-boolean v10, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->DBG:Z

    if-eqz v10, :cond_6

    .line 394
    const-string v10, "LgeNetworkNameManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "condition matches - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", apply correction - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .end local v2    # "correction":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 403
    .end local v1    # "condition":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "skipCorrection":Z
    :cond_7
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mIsDataModified:Z

    .line 404
    return-void
.end method

.method private parseXml()V
    .locals 10

    .prologue
    .line 162
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 165
    .local v1, "factory":Ljavax/xml/parsers/SAXParserFactory;
    new-instance v2, Lcom/android/internal/telephony/gsm/LgeNetworkNameParser;

    sget-boolean v6, Lcom/android/internal/telephony/gsm/LgeNetworkNameConstants;->IS_TEST_MODE:Z

    invoke-direct {v2, v6}, Lcom/android/internal/telephony/gsm/LgeNetworkNameParser;-><init>(Z)V

    .line 168
    .local v2, "handler":Lcom/android/internal/telephony/gsm/LgeNetworkNameParser;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 170
    .local v4, "startTime":J
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 171
    .local v3, "parser":Ljavax/xml/parsers/SAXParser;
    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->sXmlPath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 173
    sget-boolean v6, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->DBG:Z

    if-eqz v6, :cond_0

    .line 174
    const-string v6, "LgeNetworkNameManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ parsed file ] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->sXmlPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", elapsed time : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 189
    .end local v3    # "parser":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "startTime":J
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/LgeNetworkNameParser;->getConditions()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mConditions:Ljava/util/ArrayList;

    .line 190
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/LgeNetworkNameParser;->getCorrections()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mCorrections:Ljava/util/ArrayList;

    .line 191
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    const-string v6, "LgeNetworkNameManager"

    const-string v7, "ParserConfigurationException"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 182
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v0

    .line 183
    .local v0, "e":Lorg/xml/sax/SAXException;
    const-string v6, "LgeNetworkNameManager"

    const-string v7, "SAXException"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 185
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v0

    .line 186
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "LgeNetworkNameManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "xml file does not exist - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->sXmlPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private printData(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 6
    .param p2, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 474
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v4, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->VDBG:Z

    if-eqz v4, :cond_1

    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 476
    .local v2, "msg":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 477
    .local v1, "key":Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 481
    .local v3, "value":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 484
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    const-string v4, "LgeNetworkNameManager"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "msg":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private setDataBeforeMod()V
    .locals 4

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mModifiedData:Ljava/util/HashMap;

    const-string v1, "showPlmn"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mSystemData:Ljava/util/HashMap;

    const-string v3, "showPlmn"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mModifiedData:Ljava/util/HashMap;

    const-string v1, "plmn"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mSystemData:Ljava/util/HashMap;

    const-string v3, "plmn"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mModifiedData:Ljava/util/HashMap;

    const-string v1, "showSpn"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mSystemData:Ljava/util/HashMap;

    const-string v3, "showSpn"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mModifiedData:Ljava/util/HashMap;

    const-string v1, "spn"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mSystemData:Ljava/util/HashMap;

    const-string v3, "spn"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    return-void
.end method


# virtual methods
.method protected getModifiedData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mModifiedData:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPlmn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->getModifiedData()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "plmn"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSpn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->getModifiedData()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "spn"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isShowPlmn()Z
    .locals 2

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->getModifiedData()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "showPlmn"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isShowSpn()Z
    .locals 2

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->getModifiedData()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "showSpn"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public modifyNetworkName(Landroid/telephony/ServiceState;ZLjava/lang/String;ZLjava/lang/String;ZLcom/android/internal/telephony/uicc/IccRecords;)Z
    .locals 6
    .param p1, "ss"    # Landroid/telephony/ServiceState;
    .param p2, "showPlmn"    # Z
    .param p3, "plmn"    # Ljava/lang/String;
    .param p4, "showSpn"    # Z
    .param p5, "spn"    # Ljava/lang/String;
    .param p6, "emergencyOnly"    # Z
    .param p7, "iccRecords"    # Lcom/android/internal/telephony/uicc/IccRecords;

    .prologue
    .line 304
    sget-boolean v4, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->IS_AVAILABLE:Z

    if-nez v4, :cond_0

    .line 305
    const/4 v4, 0x0

    .line 338
    :goto_0
    return v4

    .line 309
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mServiceState:Landroid/telephony/ServiceState;

    .line 310
    iput-boolean p2, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mShowPlmn:Z

    .line 311
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mPlmn:Ljava/lang/String;

    .line 312
    iput-boolean p4, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mShowSpn:Z

    .line 313
    iput-object p5, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mSpn:Ljava/lang/String;

    .line 314
    iput-boolean p6, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mEmergencyOnly:Z

    .line 315
    iput-object p7, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 317
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->getSystemData()V

    .line 319
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mTempSystemData:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 320
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mSystemData:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 321
    .local v3, "prevValue":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mTempSystemData:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 323
    .local v0, "currentValue":Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 325
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mSystemData:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 326
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mSystemData:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mTempSystemData:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 328
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mSystemData:Ljava/util/HashMap;

    const-string v5, "System Data"

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->printData(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 329
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->setDataBeforeMod()V

    .line 330
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mModifiedData:Ljava/util/HashMap;

    const-string v5, "Before Mod"

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->printData(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 331
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->modifyData()V

    .line 332
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->mModifiedData:Ljava/util/HashMap;

    const-string v5, "After Mod"

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->printData(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 338
    .end local v0    # "currentValue":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "prevValue":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LgeNetworkNameManager;->isNetworkNameDataModified()Z

    move-result v4

    goto :goto_0
.end method
