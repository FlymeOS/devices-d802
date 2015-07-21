.class public Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;
.super Lcom/lge/telephony/utils/AssistedDialNumberParser;
.source "AssistedDialNumberParserVZW.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mRefCountryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/telephony/LGReferenceCountry;",
            ">;"
        }
    .end annotation
.end field

.field private mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1}, Lcom/lge/telephony/utils/AssistedDialNumberParser;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    .line 20
    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mRefCountryList:Ljava/util/ArrayList;

    .line 24
    const-string v0, "AssistedDial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current AssistDialNumberParser is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {p1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getInstance(Landroid/content/Context;)Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    .line 27
    sget-boolean v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 29
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mRefCountryList:Ljava/util/ArrayList;

    const/16 v1, 0xe6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 30
    invoke-direct {p0}, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->loadAllCountryForAssistedDial()V

    .line 31
    return-void
.end method

.method private loadAllCountryForAssistedDial()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 206
    iget-object v1, p0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 207
    .local v0, "mContentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/constants/SettingsConstants$AssistDial;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 209
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 210
    const-string v1, "AssisstedDial"

    const-string v2, "cursor is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v1, p0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mRefCountryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 217
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v8, v1, :cond_2

    .line 220
    new-instance v9, Lcom/lge/telephony/LGReferenceCountry;

    invoke-direct {v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>()V

    .line 222
    .local v9, "refCountry":Lcom/lge/telephony/LGReferenceCountry;
    const-string v1, "countryindex"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/lge/telephony/LGReferenceCountry;->setIndex(I)V

    .line 223
    const-string v1, "countryname"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lge/telephony/LGReferenceCountry;->setCountryName(Ljava/lang/String;)V

    .line 224
    const-string v1, "mcc"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lge/telephony/LGReferenceCountry;->setMccCode(Ljava/lang/String;)V

    .line 225
    const-string v1, "countrycode"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lge/telephony/LGReferenceCountry;->setCountryCode(Ljava/lang/String;)V

    .line 226
    const-string v1, "iddprefix"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lge/telephony/LGReferenceCountry;->setIddPrefix(Ljava/lang/String;)V

    .line 227
    const-string v1, "nddprefix"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lge/telephony/LGReferenceCountry;->setNddPrefix(Ljava/lang/String;)V

    .line 228
    const-string v1, "nanp"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lge/telephony/LGReferenceCountry;->setNanp(Ljava/lang/String;)V

    .line 229
    const-string v1, "area"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lge/telephony/LGReferenceCountry;->setAreaCode(Ljava/lang/String;)V

    .line 230
    const-string v1, "length"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lge/telephony/LGReferenceCountry;->setNumLength(Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mRefCountryList:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 239
    .end local v8    # "i":I
    .end local v9    # "refCountry":Lcom/lge/telephony/LGReferenceCountry;
    :cond_2
    if-eqz v6, :cond_0

    .line 240
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 236
    :catch_0
    move-exception v7

    .line 237
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    if-eqz v6, :cond_0

    .line 240
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 239
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 240
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private postParse(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "parsedStr"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 189
    const-string v2, "_OR"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 202
    .end local p1    # "parsedStr":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 193
    .restart local p1    # "parsedStr":Ljava/lang/String;
    :cond_0
    const-string v2, "_OR|\\|"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "strArray":[Ljava/lang/String;
    aget-object v2, v1, v5

    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0xa

    aget-object v4, v1, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x7

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "areaCode":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mDataManager:Lcom/lge/telephony/utils/AssistedDialDataManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialDataManager;->getAreaCodeMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    aget-object p1, v1, v5

    goto :goto_0

    .line 202
    :cond_1
    const/4 v2, 0x2

    aget-object p1, v1, v2

    goto :goto_0
.end method

.method private reCreateReferenceCountryList(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 35
    .local v0, "mContentResolver":Landroid/content/ContentResolver;
    sget-object v2, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 36
    const-string v2, "assist_dial_check"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 37
    const-string v2, "area"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "sAreaCode":Ljava/lang/String;
    const-string v2, "AssistedDial"

    const-string v3, "reCreateReferenceCountryList - reCreate assist_dial DB"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-static {v0}, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->initAssistDialCountryDetailList(Landroid/content/ContentResolver;)V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-static {v0, v1}, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->initAssistDialCountryDetailList(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method parseNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 50
    const-string v1, "AssistedDial"

    const-string v2, "parseNumber in AssistDialNumberParserVZW"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mRefCountryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 52
    invoke-direct/range {p0 .. p0}, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->loadAllCountryForAssistedDial()V

    .line 54
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mRefCountryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 55
    const-string v1, "AssistedDial"

    const-string v2, "Setting DB needs to be recreated!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->reCreateReferenceCountryList(Landroid/content/Context;)V

    .line 57
    invoke-direct/range {p0 .. p0}, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->loadAllCountryForAssistedDial()V

    .line 60
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assist_dial_new_number_check"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 62
    const-string v1, "cdma"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentRadioTech()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "roaming"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentRoamingStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "contact"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentDialingPoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "assist_on"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentAssistDialProperty()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 67
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefNDDPrefix()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaNDDPrefix()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 68
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefNumLength()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v3}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefNDDPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    if-ne v1, v2, :cond_5

    .line 70
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountryCode()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 71
    const-string v1, "AssistedDial"

    const-string v2, "Case 3-1"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local p1    # "dialStr":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object p1

    .line 75
    .restart local p1    # "dialStr":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefNDDPrefix()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 76
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefNDDPrefix()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v3}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaIDDPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v3}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 80
    .local v15, "newStr":Ljava/lang/String;
    :goto_1
    const-string v1, "AssistedDial"

    const-string v2, "Case 3-2"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assist_dial_new_number_check"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 p1, v15

    .line 82
    goto :goto_0

    .line 78
    .end local v15    # "newStr":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaNDDPrefix()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v3}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaIDDPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v3}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "newStr":Ljava/lang/String;
    goto :goto_1

    .line 88
    .end local v15    # "newStr":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefNumLength()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountryCode()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 90
    const-string v1, "AssistedDial"

    const-string v2, "Case 4"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assist_dial_new_number_check"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaIDDPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 97
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefNumLength()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v3}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefAreaCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountryCode()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 99
    const-string v1, "AssistedDial"

    const-string v2, "Case 5"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assist_dial_new_number_check"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaIDDPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefAreaCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 106
    :cond_7
    const-string v1, "cdma"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentRadioTech()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "home"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentRoamingStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "contact"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentDialingPoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "assist_on"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentAssistDialProperty()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 116
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-le v1, v2, :cond_d

    .line 117
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mRefCountryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_8

    .line 118
    invoke-direct/range {p0 .. p0}, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->loadAllCountryForAssistedDial()V

    .line 121
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaIDDPrefix()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 124
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefIDDPrefix()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 126
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getRefIDDPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 129
    .local v16, "secondPart":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "countryIndex":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mRefCountryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_d

    .line 130
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mRefCountryList:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lge/telephony/LGReferenceCountry;

    .line 132
    .local v11, "country":Lcom/lge/telephony/LGReferenceCountry;
    invoke-virtual {v11}, Lcom/lge/telephony/LGReferenceCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    invoke-virtual {v11}, Lcom/lge/telephony/LGReferenceCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assist_dial_new_number_check"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaIDDPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 129
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 142
    .end local v11    # "country":Lcom/lge/telephony/LGReferenceCountry;
    .end local v12    # "countryIndex":I
    .end local v16    # "secondPart":Ljava/lang/String;
    :cond_a
    const-string v1, "AssistedDial"

    const-string v2, "exhaustive matching"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v14, 0x0

    .local v14, "iddIndex":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mRefCountryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v14, v1, :cond_d

    .line 144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mRefCountryList:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lge/telephony/LGReferenceCountry;

    .line 146
    .local v13, "iddCountry":Lcom/lge/telephony/LGReferenceCountry;
    invoke-virtual {v13}, Lcom/lge/telephony/LGReferenceCountry;->getIddPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_c

    invoke-virtual {v13}, Lcom/lge/telephony/LGReferenceCountry;->getIddPrefix()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 149
    invoke-virtual {v13}, Lcom/lge/telephony/LGReferenceCountry;->getIddPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 151
    .restart local v16    # "secondPart":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "ccIndex":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mRefCountryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_c

    .line 152
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mRefCountryList:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lge/telephony/LGReferenceCountry;

    .line 154
    .local v9, "ccCountry":Lcom/lge/telephony/LGReferenceCountry;
    invoke-virtual {v9}, Lcom/lge/telephony/LGReferenceCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    invoke-virtual {v9}, Lcom/lge/telephony/LGReferenceCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 161
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assist_dial_new_number_check"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getOtaIDDPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 151
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 143
    .end local v9    # "ccCountry":Lcom/lge/telephony/LGReferenceCountry;
    .end local v10    # "ccIndex":I
    .end local v16    # "secondPart":Ljava/lang/String;
    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 171
    .end local v13    # "iddCountry":Lcom/lge/telephony/LGReferenceCountry;
    .end local v14    # "iddIndex":I
    :cond_d
    const-string v1, "assist_off"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v2}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentAssistDialProperty()Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_e

    .line 172
    invoke-super/range {p0 .. p1}, Lcom/lge/telephony/utils/AssistedDialNumberParser;->parseNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->postParse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 176
    :cond_e
    invoke-super/range {p0 .. p1}, Lcom/lge/telephony/utils/AssistedDialNumberParser;->parseNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->postParse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 177
    .local v8, "assistedOnStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentRadioTech()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentRoamingStatus()Ljava/lang/String;

    move-result-object v4

    const-string v5, "assist_off"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mStateMgr:Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;

    invoke-virtual {v1}, Lcom/lge/telephony/utils/AssistedDialPhoneStateManager;->getCurrentDialingPoint()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-super/range {v1 .. v6}, Lcom/lge/telephony/utils/AssistedDialNumberParser;->parseNumberFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->postParse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 180
    .local v7, "assistedOffStr":Ljava/lang/String;
    const-string v1, "AssistedDial"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", offStr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 183
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/telephony/utils/AssistedDialNumberParserVZW;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assist_dial_new_number_check"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_f
    move-object/from16 p1, v8

    .line 185
    goto/16 :goto_0
.end method
