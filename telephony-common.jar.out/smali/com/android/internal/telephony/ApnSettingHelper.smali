.class public Lcom/android/internal/telephony/ApnSettingHelper;
.super Ljava/lang/Object;
.source "ApnSettingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ApnSettingHelper$enum_APN_class;
    }
.end annotation


# static fields
.field private static final APN_TABLE_URI:Landroid/net/Uri;

.field private static final NUMBER_OF_APN_AT_CMD_PARAM:I = 0x7

.field private static final VZW_MCCMNC:Ljava/lang/String; = "311480"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private apnMcc:Ljava/lang/String;

.field private apnMnc:Ljava/lang/String;

.field private apnNumeric:Ljava/lang/String;

.field private apnb:Ljava/lang/String;

.field private apncl:Ljava/lang/String;

.field private apnclName:Ljava/lang/String;

.field private apned:Ljava/lang/String;

.field private apnni:Ljava/lang/String;

.field private apntime:Ljava/lang/String;

.field private apntypeipv4v6:Ljava/lang/String;

.field private isSimRead:I

.field private isVZW:I

.field private isValidate:I

.field private wapn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ApnSettingHelper;->APN_TABLE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    sput-object p1, Lcom/android/internal/telephony/ApnSettingHelper;->mContext:Landroid/content/Context;

    .line 97
    iput v0, p0, Lcom/android/internal/telephony/ApnSettingHelper;->isSimRead:I

    .line 98
    iput v0, p0, Lcom/android/internal/telephony/ApnSettingHelper;->isValidate:I

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/ApnSettingHelper;->isVZW:I

    .line 101
    invoke-direct {p0}, Lcom/android/internal/telephony/ApnSettingHelper;->setMccMnc()I

    .line 102
    return-void
.end method

.method private setMccMnc()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 237
    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnNumeric:Ljava/lang/String;

    .line 240
    iget-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnNumeric:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnNumeric:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v3, :cond_1

    .line 241
    :cond_0
    const-string v0, "VZWAPN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ApnSettingHelper::setMccMnc] couldn\'t get the numeric from system. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnNumeric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iput v1, p0, Lcom/android/internal/telephony/ApnSettingHelper;->isSimRead:I

    move v0, v1

    .line 257
    :goto_0
    return v0

    .line 249
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnNumeric:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnMcc:Ljava/lang/String;

    .line 250
    iget-object v1, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnNumeric:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnMnc:Ljava/lang/String;

    .line 252
    const-string v1, "VZWAPN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ApnSettingHelper::setMccMnc] apnNumeric : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnNumeric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", apnMcc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnMcc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", apnMnc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnMnc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iput v0, p0, Lcom/android/internal/telephony/ApnSettingHelper;->isSimRead:I

    goto :goto_0
.end method


# virtual methods
.method public apnQuery()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\') "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "where":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/telephony/ApnSettingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/ApnSettingHelper;->APN_TABLE_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 114
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 115
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 116
    .local v8, "numberOfApns":I
    const-string v0, "VZWAPN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of APNs is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 121
    const-string v0, "VZWAPN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 123
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    .end local v7    # "i":I
    .end local v8    # "numberOfApns":I
    :cond_2
    return-object v6
.end method

.method protected checkValidation([Ljava/lang/String;)I
    .locals 13
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 139
    const/4 v7, 0x0

    .line 140
    .local v7, "tempWapn":I
    const/4 v5, 0x0

    .line 143
    .local v5, "tempApncl":I
    iget-object v8, p0, Lcom/android/internal/telephony/ApnSettingHelper;->wapn:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 144
    if-nez v7, :cond_0

    .line 145
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "WAPN is zero. No action for this AT command."

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 149
    :cond_0
    iget-object v8, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apncl:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 150
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ApnSettingHelper;->getApnclName(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnclName:Ljava/lang/String;

    .line 153
    const/4 v8, 0x4

    new-array v1, v8, [Ljava/lang/String;

    const-string v8, "IP"

    aput-object v8, v1, v11

    const-string v8, "IPv4"

    aput-object v8, v1, v10

    const-string v8, "IPv6"

    aput-object v8, v1, v12

    const/4 v8, 0x3

    const-string v9, "IPv4v6"

    aput-object v9, v1, v8

    .line 154
    .local v1, "availableApntype":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 156
    .local v3, "isValidApnType":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, v1

    if-ge v2, v8, :cond_2

    .line 157
    iget-object v8, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apntypeipv4v6:Ljava/lang/String;

    aget-object v9, v1, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    .line 158
    const/4 v3, 0x1

    .line 156
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    :cond_2
    if-nez v3, :cond_3

    .line 163
    new-instance v8, Ljava/lang/Exception;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "APNTYPE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apntypeipv4v6:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not right"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 166
    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apntypeipv4v6:Ljava/lang/String;

    const-string v9, "IPv4"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_4

    .line 167
    const-string v8, "IP"

    iput-object v8, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apntypeipv4v6:Ljava/lang/String;

    .line 169
    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apntypeipv4v6:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apntypeipv4v6:Ljava/lang/String;

    .line 173
    new-array v0, v12, [Ljava/lang/String;

    const-string v8, "Enabled"

    aput-object v8, v0, v11

    const-string v8, "Disabled"

    aput-object v8, v0, v10

    .line 174
    .local v0, "availableApned":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 176
    .local v4, "isValidApned":I
    const/4 v2, 0x0

    :goto_1
    array-length v8, v0

    if-ge v2, v8, :cond_6

    .line 177
    iget-object v8, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apned:Ljava/lang/String;

    aget-object v9, v0, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_5

    .line 178
    const/4 v4, 0x1

    .line 176
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 182
    :cond_6
    if-nez v4, :cond_7

    .line 183
    new-instance v8, Ljava/lang/Exception;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "APNED "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apned:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not right"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 187
    :cond_7
    iget-object v8, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apntime:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 189
    .local v6, "tempApntime":I
    return v10
.end method

.method public get()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    const-string v0, "TEST"

    .line 447
    .local v0, "abc":Ljava/lang/String;
    return-object v0
.end method

.method public getApnClass(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 311
    const/4 v3, 0x6

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ims"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "admin"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "default"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "vzwapp,mms,cbs"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "vzw800"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "emergency"

    aput-object v4, v2, v3

    .line 314
    .local v2, "type":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 316
    .local v1, "nApnType":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 317
    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 318
    add-int/lit8 v1, v0, 0x1

    .line 316
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getApnb(I)Ljava/lang/String;
    .locals 1
    .param p1, "apnB"    # I

    .prologue
    .line 345
    packed-switch p1, :pswitch_data_0

    .line 353
    const-string v0, "None"

    :goto_0
    return-object v0

    .line 347
    :pswitch_0
    const-string v0, "LTE"

    goto :goto_0

    .line 350
    :pswitch_1
    const-string v0, "EHRPD"

    goto :goto_0

    .line 345
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getApnclName(I)Ljava/lang/String;
    .locals 5
    .param p1, "apnclass"    # I

    .prologue
    .line 290
    const/4 v2, 0x6

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ims"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "admin"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "default"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "vzwapp,mms,cbs"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "vzw800"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "emergency"

    aput-object v3, v1, v2

    .line 293
    .local v1, "type":[Ljava/lang/String;
    array-length v2, v1

    if-ge v2, p1, :cond_0

    if-gtz p1, :cond_0

    .line 294
    const-string v2, "VZWAPN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Coulnd\'t convert "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to Integer."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const-string v0, "NoneAPN"

    .line 301
    .local v0, "returnValue":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 298
    .end local v0    # "returnValue":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, p1, -0x1

    aget-object v0, v1, v2

    .restart local v0    # "returnValue":Ljava/lang/String;
    goto :goto_0
.end method

.method public getApnclName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "apnclass"    # Ljava/lang/String;

    .prologue
    .line 271
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 273
    .local v1, "nApnClass":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ApnSettingHelper;->getApnclName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 280
    .end local v1    # "nApnClass":I
    .local v2, "type":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 275
    .end local v2    # "type":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "VZWAPN"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Coulnd\'t convert "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to Integer."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v2, "none"

    .restart local v2    # "type":Ljava/lang/String;
    goto :goto_0
.end method

.method public getApned(I)Ljava/lang/String;
    .locals 1
    .param p1, "apnEd"    # I

    .prologue
    .line 331
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 332
    const-string v0, "Enabled"

    .line 335
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Disabled"

    goto :goto_0
.end method

.method public set(Ljava/lang/String;)V
    .locals 6
    .param p1, "atCmdRequest"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 201
    const-string v2, "VZWAPN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "string args = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v2, "(\\r|\\n)"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 205
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "args":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    .line 209
    const-string v2, "VZWAPN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AT command Param Number is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iput v5, p0, Lcom/android/internal/telephony/ApnSettingHelper;->isValidate:I

    .line 231
    :goto_0
    return-void

    .line 216
    :cond_0
    aget-object v2, v0, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->wapn:Ljava/lang/String;

    .line 217
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apncl:Ljava/lang/String;

    .line 218
    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnni:Ljava/lang/String;

    .line 219
    const/4 v2, 0x3

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apntypeipv4v6:Ljava/lang/String;

    .line 220
    const/4 v2, 0x4

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnb:Ljava/lang/String;

    .line 221
    const/4 v2, 0x5

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apned:Ljava/lang/String;

    .line 222
    const/4 v2, 0x6

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apntime:Ljava/lang/String;

    .line 226
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ApnSettingHelper;->checkValidation([Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->isValidate:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "VZWAPN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APN AT CMD PARAM IS NOT RIGHT. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iput v5, p0, Lcom/android/internal/telephony/ApnSettingHelper;->isValidate:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 17

    .prologue
    .line 453
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14}, Ljava/lang/String;-><init>()V

    .line 454
    .local v14, "apns":Ljava/lang/String;
    const-string v7, ", "

    .line 456
    .local v7, "SEPERATOR":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/ApnSettingHelper;->isSimRead:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 457
    const-string v1, "VZWAPN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ApnSettingHelper::toString] sim information is not valid. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/ApnSettingHelper;->apnNumeric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const-string v1, "SIM is not initialized"

    .line 495
    :goto_0
    return-object v1

    .line 462
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ApnSettingHelper;->apnQuery()Landroid/database/Cursor;

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (numeric = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ApnSettingHelper;->apnNumeric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\') "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 465
    .local v4, "where":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/ApnSettingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/ApnSettingHelper;->APN_TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 468
    .local v15, "c":Landroid/database/Cursor;
    if-eqz v15, :cond_2

    .line 469
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 470
    .local v16, "numberOfApns":I
    const-string v1, "VZWAPN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of APNs is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 476
    :cond_1
    const-string v1, "apn"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 477
    .local v10, "apnName":Ljava/lang/String;
    const-string v1, "type"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 478
    .local v11, "apnType":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/ApnSettingHelper;->getApnClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 479
    .local v13, "apncl":Ljava/lang/String;
    const-string v1, "carrier_enabled"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ApnSettingHelper;->getApned(I)Ljava/lang/String;

    move-result-object v9

    .line 480
    .local v9, "apnEd":Ljava/lang/String;
    const-string v1, "bearer"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ApnSettingHelper;->getApnb(I)Ljava/lang/String;

    move-result-object v8

    .line 481
    .local v8, "apnB":Ljava/lang/String;
    const-string v1, "protocol"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 483
    .local v12, "apnTypeIpv4v6":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 489
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 493
    .end local v8    # "apnB":Ljava/lang/String;
    .end local v9    # "apnEd":Ljava/lang/String;
    .end local v10    # "apnName":Ljava/lang/String;
    .end local v11    # "apnType":Ljava/lang/String;
    .end local v12    # "apnTypeIpv4v6":Ljava/lang/String;
    .end local v13    # "apncl":Ljava/lang/String;
    .end local v16    # "numberOfApns":I
    :cond_2
    const-string v1, "VZWAPN"

    invoke-static {v1, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v14

    .line 495
    goto/16 :goto_0
.end method

.method public update()I
    .locals 13

    .prologue
    const/4 v4, 0x1

    const/4 v12, 0x0

    const/4 v0, 0x0

    .line 367
    const/4 v10, 0x0

    .line 368
    .local v10, "result":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (numeric = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnNumeric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and type =\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnclName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\') "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 371
    .local v3, "where":Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/telephony/ApnSettingHelper;->isSimRead:I

    if-eq v1, v4, :cond_1

    .line 372
    const-string v1, "VZWAPN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ApnSettingHelper::update] sim information is not valid. "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnNumeric:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_0
    :goto_0
    return v0

    .line 377
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/ApnSettingHelper;->isValidate:I

    if-eqz v1, :cond_0

    .line 381
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 382
    .local v11, "values":Landroid/content/ContentValues;
    const-string v1, "type"

    iget-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnclName:Ljava/lang/String;

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnb:Ljava/lang/String;

    const-string v2, "LTE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 386
    const-string v1, "bearer"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 393
    :goto_1
    const-string v1, "mcc"

    iget-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnMcc:Ljava/lang/String;

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v1, "mnc"

    iget-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnMnc:Ljava/lang/String;

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v1, "numeric"

    iget-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnNumeric:Ljava/lang/String;

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v1, "current"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 397
    const-string v1, "authtype"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 398
    const-string v1, "roaming_protocol"

    const-string v2, "IPV4V6"

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v1, "name"

    iget-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnni:Ljava/lang/String;

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v1, "apn"

    iget-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnni:Ljava/lang/String;

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v1, "protocol"

    iget-object v2, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apntypeipv4v6:Ljava/lang/String;

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v1, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apned:Ljava/lang/String;

    const-string v2, "Enabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    .line 404
    const-string v0, "carrier_enabled"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 409
    :goto_2
    const/4 v6, 0x0

    .line 410
    .local v6, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 413
    .local v9, "numOfResult":I
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/ApnSettingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/ApnSettingHelper;->APN_TABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 418
    :goto_3
    if-eqz v6, :cond_2

    .line 419
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 422
    :cond_2
    const-string v0, "VZWAPN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    if-eqz v6, :cond_7

    if-eqz v9, :cond_7

    .line 425
    sget-object v0, Lcom/android/internal/telephony/ApnSettingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/ApnSettingHelper;->APN_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11, v3, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 426
    const-string v0, "VZWAPN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated APN is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_3
    :goto_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/ApnSettingHelper;->apnQuery()Landroid/database/Cursor;

    .line 438
    const/4 v10, 0x1

    move v0, v10

    .line 440
    goto/16 :goto_0

    .line 387
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v9    # "numOfResult":I
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/ApnSettingHelper;->apnb:Ljava/lang/String;

    const-string v2, "EHRPD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    .line 388
    const-string v1, "bearer"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 390
    :cond_5
    const-string v1, "bearer"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 406
    :cond_6
    const-string v1, "carrier_enabled"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 414
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v9    # "numOfResult":I
    :catch_0
    move-exception v7

    .line 415
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "VZWAPN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception.SQL + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 429
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_7
    sget-object v0, Lcom/android/internal/telephony/ApnSettingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 431
    .local v8, "newUrl":Landroid/net/Uri;
    if-eqz v8, :cond_3

    .line 432
    const-string v0, "VZWAPN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New Added APN is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
