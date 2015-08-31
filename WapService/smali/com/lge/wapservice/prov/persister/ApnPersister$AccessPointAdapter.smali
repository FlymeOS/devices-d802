.class public Lcom/lge/wapservice/prov/persister/ApnPersister$AccessPointAdapter;
.super Ljava/lang/Object;
.source "ApnPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wapservice/prov/persister/ApnPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessPointAdapter"
.end annotation


# direct methods
.method private static addFotaFields(Landroid/content/Context;ILandroid/content/ContentValues;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I
    .param p2, "accessPoint"    # Landroid/content/ContentValues;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 482
    move-object v0, p3

    .line 483
    .local v0, "newType":Ljava/lang/String;
    invoke-static {p0}, Lcom/lge/wapservice/prov/persister/ApnPersister$AccessPointAdapter;->canUseAllType(Landroid/content/Context;)Z

    move-result v2

    .line 485
    .local v2, "useAllType":Z
    if-eqz p3, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "default"

    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_2

    const-string v4, "mms"

    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_2

    if-eqz v2, :cond_2

    .line 486
    :cond_0
    const-string v0, ""

    .line 490
    :cond_1
    :goto_0
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v6, p1

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 491
    .local v1, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 492
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "type"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v1, v3, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 494
    return-void

    .line 487
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_2
    const-string v4, "fota"

    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_1

    .line 488
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",fota"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static addMMSFields(Landroid/content/Context;ILandroid/content/ContentValues;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I
    .param p2, "accessPoint"    # Landroid/content/ContentValues;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 463
    move-object v0, p3

    .line 464
    .local v0, "newType":Ljava/lang/String;
    invoke-static {p0}, Lcom/lge/wapservice/prov/persister/ApnPersister$AccessPointAdapter;->canUseAllType(Landroid/content/Context;)Z

    move-result v2

    .line 466
    .local v2, "useAllType":Z
    if-eqz p3, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "default"

    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_2

    if-eqz v2, :cond_2

    .line 467
    :cond_0
    const-string v0, ""

    .line 472
    :cond_1
    :goto_0
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v6, p1

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 473
    .local v1, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 474
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "type"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v5, "mmsc"

    const-string v4, "mmsc"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v5, "mmsproxy"

    const-string v4, "mmsproxy"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v5, "mmsport"

    const-string v4, "mmsport"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v1, v3, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 479
    return-void

    .line 468
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_2
    const-string v4, "mms"

    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_1

    .line 469
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static addWebFields(Landroid/content/Context;ILandroid/content/ContentValues;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I
    .param p2, "accessPoint"    # Landroid/content/ContentValues;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 445
    move-object v0, p3

    .line 446
    .local v0, "newType":Ljava/lang/String;
    invoke-static {p0}, Lcom/lge/wapservice/prov/persister/ApnPersister$AccessPointAdapter;->canUseAllType(Landroid/content/Context;)Z

    move-result v2

    .line 448
    .local v2, "useAllType":Z
    if-eqz p3, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "mms"

    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_2

    if-eqz v2, :cond_2

    .line 449
    :cond_0
    const-string v0, ""

    .line 454
    :cond_1
    :goto_0
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v6, p1

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 455
    .local v1, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 456
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "type"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v5, "proxy"

    const-string v4, "proxy"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v5, "port"

    const-string v4, "port"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v1, v3, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 460
    return-void

    .line 450
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_2
    const-string v4, "default"

    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_1

    .line 451
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "default,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static canUseAllType(Landroid/content/Context;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 411
    const/4 v7, 0x1

    .line 412
    .local v7, "ret":Z
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 415
    .local v8, "telephonyManager":Landroid/telephony/TelephonyManager;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric =\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/lge/wapservice/prov/persister/ApnPersister;->mSubId:J
    invoke-static {}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$200()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/lge/telephony/provider/TelephonyProxy$Carriers;->getNumeric(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and mvno_type =\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/lge/wapservice/prov/persister/ApnPersister;->mSubId:J
    invoke-static {}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$200()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/lge/telephony/provider/TelephonyProxy$Carriers;->getMvnoType(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and mvno_match_data =\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/lge/wapservice/prov/persister/ApnPersister;->mSubId:J
    invoke-static {}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$200()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/lge/telephony/provider/TelephonyProxy$Carriers;->getMvnoData(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 418
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "type"

    aput-object v0, v2, v10

    .line 420
    .local v2, "columns":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 422
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 423
    const-string v0, "[canUseAllType] cursor is null"

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->loge(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$000(Ljava/lang/String;)V

    move v0, v10

    .line 441
    :goto_0
    return v0

    .line 426
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 428
    const/4 v9, 0x0

    .line 429
    .local v9, "type":Ljava/lang/String;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 430
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 431
    if-eqz v9, :cond_2

    const-string v0, ""

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "default"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mms"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "default,mms"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mms,default"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 434
    const/4 v7, 0x0

    .line 440
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 441
    goto :goto_0

    .line 437
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1
.end method

.method private static getProfileIndexWithTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x1

    const/4 v9, 0x0

    .line 608
    const/4 v7, 0x0

    .line 609
    .local v7, "index":Ljava/lang/String;
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 612
    .local v8, "telephonyManager":Landroid/telephony/TelephonyManager;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric =\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/lge/wapservice/prov/persister/ApnPersister;->mSubId:J
    invoke-static {}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$200()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/lge/telephony/provider/TelephonyProxy$Carriers;->getNumeric(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and mvno_type =\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/lge/wapservice/prov/persister/ApnPersister;->mSubId:J
    invoke-static {}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$200()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/lge/telephony/provider/TelephonyProxy$Carriers;->getMvnoType(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and mvno_match_data =\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/lge/wapservice/prov/persister/ApnPersister;->mSubId:J
    invoke-static {}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$200()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/lge/telephony/provider/TelephonyProxy$Carriers;->getMvnoData(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and name =\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 616
    .local v3, "selection":Ljava/lang/String;
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    .line 617
    .local v2, "columns":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getProfileIndexWithTitle] selection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$300(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 621
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 622
    const-string v0, "[getProfileIndexWithTitle] cursor is null"

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->loge(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$000(Ljava/lang/String;)V

    .line 640
    :goto_0
    return-object v4

    .line 627
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 628
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v12, :cond_1

    .line 629
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getProfileIndexWithTitle] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " profile\'s ID is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$300(Ljava/lang/String;)V

    .line 638
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v4, v7

    .line 640
    goto :goto_0

    .line 632
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v12, :cond_2

    .line 633
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getProfileIndexWithTitle] Multiple "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " profile exist, hence the first\'s ID is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$300(Ljava/lang/String;)V

    goto :goto_1

    .line 636
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getProfileIndexWithTitle ]Fail to find "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " profile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$300(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static make(Landroid/content/Context;Ljava/lang/String;Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;Lcom/lge/wapservice/prov/oma/AccessPoint;)Landroid/content/ContentValues;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "provisioningDoc"    # Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;
    .param p3, "napdef"    # Lcom/lge/wapservice/prov/oma/AccessPoint;

    .prologue
    .line 347
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/lge/wapservice/prov/oma/AccessPoint;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 349
    :cond_0
    const-string v1, "make() Apn is invalid"

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->logw(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$100(Ljava/lang/String;)V

    .line 350
    const/4 v0, 0x0

    .line 355
    :goto_0
    return-object v0

    .line 353
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/lge/wapservice/prov/persister/ApnPersister$AccessPointAdapter;->makeProfile(Landroid/content/Context;Ljava/lang/String;Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;Lcom/lge/wapservice/prov/oma/AccessPoint;)Landroid/content/ContentValues;

    move-result-object v0

    .line 355
    .local v0, "contentValues":Landroid/content/ContentValues;
    goto :goto_0
.end method

.method public static make(Landroid/content/Context;Ljava/lang/String;Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;Lcom/lge/wapservice/prov/oma/AccessPoint;Lcom/lge/wapservice/prov/oma/Application;)Landroid/content/ContentValues;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "provisioningDoc"    # Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;
    .param p3, "napdef"    # Lcom/lge/wapservice/prov/oma/AccessPoint;
    .param p4, "application"    # Lcom/lge/wapservice/prov/oma/Application;

    .prologue
    .line 374
    invoke-static {p0, p1, p2, p3}, Lcom/lge/wapservice/prov/persister/ApnPersister$AccessPointAdapter;->make(Landroid/content/Context;Ljava/lang/String;Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;Lcom/lge/wapservice/prov/oma/AccessPoint;)Landroid/content/ContentValues;

    move-result-object v0

    .line 376
    .local v0, "contentValues":Landroid/content/ContentValues;
    if-nez v0, :cond_0

    .line 377
    const/4 v0, 0x0

    .line 390
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    :goto_0
    return-object v0

    .line 380
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    :cond_0
    const-string v1, "fota"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    invoke-static {p0, p4}, Lcom/lge/wapservice/prov/persister/SyncMLDMPersister;->populateSyncMLDM(Landroid/content/Context;Lcom/lge/wapservice/prov/oma/Application;)Landroid/os/Bundle;

    goto :goto_0

    .line 382
    :cond_1
    const-string v1, "mms"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 383
    iget-object v1, p2, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->proxies:Ljava/util/HashMap;

    iget-object v2, p4, Lcom/lge/wapservice/prov/oma/Application;->to_proxy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/wapservice/prov/oma/Proxy;

    invoke-static {v0, p4, v1}, Lcom/lge/wapservice/prov/persister/MMSPersister;->populateMmsProxy(Landroid/content/ContentValues;Lcom/lge/wapservice/prov/oma/Application;Lcom/lge/wapservice/prov/oma/Proxy;)V

    goto :goto_0

    .line 386
    :cond_2
    iget-object v1, p2, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->proxies:Ljava/util/HashMap;

    iget-object v2, p4, Lcom/lge/wapservice/prov/oma/Application;->to_proxy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/wapservice/prov/oma/Proxy;

    invoke-static {p0, v0, v1}, Lcom/lge/wapservice/prov/persister/BrowserPersister;->populateBrowserProxy(Landroid/content/Context;Landroid/content/ContentValues;Lcom/lge/wapservice/prov/oma/Proxy;)V

    goto :goto_0
.end method

.method public static make(Landroid/content/Context;Ljava/lang/String;Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;Lcom/lge/wapservice/prov/oma/AccessPoint;Lcom/lge/wapservice/prov/oma/Proxy;)Landroid/content/ContentValues;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "provisioningDoc"    # Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;
    .param p3, "napdef"    # Lcom/lge/wapservice/prov/oma/AccessPoint;
    .param p4, "proxy"    # Lcom/lge/wapservice/prov/oma/Proxy;

    .prologue
    .line 360
    invoke-static {p0, p1, p2, p3}, Lcom/lge/wapservice/prov/persister/ApnPersister$AccessPointAdapter;->make(Landroid/content/Context;Ljava/lang/String;Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;Lcom/lge/wapservice/prov/oma/AccessPoint;)Landroid/content/ContentValues;

    move-result-object v0

    .line 362
    .local v0, "contentValues":Landroid/content/ContentValues;
    if-nez v0, :cond_1

    .line 363
    const/4 v0, 0x0

    .line 369
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-object v0

    .line 365
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    :cond_1
    if-eqz p4, :cond_0

    const-string v1, "mms"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fota"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 366
    invoke-static {p0, v0, p4}, Lcom/lge/wapservice/prov/persister/BrowserPersister;->populateBrowserProxy(Landroid/content/Context;Landroid/content/ContentValues;Lcom/lge/wapservice/prov/oma/Proxy;)V

    goto :goto_0
.end method

.method private static makeProfile(Landroid/content/Context;Ljava/lang/String;Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;Lcom/lge/wapservice/prov/oma/AccessPoint;)Landroid/content/ContentValues;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "proDoc"    # Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;
    .param p3, "apn"    # Lcom/lge/wapservice/prov/oma/AccessPoint;

    .prologue
    const/4 v7, 0x0

    .line 247
    const/4 v3, 0x0

    .line 248
    .local v3, "numeric":Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    const/16 v6, 0x14

    invoke-direct {v4, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 250
    .local v4, "ret":Landroid/content/ContentValues;
    iget-object v6, p3, Lcom/lge/wapservice/prov/oma/AccessPoint;->name:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 251
    const-string v6, "name"

    iget-object v8, p3, Lcom/lge/wapservice/prov/oma/AccessPoint;->name:Ljava/lang/String;

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :goto_0
    iget-object v6, p2, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->mcc:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p2, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->mnc:Ljava/lang/String;

    if-nez v6, :cond_3

    .line 264
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MCC or MNC of new Profile is null, new mcc: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p2, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->mcc:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", new mnc: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p2, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->mnc:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->loge(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$000(Ljava/lang/String;)V

    .line 341
    :goto_1
    return-object v7

    .line 254
    :cond_1
    const/4 v1, 0x0

    .line 255
    .local v1, "index":I
    const-string v2, ""

    .line 258
    .local v2, "name":Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-static {p0, v2}, Lcom/lge/wapservice/prov/persister/ApnPersister$AccessPointAdapter;->getProfileIndexWithTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 260
    const-string v6, "name"

    invoke-virtual {v4, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    .end local v1    # "index":I
    .end local v2    # "name":Ljava/lang/String;
    :cond_3
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 271
    .local v5, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/lge/wapservice/utils/DualSIM_Helper;->supportMultiSIM()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 273
    invoke-static {}, Lcom/lge/wapservice/utils/DualSIM_Helper;->getSimID()I

    move-result v6

    invoke-static {v6}, Lcom/lge/wapservice/utils/DualSIM_Helper;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    .line 278
    :goto_2
    if-eqz v3, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p2, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->mcc:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p2, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->mnc:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 279
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The current numeric is different with new APN\'s, current: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", new : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p2, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->mcc:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p2, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->mnc:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->logw(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$100(Ljava/lang/String;)V

    .line 280
    const-string v8, "current"

    move-object v6, v7

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v4, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 285
    :goto_3
    const-string v6, "mcc"

    iget-object v8, p2, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->mcc:Ljava/lang/String;

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v6, "mnc"

    iget-object v8, p2, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->mnc:Ljava/lang/String;

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v6, "numeric"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p2, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->mcc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->mnc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v6, p3, Lcom/lge/wapservice/prov/oma/AccessPoint;->address:Ljava/lang/String;

    if-nez v6, :cond_6

    .line 290
    const-string v6, "APN new Profile is null"

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->loge(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$000(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 276
    :cond_4
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 283
    :cond_5
    const-string v6, "current"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 293
    :cond_6
    const-string v6, "apn"

    iget-object v8, p3, Lcom/lge/wapservice/prov/oma/AccessPoint;->address:Ljava/lang/String;

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v6, p3, Lcom/lge/wapservice/prov/oma/AccessPoint;->user:Ljava/lang/String;

    if-eqz v6, :cond_8

    .line 296
    const-string v6, "user"

    iget-object v8, p3, Lcom/lge/wapservice/prov/oma/AccessPoint;->user:Ljava/lang/String;

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :goto_4
    iget-object v6, p3, Lcom/lge/wapservice/prov/oma/AccessPoint;->password:Ljava/lang/String;

    if-eqz v6, :cond_9

    .line 301
    const-string v6, "password"

    iget-object v8, p3, Lcom/lge/wapservice/prov/oma/AccessPoint;->password:Ljava/lang/String;

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :goto_5
    const/4 v0, 0x0

    .line 307
    .local v0, "auth_type":I
    const-string v6, "PAP"

    iget-object v8, p3, Lcom/lge/wapservice/prov/oma/AccessPoint;->authType:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 308
    const/4 v0, 0x1

    .line 312
    :cond_7
    :goto_6
    const-string v6, "authtype"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 313
    const-string v6, "server"

    const-string v8, ""

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v6, "proxy"

    const-string v8, ""

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v6, "port"

    const-string v8, ""

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v6, "mmsproxy"

    const-string v8, ""

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v6, "mmsport"

    const-string v8, ""

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v6, "mmsc"

    const-string v8, ""

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v6, "default"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "mms"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "fota"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 321
    const-string v6, "OTA can support only default, mms or fota now"

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->loge(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$000(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 298
    .end local v0    # "auth_type":I
    :cond_8
    const-string v6, "user"

    const-string v8, ""

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 303
    :cond_9
    const-string v6, "password"

    const-string v8, ""

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 309
    .restart local v0    # "auth_type":I
    :cond_a
    const-string v6, "CHAP"

    iget-object v8, p3, Lcom/lge/wapservice/prov/oma/AccessPoint;->authType:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 310
    const/4 v0, 0x2

    goto :goto_6

    .line 324
    :cond_b
    const-string v6, "type"

    invoke-virtual {v4, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v6, "IPV4"

    iget-object v7, p3, Lcom/lge/wapservice/prov/oma/AccessPoint;->nap_addresstype:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "IP"

    iget-object v7, p3, Lcom/lge/wapservice/prov/oma/AccessPoint;->nap_addresstype:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 328
    :cond_c
    const-string v6, "protocol"

    const-string v7, "IP"

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_d
    :goto_7
    const-string v6, "mvno_type"

    # getter for: Lcom/lge/wapservice/prov/persister/ApnPersister;->mSubId:J
    invoke-static {}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$200()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/lge/telephony/provider/TelephonyProxy$Carriers;->getMvnoType(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v6, "mvno_match_data"

    # getter for: Lcom/lge/wapservice/prov/persister/ApnPersister;->mSubId:J
    invoke-static {}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$200()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/lge/telephony/provider/TelephonyProxy$Carriers;->getMvnoData(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v6, "defaultsetting"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 339
    const-string v6, "usercreatesetting"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object v7, v4

    .line 341
    goto/16 :goto_1

    .line 329
    :cond_e
    const-string v6, "IP"

    iget-object v7, p3, Lcom/lge/wapservice/prov/oma/AccessPoint;->nap_addresstype:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 330
    const-string v6, "protocol"

    const-string v7, "IPV6"

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 331
    :cond_f
    const-string v6, "IPV4V6"

    iget-object v7, p3, Lcom/lge/wapservice/prov/oma/AccessPoint;->nap_addresstype:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 332
    const-string v6, "protocol"

    const-string v7, "IPV4V6"

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method private static removeFotaFields(Landroid/content/Context;ILjava/lang/String;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 578
    const-string v3, ""

    .line 579
    .local v3, "newType":Ljava/lang/String;
    invoke-static {p0}, Lcom/lge/wapservice/prov/persister/ApnPersister$AccessPointAdapter;->canUseAllType(Landroid/content/Context;)Z

    move-result v7

    .line 581
    .local v7, "useAllType":Z
    if-eqz p2, :cond_0

    const-string v9, ""

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 582
    :cond_0
    if-eqz v7, :cond_2

    .line 583
    const-string v3, "default,mms"

    .line 600
    :cond_1
    :goto_0
    sget-object v9, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v10, p1

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 601
    .local v6, "uri":Landroid/net/Uri;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 602
    .local v8, "values":Landroid/content/ContentValues;
    const-string v9, "type"

    invoke-virtual {v8, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v6, v8, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 604
    return-void

    .line 585
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_2
    const-string v3, "default,mms,supl,dun"

    goto :goto_0

    .line 588
    :cond_3
    const-string v9, ","

    invoke-virtual {p2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 589
    .local v5, "types":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 590
    .local v4, "t":Ljava/lang/String;
    const-string v9, "fota"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 591
    const-string v9, ""

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 592
    move-object v3, v4

    .line 589
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 594
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method private static removeMMSFields(Landroid/content/Context;ILjava/lang/String;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 528
    const-string v7, ""

    .line 529
    .local v7, "newType":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/lge/wapservice/prov/persister/ApnPersister$AccessPointAdapter;->canUseAllType(Landroid/content/Context;)Z

    move-result v13

    .line 532
    .local v13, "useAllType":Z
    const-string v15, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 535
    .local v10, "telephonyManager":Landroid/telephony/TelephonyManager;
    # getter for: Lcom/lge/wapservice/prov/persister/ApnPersister;->mSubId:J
    invoke-static {}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$200()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/lge/telephony/provider/TelephonyProxy$Carriers;->getNumeric(J)Ljava/lang/String;

    move-result-object v8

    .line 536
    .local v8, "numeric":Ljava/lang/String;
    # getter for: Lcom/lge/wapservice/prov/persister/ApnPersister;->mSubId:J
    invoke-static {}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$200()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/lge/telephony/provider/TelephonyProxy$Carriers;->getMvnoType(J)Ljava/lang/String;

    move-result-object v6

    .line 537
    .local v6, "mvnoType":Ljava/lang/String;
    # getter for: Lcom/lge/wapservice/prov/persister/ApnPersister;->mSubId:J
    invoke-static {}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$200()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/lge/telephony/provider/TelephonyProxy$Carriers;->getMvnoData(J)Ljava/lang/String;

    move-result-object v5

    .line 539
    .local v5, "mvnoData":Ljava/lang/String;
    if-eqz p2, :cond_0

    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 540
    :cond_0
    if-eqz v13, :cond_4

    .line 541
    const-string v7, "default"

    .line 558
    :cond_1
    :goto_0
    sget-object v15, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v15 .. v17}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 559
    .local v12, "uri":Landroid/net/Uri;
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 560
    .local v14, "values":Landroid/content/ContentValues;
    const-string v15, "type"

    invoke-virtual {v14, v15, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v15, "21403"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    const-string v15, "imsi"

    invoke-virtual {v15, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    if-eqz v5, :cond_2

    const-string v15, "2140359"

    invoke-virtual {v5, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_8

    :cond_2
    const-string v15, "21406"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    const-string v15, "gid"

    invoke-virtual {v15, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    const-string v15, "0008"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    :cond_3
    const-string v15, "21408"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    const-string v15, "21407"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 567
    const-string v15, "mmsproxy"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v15, "mmsport"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string v15, "mmsc"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v12, v14, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 574
    return-void

    .line 543
    .end local v12    # "uri":Landroid/net/Uri;
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_4
    const-string v7, "default,supl,fota,dun"

    goto :goto_0

    .line 546
    :cond_5
    const-string v15, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 547
    .local v11, "types":[Ljava/lang/String;
    move-object v2, v11

    .local v2, "arr$":[Ljava/lang/String;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v4, :cond_1

    aget-object v9, v2, v3

    .line 548
    .local v9, "t":Ljava/lang/String;
    const-string v15, "mms"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 549
    const-string v15, ""

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 550
    move-object v7, v9

    .line 547
    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 552
    :cond_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 571
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v9    # "t":Ljava/lang/String;
    .end local v11    # "types":[Ljava/lang/String;
    .restart local v12    # "uri":Landroid/net/Uri;
    .restart local v14    # "values":Landroid/content/ContentValues;
    :cond_8
    const-string v15, "[removeMMSFields] not TLF operator , don\'t delete proxy/port/mmsc"

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->loge(Ljava/lang/String;)V
    invoke-static {v15}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$000(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static updateDefaultProfiles(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accessPoint"    # Landroid/content/ContentValues;

    .prologue
    .line 692
    const-string v4, "name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 693
    .local v20, "newName":Ljava/lang/String;
    const-string v4, "apn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 694
    .local v18, "newApn":Ljava/lang/String;
    const-string v4, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 696
    .local v19, "newApnType":Ljava/lang/String;
    const-string v4, "default"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 697
    const-string v4, "[updateDefaultProfiles] New profile is not default type"

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->logw(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$100(Ljava/lang/String;)V

    .line 779
    :goto_0
    return-void

    .line 702
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/lge/wapservice/prov/persister/ApnPersister$AccessPointAdapter;->getProfileIndexWithTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 705
    .local v22, "sameTitleID":Ljava/lang/String;
    const-string v4, "ro.build.target_operator"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 706
    .local v21, "operatorCode":Ljava/lang/String;
    const-string v4, "ro.build.target_country"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 708
    .local v11, "countryCode":Ljava/lang/String;
    const-string v4, "WIN"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "CA"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 709
    if-eqz v22, :cond_1

    .line 710
    const-string v4, "Canada Wind requests that OTA APN doesn\'t overwritten even if it has same title"

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->logi(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$400(Ljava/lang/String;)V

    .line 712
    :cond_1
    const/16 v22, 0x0

    .line 716
    :cond_2
    if-nez v22, :cond_3

    .line 717
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 718
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateDefaultProfiles] New profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is insrted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->logi(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$400(Ljava/lang/String;)V

    .line 775
    :goto_1
    invoke-static/range {p0 .. p1}, Lcom/lge/wapservice/prov/persister/ApnPersister$AccessPointAdapter;->updatePreferProfile(Landroid/content/Context;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 776
    .end local v11    # "countryCode":Ljava/lang/String;
    .end local v21    # "operatorCode":Ljava/lang/String;
    .end local v22    # "sameTitleID":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 777
    .local v13, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "updateProfiles() : not find index with name because of CursorIndexOutOfBoundsException"

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->loge(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$000(Ljava/lang/String;)V

    goto :goto_0

    .line 722
    .end local v13    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v11    # "countryCode":Ljava/lang/String;
    .restart local v21    # "operatorCode":Ljava/lang/String;
    .restart local v22    # "sameTitleID":Ljava/lang/String;
    :cond_3
    const/4 v14, -0x1

    .line 723
    .local v14, "index":I
    const/16 v17, 0x1

    .line 724
    .local v17, "needToUpdate":Z
    :try_start_1
    const-string v4, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/telephony/TelephonyManager;

    .line 727
    .local v23, "telephonyManager":Landroid/telephony/TelephonyManager;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "numeric =\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/lge/wapservice/prov/persister/ApnPersister;->mSubId:J
    invoke-static {}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$200()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/lge/telephony/provider/TelephonyProxy$Carriers;->getNumeric(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' and mvno_type =\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/lge/wapservice/prov/persister/ApnPersister;->mSubId:J
    invoke-static {}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$200()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/lge/telephony/provider/TelephonyProxy$Carriers;->getMvnoType(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' and mvno_match_data =\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/lge/wapservice/prov/persister/ApnPersister;->mSubId:J
    invoke-static {}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$200()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/lge/telephony/provider/TelephonyProxy$Carriers;->getMvnoData(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 730
    .local v7, "selection":Ljava/lang/String;
    const/4 v4, 0x4

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v6, v4

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v6, v4

    const/4 v4, 0x3

    const-string v5, "type"

    aput-object v5, v6, v4

    .line 733
    .local v6, "columns":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateDefaultProfiles] selection="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$300(Ljava/lang/String;)V

    .line 735
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 737
    .local v12, "cursor":Landroid/database/Cursor;
    if-nez v12, :cond_4

    .line 738
    const-string v4, "[updateDefaultProfiles] cursor is null"

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->loge(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$000(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 742
    :cond_4
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 743
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# of current profiles : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$300(Ljava/lang/String;)V

    .line 744
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_7

    if-eqz v17, :cond_7

    .line 745
    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 746
    .local v15, "key":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 747
    .local v16, "name":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 748
    .local v10, "apn":Ljava/lang/String;
    const/4 v4, 0x3

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 750
    .local v24, "type":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateDefaultProfiles] Updating profile is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "APN:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->logi(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$400(Ljava/lang/String;)V

    .line 753
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 754
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 755
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 756
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v8, v14

    invoke-static {v4, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v25

    .line 757
    .local v25, "uri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1, v5, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 758
    const/16 v17, 0x0

    .line 766
    .end local v25    # "uri":Landroid/net/Uri;
    :cond_5
    :goto_3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    .line 760
    :cond_6
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 761
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-static {v0, v14, v1, v2}, Lcom/lge/wapservice/prov/persister/ApnPersister$AccessPointAdapter;->addWebFields(Landroid/content/Context;ILandroid/content/ContentValues;Ljava/lang/String;)V

    .line 762
    const/16 v17, 0x0

    goto :goto_3

    .line 769
    .end local v10    # "apn":Ljava/lang/String;
    .end local v15    # "key":Ljava/lang/String;
    .end local v16    # "name":Ljava/lang/String;
    .end local v24    # "type":Ljava/lang/String;
    :cond_7
    if-eqz v17, :cond_8

    .line 770
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 772
    :cond_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public static updateFotaProfiles(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accessPoint"    # Landroid/content/ContentValues;

    .prologue
    .line 980
    const-string v4, "name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 981
    .local v19, "newName":Ljava/lang/String;
    const-string v4, "apn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 982
    .local v17, "newApn":Ljava/lang/String;
    const-string v4, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 984
    .local v18, "newApnType":Ljava/lang/String;
    const-string v4, "fota"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 985
    const-string v4, "[updateFotaProfiles] New profile is not fota type"

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->logw(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$100(Ljava/lang/String;)V

    .line 1104
    :goto_0
    return-void

    .line 992
    :cond_0
    :try_start_0
    const-string v4, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/TelephonyManager;

    .line 995
    .local v21, "telephonyManager":Landroid/telephony/TelephonyManager;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "numeric =\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/lge/wapservice/prov/persister/ApnPersister;->mSubId:J
    invoke-static {}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$200()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/lge/telephony/provider/TelephonyProxy$Carriers;->getNumeric(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' and mvno_type =\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/lge/wapservice/prov/persister/ApnPersister;->mSubId:J
    invoke-static {}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$200()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/lge/telephony/provider/TelephonyProxy$Carriers;->getMvnoType(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' and mvno_match_data =\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/lge/wapservice/prov/persister/ApnPersister;->mSubId:J
    invoke-static {}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$200()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/lge/telephony/provider/TelephonyProxy$Carriers;->getMvnoData(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 998
    .local v7, "selection":Ljava/lang/String;
    const/4 v4, 0x4

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v6, v4

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v6, v4

    const/4 v4, 0x3

    const-string v5, "type"

    aput-object v5, v6, v4

    .line 1001
    .local v6, "columns":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateFotaProfiles] selection="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$300(Ljava/lang/String;)V

    .line 1003
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1005
    .local v11, "cursor":Landroid/database/Cursor;
    if-nez v11, :cond_1

    .line 1006
    const-string v4, "[updateFotaProfiles] cursor is null"

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->loge(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$000(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1101
    .end local v6    # "columns":[Ljava/lang/String;
    .end local v7    # "selection":Ljava/lang/String;
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v21    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v12

    .line 1102
    .local v12, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "[updateMMSProfiles] cannot find index with name because of CursorIndexOutOfBoundsException"

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->loge(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$000(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1010
    .end local v12    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v6    # "columns":[Ljava/lang/String;
    .restart local v7    # "selection":Ljava/lang/String;
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v21    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1011
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateFotaProfiles] # of current profiles : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$300(Ljava/lang/String;)V

    .line 1013
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/lge/wapservice/prov/persister/ApnPersister$AccessPointAdapter;->getProfileIndexWithTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1014
    .local v20, "sameTitleID":Ljava/lang/String;
    if-nez v20, :cond_7

    .line 1017
    const-string v4, "fota"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1018
    const/4 v13, -0x1

    .line 1019
    .local v13, "index":I
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1020
    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1021
    .local v14, "key":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1022
    .local v15, "name":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1023
    .local v10, "apn":Ljava/lang/String;
    const/4 v4, 0x3

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1025
    .local v22, "type":Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1026
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v8, v13

    invoke-static {v4, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    .line 1028
    .local v23, "uri":Landroid/net/Uri;
    const-string v4, "fota"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1029
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v5, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1031
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateFotaProfiles] Profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is deleted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "APN:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->logi(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$400(Ljava/lang/String;)V

    .line 1039
    :cond_2
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 1033
    :cond_3
    const-string v4, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_2

    .line 1034
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v13, v1}, Lcom/lge/wapservice/prov/persister/ApnPersister$AccessPointAdapter;->removeFotaFields(Landroid/content/Context;ILjava/lang/String;)V

    .line 1036
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateFotaProfiles] Profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is updated (Remove FOTA Fields) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "APN:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->logi(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$400(Ljava/lang/String;)V

    goto :goto_2

    .line 1043
    .end local v10    # "apn":Ljava/lang/String;
    .end local v13    # "index":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "name":Ljava/lang/String;
    .end local v22    # "type":Ljava/lang/String;
    .end local v23    # "uri":Landroid/net/Uri;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1100
    :cond_6
    :goto_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1049
    :cond_7
    const/4 v13, -0x1

    .line 1050
    .restart local v13    # "index":I
    const/16 v16, 0x1

    .line 1052
    .local v16, "needToUpdate":Z
    :goto_4
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_f

    .line 1053
    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1054
    .restart local v14    # "key":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1055
    .restart local v15    # "name":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1056
    .restart local v10    # "apn":Ljava/lang/String;
    const/4 v4, 0x3

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1058
    .restart local v22    # "type":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateFotaProfiles] Updating profile is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "APN:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->logi(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$400(Ljava/lang/String;)V

    .line 1061
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1062
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1063
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1065
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v8, v13

    invoke-static {v4, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    .line 1066
    .restart local v23    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1, v5, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1067
    const/16 v16, 0x0

    .line 1092
    .end local v23    # "uri":Landroid/net/Uri;
    :cond_8
    :goto_5
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_4

    .line 1068
    :cond_9
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1069
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-static {v0, v13, v1, v2}, Lcom/lge/wapservice/prov/persister/ApnPersister$AccessPointAdapter;->addFotaFields(Landroid/content/Context;ILandroid/content/ContentValues;Ljava/lang/String;)V

    .line 1070
    const/16 v16, 0x0

    goto :goto_5

    .line 1072
    :cond_a
    const-string v4, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_8

    .line 1073
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v13, v1}, Lcom/lge/wapservice/prov/persister/ApnPersister$AccessPointAdapter;->removeFotaFields(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_5

    .line 1077
    :cond_c
    const-string v4, "fota"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1078
    const-string v4, "fota"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1079
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v8, v13

    invoke-static {v4, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    .line 1080
    .restart local v23    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v5, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1082
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateFotaProfiles] Profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is deleted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "APN:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->logi(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$400(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1084
    .end local v23    # "uri":Landroid/net/Uri;
    :cond_d
    const-string v4, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_8

    .line 1085
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v13, v1}, Lcom/lge/wapservice/prov/persister/ApnPersister$AccessPointAdapter;->removeFotaFields(Landroid/content/Context;ILjava/lang/String;)V

    .line 1087
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateFotaProfiles] Profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is updated (Remove FOTA Fields) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "APN:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->logi(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$400(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1095
    .end local v10    # "apn":Ljava/lang/String;
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "name":Ljava/lang/String;
    .end local v22    # "type":Ljava/lang/String;
    :cond_f
    if-eqz v16, :cond_6

    .line 1096
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public static updateMMSProfiles(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 30
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accessPoint"    # Landroid/content/ContentValues;

    .prologue
    .line 784
    const-string v4, "name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 785
    .local v22, "newName":Ljava/lang/String;
    const-string v4, "apn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 786
    .local v20, "newApn":Ljava/lang/String;
    const-string v4, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 788
    .local v21, "newApnType":Ljava/lang/String;
    const-string v4, "mms"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 789
    const-string v4, "[updateMMSProfiles] New profile is not mms type"

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->logw(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$100(Ljava/lang/String;)V

    .line 974
    :goto_0
    return-void

    .line 796
    :cond_0
    :try_start_0
    const-string v4, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/telephony/TelephonyManager;

    .line 798
    .local v26, "telephonyManager":Landroid/telephony/TelephonyManager;
    # getter for: Lcom/lge/wapservice/prov/persister/ApnPersister;->mSubId:J
    invoke-static {}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$200()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/lge/telephony/provider/TelephonyProxy$Carriers;->getNumeric(J)Ljava/lang/String;

    move-result-object v23

    .line 799
    .local v23, "numeric":Ljava/lang/String;
    # getter for: Lcom/lge/wapservice/prov/persister/ApnPersister;->mSubId:J
    invoke-static {}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$200()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/lge/telephony/provider/TelephonyProxy$Carriers;->getMvnoType(J)Ljava/lang/String;

    move-result-object v17

    .line 800
    .local v17, "mvnoType":Ljava/lang/String;
    # getter for: Lcom/lge/wapservice/prov/persister/ApnPersister;->mSubId:J
    invoke-static {}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$200()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/lge/telephony/provider/TelephonyProxy$Carriers;->getMvnoData(J)Ljava/lang/String;

    move-result-object v16

    .line 801
    .local v16, "mvnoData":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "numeric =\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' and mvno_type =\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' and mvno_match_data =\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 804
    .local v7, "selection":Ljava/lang/String;
    const/4 v4, 0x4

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v6, v4

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v6, v4

    const/4 v4, 0x3

    const-string v5, "type"

    aput-object v5, v6, v4

    .line 807
    .local v6, "columns":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateMMSProfiles] selection="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$300(Ljava/lang/String;)V

    .line 809
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 811
    .local v12, "cursor":Landroid/database/Cursor;
    if-nez v12, :cond_1

    .line 812
    const-string v4, "[updateMMSProfiles] cursor is null"

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->loge(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$000(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 971
    .end local v6    # "columns":[Ljava/lang/String;
    .end local v7    # "selection":Ljava/lang/String;
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v16    # "mvnoData":Ljava/lang/String;
    .end local v17    # "mvnoType":Ljava/lang/String;
    .end local v23    # "numeric":Ljava/lang/String;
    .end local v26    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v13

    .line 972
    .local v13, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "[updateMMSProfiles] cannot find index with name because of CursorIndexOutOfBoundsException"

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->loge(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$000(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 816
    .end local v13    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v6    # "columns":[Ljava/lang/String;
    .restart local v7    # "selection":Ljava/lang/String;
    .restart local v12    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "mvnoData":Ljava/lang/String;
    .restart local v17    # "mvnoType":Ljava/lang/String;
    .restart local v23    # "numeric":Ljava/lang/String;
    .restart local v26    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 817
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateMMSProfiles] # of current profiles : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$300(Ljava/lang/String;)V

    .line 819
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/lge/wapservice/prov/persister/ApnPersister$AccessPointAdapter;->getProfileIndexWithTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 822
    .local v25, "sameTitleID":Ljava/lang/String;
    const-string v4, "ro.build.target_operator"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 823
    .local v24, "operatorCode":Ljava/lang/String;
    const-string v4, "ro.build.target_country"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 825
    .local v11, "countryCode":Ljava/lang/String;
    const-string v4, "WIN"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "CA"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 826
    if-eqz v25, :cond_2

    .line 827
    const-string v4, "Canada Wind requests that OTA APN doesn\'t overwritten even if it has same title"

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->logi(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$400(Ljava/lang/String;)V

    .line 829
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 830
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateDefaultProfiles] New profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is insrted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->logi(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$400(Ljava/lang/String;)V

    .line 970
    :cond_3
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 831
    :cond_4
    if-nez v25, :cond_e

    .line 836
    const-string v4, "mms"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 838
    const/4 v14, -0x1

    .line 839
    .local v14, "index":I
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_c

    .line 840
    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 841
    .local v15, "key":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 842
    .local v18, "name":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 843
    .local v10, "apn":Ljava/lang/String;
    const/4 v4, 0x3

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 845
    .local v27, "type":Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 846
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v8, v14

    invoke-static {v4, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v28

    .line 848
    .local v28, "uri":Landroid/net/Uri;
    const-string v4, "mms"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 851
    const-string v4, "21403"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "imsi"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v16, :cond_5

    const-string v4, "2140359"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_5
    const-string v4, "21406"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "gid"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "0008"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    const-string v4, "21408"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "21407"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 855
    :cond_7
    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    .line 856
    .local v29, "values":Landroid/content/ContentValues;
    const-string v4, "type"

    const-string v5, "inactive"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v4, v0, v1, v5, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 859
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateMMSProfiles] Profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is updated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "APN:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->logi(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$400(Ljava/lang/String;)V

    .line 874
    .end local v29    # "values":Landroid/content/ContentValues;
    :cond_8
    :goto_3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    .line 862
    :cond_9
    const-string v4, "ro.afwdata.LGfeatureset"

    const-string v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ATANDT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 863
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v4, v0, v5, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 864
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateMMSProfiles] Profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is deleted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "APN:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->logi(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$400(Ljava/lang/String;)V

    goto :goto_3

    .line 869
    :cond_a
    const-string v4, ""

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_8

    :cond_b
    const-string v4, "ro.afwdata.LGfeatureset"

    const-string v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ATANDT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 870
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-static {v0, v14, v1}, Lcom/lge/wapservice/prov/persister/ApnPersister$AccessPointAdapter;->removeMMSFields(Landroid/content/Context;ILjava/lang/String;)V

    .line 871
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateMMSProfiles] Profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is updated (Remove MMS Fields) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "APN:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->logi(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$400(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 878
    .end local v10    # "apn":Ljava/lang/String;
    .end local v14    # "index":I
    .end local v15    # "key":Ljava/lang/String;
    .end local v18    # "name":Ljava/lang/String;
    .end local v27    # "type":Ljava/lang/String;
    .end local v28    # "uri":Landroid/net/Uri;
    :cond_c
    const-string v4, "ro.afwdata.LGfeatureset"

    const-string v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ATANDT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 879
    const-string v4, "type"

    const-string v5, "default,mms"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_1

    .line 882
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_1

    .line 888
    :cond_e
    const/4 v14, -0x1

    .line 889
    .restart local v14    # "index":I
    const/16 v19, 0x1

    .line 891
    .local v19, "needToUpdate":Z
    :goto_4
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 892
    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 893
    .restart local v15    # "key":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 894
    .restart local v18    # "name":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 895
    .restart local v10    # "apn":Ljava/lang/String;
    const/4 v4, 0x3

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 897
    .restart local v27    # "type":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateMMSProfiles] Updating profile is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "APN:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->logi(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$400(Ljava/lang/String;)V

    .line 900
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 901
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 904
    const-string v4, "21403"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "imsi"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    if-eqz v16, :cond_f

    const-string v4, "2140359"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    :cond_f
    const-string v4, "21406"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v4, "gid"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v4, "0008"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    :cond_10
    const-string v4, "21408"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "21407"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 908
    :cond_11
    const-string v4, "inactive"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 909
    const-string v27, "mms"

    .line 912
    :cond_12
    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 914
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v8, v14

    invoke-static {v4, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v28

    .line 915
    .restart local v28    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1, v5, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 916
    const/16 v19, 0x0

    .line 957
    .end local v28    # "uri":Landroid/net/Uri;
    :cond_13
    :goto_5
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_4

    .line 917
    :cond_14
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 918
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-static {v0, v14, v1, v2}, Lcom/lge/wapservice/prov/persister/ApnPersister$AccessPointAdapter;->addMMSFields(Landroid/content/Context;ILandroid/content/ContentValues;Ljava/lang/String;)V

    .line 919
    const/16 v19, 0x0

    goto :goto_5

    .line 921
    :cond_15
    const-string v4, ""

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_13

    :cond_16
    const-string v4, "ro.afwdata.LGfeatureset"

    const-string v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ATANDT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 922
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-static {v0, v14, v1}, Lcom/lge/wapservice/prov/persister/ApnPersister$AccessPointAdapter;->removeMMSFields(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_5

    .line 926
    :cond_17
    const-string v4, "mms"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 927
    const-string v4, "mms"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 928
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v8, v14

    invoke-static {v4, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v28

    .line 931
    .restart local v28    # "uri":Landroid/net/Uri;
    const-string v4, "21403"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v4, "imsi"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    if-eqz v16, :cond_18

    const-string v4, "2140359"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    :cond_18
    const-string v4, "21406"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "gid"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "0008"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    :cond_19
    const-string v4, "21408"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    const-string v4, "21407"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 935
    :cond_1a
    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    .line 936
    .restart local v29    # "values":Landroid/content/ContentValues;
    const-string v4, "type"

    const-string v5, "inactive"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v4, v0, v1, v5, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 939
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateMMSProfiles] Profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is updated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "APN:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->logi(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$400(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 942
    .end local v29    # "values":Landroid/content/ContentValues;
    :cond_1b
    const-string v4, "ro.afwdata.LGfeatureset"

    const-string v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ATANDT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 943
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v4, v0, v5, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 945
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateMMSProfiles] Profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is deleted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "APN:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->logi(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$400(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 949
    .end local v28    # "uri":Landroid/net/Uri;
    :cond_1c
    const-string v4, ""

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_13

    :cond_1d
    const-string v4, "ro.afwdata.LGfeatureset"

    const-string v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ATANDT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 950
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-static {v0, v14, v1}, Lcom/lge/wapservice/prov/persister/ApnPersister$AccessPointAdapter;->removeMMSFields(Landroid/content/Context;ILjava/lang/String;)V

    .line 952
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateMMSProfiles] Profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is updated (Remove MMS Fields) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "APN:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->logi(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$400(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 960
    .end local v10    # "apn":Ljava/lang/String;
    .end local v15    # "key":Ljava/lang/String;
    .end local v18    # "name":Ljava/lang/String;
    .end local v27    # "type":Ljava/lang/String;
    :cond_1e
    if-eqz v19, :cond_3

    .line 961
    const-string v4, "ro.afwdata.LGfeatureset"

    const-string v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ATANDT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 962
    const-string v4, "type"

    const-string v5, "default,mms"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_1

    .line 965
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private static updatePreferProfile(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accessPoint"    # Landroid/content/ContentValues;

    .prologue
    .line 644
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 647
    .local v10, "telephonyManager":Landroid/telephony/TelephonyManager;
    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 648
    .local v9, "newName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric =\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/lge/wapservice/prov/persister/ApnPersister;->mSubId:J
    invoke-static {}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$200()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/lge/telephony/provider/TelephonyProxy$Carriers;->getNumeric(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and mvno_type =\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/lge/wapservice/prov/persister/ApnPersister;->mSubId:J
    invoke-static {}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$200()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/lge/telephony/provider/TelephonyProxy$Carriers;->getMvnoType(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and mvno_match_data =\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/lge/wapservice/prov/persister/ApnPersister;->mSubId:J
    invoke-static {}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$200()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/lge/telephony/provider/TelephonyProxy$Carriers;->getMvnoData(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and name =\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 652
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "type"

    aput-object v1, v2, v0

    .line 654
    .local v2, "columns":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 656
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 657
    const-string v0, "[updatePreferProfile] cursor is null"

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->loge(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$000(Ljava/lang/String;)V

    .line 687
    :goto_0
    return-void

    .line 661
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updatePreferProfile] selection : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->loge(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$000(Ljava/lang/String;)V

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updatePreferProfile] cursor size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->loge(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$000(Ljava/lang/String;)V

    .line 664
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 666
    const/4 v8, 0x0

    .line 667
    .local v8, "key":Ljava/lang/String;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 668
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 669
    .local v11, "type":Ljava/lang/String;
    if-eqz v11, :cond_1

    const-string v0, ""

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "default"

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 670
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 672
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 675
    .end local v11    # "type":Ljava/lang/String;
    :cond_3
    if-eqz v8, :cond_4

    .line 676
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 677
    .local v7, "index":I
    const-string v0, "content://telephony/carriers/preferapn/subId/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/lge/wapservice/prov/persister/ApnPersister;->mSubId:J
    invoke-static {}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$200()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 679
    .local v12, "uri":Landroid/net/Uri;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 680
    .local v13, "values":Landroid/content/ContentValues;
    const-string v0, "apn_id"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 681
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v12, v13, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 686
    .end local v7    # "index":I
    .end local v12    # "uri":Landroid/net/Uri;
    .end local v13    # "values":Landroid/content/ContentValues;
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 683
    :cond_4
    const-string v0, "[updatePreferProfile] key is null"

    # invokes: Lcom/lge/wapservice/prov/persister/ApnPersister;->loge(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/lge/wapservice/prov/persister/ApnPersister;->access$000(Ljava/lang/String;)V

    goto :goto_2
.end method
