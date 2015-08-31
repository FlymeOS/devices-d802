.class public Lcom/lge/wapservice/prov/persister/EmailPersister;
.super Ljava/lang/Object;
.source "EmailPersister.java"


# static fields
.field static final ACCOUNT_QUERY_COLUMNS:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const-string v0, "content://com.android.email.accountprovider/accounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/wapservice/prov/persister/EmailPersister;->CONTENT_URI:Landroid/net/Uri;

    .line 103
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "uuid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "description"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/wapservice/prov/persister/EmailPersister;->ACCOUNT_QUERY_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public static containsValidSetting(Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;Landroid/content/Context;)I
    .locals 8
    .param p0, "provisioningDocument"    # Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;
    .param p1, "contex"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0x100

    .line 107
    iget-object v6, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->applications:Ljava/util/HashMap;

    const-string v7, "email"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 110
    .local v0, "EmailAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wapservice/prov/oma/Application;>;"
    const-string v6, "EmailPersister"

    const-string v7, "Checking Validity"

    invoke-static {v6, v7}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    if-nez v0, :cond_1

    move v4, v5

    .line 130
    :cond_0
    :goto_0
    return v4

    .line 115
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 116
    .local v2, "email_num":I
    const/4 v4, 0x0

    .line 117
    .local v4, "ret":I
    if-nez v2, :cond_2

    move v4, v5

    .line 118
    goto :goto_0

    .line 120
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 121
    const-string v5, "EmailPersister"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Contain Valid Setting num "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/wapservice/prov/oma/Application;

    .line 123
    .local v1, "email":Lcom/lge/wapservice/prov/oma/Application;
    iget-object v5, v1, Lcom/lge/wapservice/prov/oma/Application;->provider_id:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v1, Lcom/lge/wapservice/prov/oma/Application;->addr:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v1, Lcom/lge/wapservice/prov/oma/Application;->appid:Ljava/lang/String;

    if-nez v5, :cond_4

    .line 125
    :cond_3
    or-int/lit8 v4, v4, 0x10

    .line 120
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 127
    :cond_4
    or-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private static handleOMACP(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountValues"    # Landroid/content/ContentValues;

    .prologue
    .line 390
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.email.intent.action.MAIL_SERVICE_CP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 393
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "PROTOCOL_TYPE"

    const-string v2, "protocolType"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const-string v3, "DESCRIPTION"

    const-string v2, "description"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    const-string v3, "ACCOUNT_MAILADDRESS"

    const-string v2, "emailAddress"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const-string v3, "INCOMING_ADDRESS"

    const-string v2, "incomingAddress"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    const-string v3, "INCOMING_PORT"

    const-string v2, "incomingPort"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    :try_start_0
    const-string v3, "INCOMING_SECURITY"

    const-string v2, "incomingSecurity"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    const-string v3, "INCOMING_USERNAME"

    const-string v2, "incomingUsername"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    const-string v3, "INCOMING_PASSWORD"

    const-string v2, "incomingPassword"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    const-string v3, "OUTGOING_ADDRESS"

    const-string v2, "outgoingAddress"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    const-string v3, "OUTGOING_PORT"

    const-string v2, "outgoingPort"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    :try_start_1
    const-string v3, "OUTGOING_SECURITY"

    const-string v2, "outgoingSecurity"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 430
    :try_start_2
    const-string v3, "SMTP_AUTH"

    const-string v2, "smtpAuth"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 436
    const-string v3, "OUTGOING_USERNAME"

    const-string v2, "outgoingUsername"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const-string v3, "OUTGOING_PASSWORD"

    const-string v2, "outgoingPassword"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string v2, "com.lge.email"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 442
    :goto_0
    return-void

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 424
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 425
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 432
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 433
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static populateEmail(Landroid/content/Context;Ljava/util/ArrayList;Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "provisioningDocument"    # Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/wapservice/prov/oma/Application;",
            ">;",
            "Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;",
            ")V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wapservice/prov/oma/Application;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 155
    .local v4, "email_num":I
    const/4 v9, 0x0

    .line 156
    .local v9, "updateFlag":Z
    const/4 v1, 0x0

    .line 157
    .local v1, "apnFlag":Z
    const-wide/16 v6, -0x1

    .line 158
    .local v6, "idToUpdate":J
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 159
    .local v0, "accountValues":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 161
    .local v8, "resolver":Landroid/content/ContentResolver;
    const-string v10, "EmailPersister"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NOW in populateEmail "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/lge/wapservice/prov/persister/EmailPersister;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v12}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_17

    .line 164
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/wapservice/prov/oma/Application;

    .line 166
    .local v3, "email":Lcom/lge/wapservice/prov/oma/Application;
    if-nez v3, :cond_1

    .line 167
    const-string v10, "EmailPersister"

    const-string v11, "email is null in populateEmail"

    invoke-static {v10, v11}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 170
    :cond_1
    const-string v10, "143"

    iget-object v11, v3, Lcom/lge/wapservice/prov/oma/Application;->appid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 172
    const-string v10, "EmailPersister"

    const-string v11, " populateEmail EMAIL IMAP "

    invoke-static {v10, v11}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v10, "protocolType"

    const-string v11, "imap"

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v10, v3, Lcom/lge/wapservice/prov/oma/Application;->provider_id:Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 176
    const-string v10, "description"

    iget-object v11, v3, Lcom/lge/wapservice/prov/oma/Application;->provider_id:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_2
    iget-object v10, v3, Lcom/lge/wapservice/prov/oma/Application;->addr:Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 187
    const-string v10, "incomingAddress"

    iget-object v11, v3, Lcom/lge/wapservice/prov/oma/Application;->addr:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_3
    iget-object v10, v3, Lcom/lge/wapservice/prov/oma/Application;->port:Ljava/lang/String;

    if-eqz v10, :cond_4

    .line 190
    iget-object v10, v3, Lcom/lge/wapservice/prov/oma/Application;->port:Ljava/lang/String;

    const-string v11, "993"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 191
    const-string v10, "incomingSecurity"

    const/4 v11, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    :goto_2
    const-string v10, "incomingPort"

    iget-object v11, v3, Lcom/lge/wapservice/prov/oma/Application;->port:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_4
    iget-object v10, v3, Lcom/lge/wapservice/prov/oma/Application;->appauth:Ljava/util/ArrayList;

    if-eqz v10, :cond_6

    .line 198
    iget-object v10, v3, Lcom/lge/wapservice/prov/oma/Application;->appauth:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/wapservice/prov/oma/AppAuth;

    .line 199
    .local v2, "appauth":Lcom/lge/wapservice/prov/oma/AppAuth;
    iget-object v10, v2, Lcom/lge/wapservice/prov/oma/AppAuth;->authname:Ljava/lang/String;

    if-eqz v10, :cond_5

    .line 200
    const-string v10, "incomingUsername"

    iget-object v11, v2, Lcom/lge/wapservice/prov/oma/AppAuth;->authname:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_5
    iget-object v10, v2, Lcom/lge/wapservice/prov/oma/AppAuth;->authsercret:Ljava/lang/String;

    if-eqz v10, :cond_6

    .line 203
    const-string v10, "incomingPassword"

    iget-object v11, v2, Lcom/lge/wapservice/prov/oma/AppAuth;->authsercret:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .end local v2    # "appauth":Lcom/lge/wapservice/prov/oma/AppAuth;
    :cond_6
    const-string v10, "110"

    iget-object v11, v3, Lcom/lge/wapservice/prov/oma/Application;->appid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 213
    const-string v10, "EmailPersister"

    const-string v11, " populateEmail EMAIL POP "

    invoke-static {v10, v11}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v10, "protocolType"

    const-string v11, "pop"

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v10, v3, Lcom/lge/wapservice/prov/oma/Application;->provider_id:Ljava/lang/String;

    if-eqz v10, :cond_7

    .line 217
    const-string v10, "description"

    iget-object v11, v3, Lcom/lge/wapservice/prov/oma/Application;->provider_id:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_7
    iget-object v10, v3, Lcom/lge/wapservice/prov/oma/Application;->addr:Ljava/lang/String;

    if-eqz v10, :cond_8

    .line 220
    const-string v10, "incomingAddress"

    iget-object v11, v3, Lcom/lge/wapservice/prov/oma/Application;->addr:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_8
    iget-object v10, v3, Lcom/lge/wapservice/prov/oma/Application;->port:Ljava/lang/String;

    if-eqz v10, :cond_9

    .line 223
    iget-object v10, v3, Lcom/lge/wapservice/prov/oma/Application;->port:Ljava/lang/String;

    const-string v11, "995"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 224
    const-string v10, "incomingSecurity"

    const/4 v11, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 228
    :goto_3
    const-string v10, "incomingPort"

    iget-object v11, v3, Lcom/lge/wapservice/prov/oma/Application;->port:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_9
    iget-object v10, v3, Lcom/lge/wapservice/prov/oma/Application;->appauth:Ljava/util/ArrayList;

    if-eqz v10, :cond_b

    .line 231
    iget-object v10, v3, Lcom/lge/wapservice/prov/oma/Application;->appauth:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/wapservice/prov/oma/AppAuth;

    .line 233
    .restart local v2    # "appauth":Lcom/lge/wapservice/prov/oma/AppAuth;
    iget-object v10, v2, Lcom/lge/wapservice/prov/oma/AppAuth;->authname:Ljava/lang/String;

    if-eqz v10, :cond_a

    .line 234
    const-string v10, "incomingUsername"

    iget-object v11, v2, Lcom/lge/wapservice/prov/oma/AppAuth;->authname:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_a
    iget-object v10, v2, Lcom/lge/wapservice/prov/oma/AppAuth;->authsercret:Ljava/lang/String;

    if-eqz v10, :cond_b

    .line 237
    const-string v10, "incomingPassword"

    iget-object v11, v2, Lcom/lge/wapservice/prov/oma/AppAuth;->authsercret:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .end local v2    # "appauth":Lcom/lge/wapservice/prov/oma/AppAuth;
    :cond_b
    const-string v10, "25"

    iget-object v11, v3, Lcom/lge/wapservice/prov/oma/Application;->appid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 247
    const-string v10, "EmailPersister"

    const-string v11, " populateEmail EMAIL SMTP "

    invoke-static {v10, v11}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v10, v3, Lcom/lge/wapservice/prov/oma/Application;->provider_id:Ljava/lang/String;

    if-eqz v10, :cond_c

    .line 250
    const-string v10, "description"

    iget-object v11, v3, Lcom/lge/wapservice/prov/oma/Application;->provider_id:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_c
    iget-object v10, v3, Lcom/lge/wapservice/prov/oma/Application;->addr:Ljava/lang/String;

    if-eqz v10, :cond_d

    .line 253
    const-string v10, "outgoingAddress"

    iget-object v11, v3, Lcom/lge/wapservice/prov/oma/Application;->addr:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_d
    iget-object v10, v3, Lcom/lge/wapservice/prov/oma/Application;->port:Ljava/lang/String;

    if-eqz v10, :cond_e

    .line 258
    iget-object v10, v3, Lcom/lge/wapservice/prov/oma/Application;->port:Ljava/lang/String;

    const-string v11, "465"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 259
    const-string v10, "outgoingSecurity"

    const/4 v11, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 266
    :goto_4
    const-string v10, "outgoingPort"

    iget-object v11, v3, Lcom/lge/wapservice/prov/oma/Application;->port:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_e
    iget-object v10, v3, Lcom/lge/wapservice/prov/oma/Application;->appauth:Ljava/util/ArrayList;

    if-eqz v10, :cond_16

    .line 271
    iget-object v10, v3, Lcom/lge/wapservice/prov/oma/Application;->appauth:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/wapservice/prov/oma/AppAuth;

    .line 272
    .restart local v2    # "appauth":Lcom/lge/wapservice/prov/oma/AppAuth;
    iget-object v10, v2, Lcom/lge/wapservice/prov/oma/AppAuth;->authname:Ljava/lang/String;

    if-eqz v10, :cond_f

    .line 273
    const-string v10, "outgoingUsername"

    iget-object v11, v2, Lcom/lge/wapservice/prov/oma/AppAuth;->authname:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_f
    iget-object v10, v2, Lcom/lge/wapservice/prov/oma/AppAuth;->authsercret:Ljava/lang/String;

    if-eqz v10, :cond_10

    .line 276
    const-string v10, "outgoingPassword"

    iget-object v11, v2, Lcom/lge/wapservice/prov/oma/AppAuth;->authsercret:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_10
    const-string v10, "smtpAuth"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 283
    .end local v2    # "appauth":Lcom/lge/wapservice/prov/oma/AppAuth;
    :cond_11
    :goto_5
    iget-object v10, v3, Lcom/lge/wapservice/prov/oma/Application;->from:Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 284
    const-string v10, "emailAddress"

    iget-object v11, v3, Lcom/lge/wapservice/prov/oma/Application;->from:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 193
    :cond_12
    const-string v10, "incomingSecurity"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 226
    :cond_13
    const-string v10, "incomingSecurity"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3

    .line 260
    :cond_14
    iget-object v10, v3, Lcom/lge/wapservice/prov/oma/Application;->port:Ljava/lang/String;

    const-string v11, "587"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 261
    const-string v10, "outgoingSecurity"

    const/4 v11, 0x5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    const-string v10, "EmailPersister"

    const-string v11, "setting outgoing security to 5"

    invoke-static {v10, v11}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 264
    :cond_15
    const-string v10, "outgoingSecurity"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_4

    .line 280
    :cond_16
    const-string v10, "smtpAuth"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_5

    .line 339
    .end local v3    # "email":Lcom/lge/wapservice/prov/oma/Application;
    :cond_17
    invoke-static {p0, v0}, Lcom/lge/wapservice/prov/persister/EmailPersister;->handleOMACP(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 340
    return-void
.end method

.method public static save(Landroid/content/Context;Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "provisioningDocument"    # Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    .prologue
    const/4 v2, 0x0

    .line 135
    iget-object v3, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->applications:Ljava/util/HashMap;

    const-string v4, "email"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 138
    .local v0, "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wapservice/prov/oma/Application;>;"
    const-string v3, "EmailPersister"

    const-string v4, "Save Start"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    if-nez v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v2

    .line 143
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 144
    .local v1, "email_num":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    invoke-static {p0, v0, p1}, Lcom/lge/wapservice/prov/persister/EmailPersister;->populateEmail(Landroid/content/Context;Ljava/util/ArrayList;Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;)V

    .line 148
    const/4 v2, 0x1

    goto :goto_0
.end method
