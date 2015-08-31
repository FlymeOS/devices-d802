.class public Lcom/lge/wapservice/settings/SenderListActivity;
.super Landroid/app/ListActivity;
.source "SenderListActivity.java"


# static fields
.field private static final listProjection:[Ljava/lang/String;

.field private static mContextMenuMove:I

.field private static mNoSenderIndication:Landroid/widget/TextView;

.field private static mOptionMenuMove:Ljava/lang/String;

.field private static mSenderListView:Landroid/widget/ListView;

.field private static final projection:[Ljava/lang/String;


# instance fields
.field private mAddNewSender:Landroid/view/View$OnClickListener;

.field private mCursor:Landroid/database/Cursor;

.field private mUri:Landroid/net/Uri;

.field private trustedListUri:Landroid/net/Uri;

.field private untrustedListUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "sender"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "smsc"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/wapservice/settings/SenderListActivity;->projection:[Ljava/lang/String;

    .line 75
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "sender"

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/wapservice/settings/SenderListActivity;->listProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 66
    const-string v0, "content://senderlist/trustedlist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wapservice/settings/SenderListActivity;->trustedListUri:Landroid/net/Uri;

    .line 67
    const-string v0, "content://senderlist/untrustedlist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wapservice/settings/SenderListActivity;->untrustedListUri:Landroid/net/Uri;

    .line 79
    new-instance v0, Lcom/lge/wapservice/settings/SenderListActivity$1;

    invoke-direct {v0, p0}, Lcom/lge/wapservice/settings/SenderListActivity$1;-><init>(Lcom/lge/wapservice/settings/SenderListActivity;)V

    iput-object v0, p0, Lcom/lge/wapservice/settings/SenderListActivity;->mAddNewSender:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private getHeaderTitleFromMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v2, 0x0

    .line 304
    const/4 v1, 0x0

    .line 306
    .local v1, "headerTitle":Ljava/lang/String;
    if-eqz p1, :cond_0

    instance-of v3, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-nez v3, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-object v2

    :cond_1
    move-object v0, p1

    .line 310
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 313
    .local v0, "adapterMenuInfo":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v3, p0, Lcom/lge/wapservice/settings/SenderListActivity;->mCursor:Landroid/database/Cursor;

    iget v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 314
    iget-object v3, p0, Lcom/lge/wapservice/settings/SenderListActivity;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 320
    :goto_1
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 324
    goto :goto_0

    .line 316
    :cond_2
    const-string v3, "WapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cursor can\'t move to the position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "in getHeaderTitleFromMenuInfo()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public addNewSender()V
    .locals 3

    .prologue
    .line 328
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    iget-object v2, p0, Lcom/lge/wapservice/settings/SenderListActivity;->mUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/settings/SenderListActivity;->startActivity(Landroid/content/Intent;)V

    .line 329
    return-void
.end method

.method public configureSenderList()V
    .locals 4

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.lge.wapservice.listid"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 371
    .local v0, "listId":I
    if-nez v0, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/wapservice/settings/SenderListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v1, p0, Lcom/lge/wapservice/settings/SenderListActivity;->trustedListUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/lge/wapservice/settings/SenderListActivity;->mUri:Landroid/net/Uri;

    .line 376
    monitor-enter p0

    .line 377
    const v1, 0x7f070048

    :try_start_0
    sput v1, Lcom/lge/wapservice/settings/SenderListActivity;->mContextMenuMove:I

    .line 378
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lge/wapservice/settings/SenderListActivity;->mOptionMenuMove:Ljava/lang/String;

    .line 379
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    const-string v1, "WapService"

    const-string v2, "The Intent received contains trustedListId, so trusted list will be invoked"

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :goto_0
    return-void

    .line 379
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 382
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 383
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/wapservice/settings/SenderListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v1, p0, Lcom/lge/wapservice/settings/SenderListActivity;->untrustedListUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/lge/wapservice/settings/SenderListActivity;->mUri:Landroid/net/Uri;

    .line 387
    monitor-enter p0

    .line 388
    const v1, 0x7f070049

    :try_start_2
    sput v1, Lcom/lge/wapservice/settings/SenderListActivity;->mContextMenuMove:I

    .line 389
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lge/wapservice/settings/SenderListActivity;->mOptionMenuMove:Ljava/lang/String;

    .line 390
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 392
    const-string v1, "WapService"

    const-string v2, "The Intent received contains UNtrustedListId, so UNtrusted list will be invoked"

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 390
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 394
    :cond_1
    const-string v1, "WapService"

    const-string v2, "The Intent received contains unavailable ListId, nothing will be happend"

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListActivity;->finish()V

    goto :goto_0
.end method

.method public confirmMove(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .param p1, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 230
    move-object v0, p1

    .line 232
    .local v0, "info":Landroid/view/ContextMenu$ContextMenuInfo;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 233
    .local v1, "moveListConfirmDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07005e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 234
    const v2, 0x7f07005c

    new-instance v3, Lcom/lge/wapservice/settings/SenderListActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/lge/wapservice/settings/SenderListActivity$2;-><init>(Lcom/lge/wapservice/settings/SenderListActivity;Landroid/view/ContextMenu$ContextMenuInfo;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 239
    const v2, 0x7f07005d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 241
    iget-object v2, p0, Lcom/lge/wapservice/settings/SenderListActivity;->trustedListUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/lge/wapservice/settings/SenderListActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070048

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 246
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 254
    :goto_0
    return-void

    .line 250
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070049

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 252
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public deleteSelectedSender(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .param p1, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v3, 0x0

    .line 213
    if-eqz p1, :cond_0

    instance-of v1, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-nez v1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 217
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 218
    .local v0, "adapterMenuInfo":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wapservice/settings/SenderListActivity;->mUri:Landroid/net/Uri;

    iget-wide v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 223
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListActivity;->setSenderList()V

    goto :goto_0
.end method

.method public doesSenderExist()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 342
    iget-object v1, p0, Lcom/lge/wapservice/settings/SenderListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 343
    const/4 v0, 0x0

    .line 345
    :cond_0
    return v0
.end method

.method public getSenderCount()I
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/lge/wapservice/settings/SenderListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public moveList(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .param p1, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 261
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-nez v0, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v6, p1

    .line 265
    check-cast v6, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 268
    .local v6, "adapterMenuInfo":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    const/4 v7, 0x0

    .line 271
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/wapservice/settings/SenderListActivity;->mUri:Landroid/net/Uri;

    iget-wide v2, v6, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/lge/wapservice/settings/SenderListActivity;->projection:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 274
    if-nez v7, :cond_2

    .line 296
    if-eqz v7, :cond_0

    .line 297
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 277
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 279
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 280
    .local v9, "values":Landroid/content/ContentValues;
    const-string v0, "sender"

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v0, "smsc"

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/lge/wapservice/settings/SenderListActivity;->trustedListUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/lge/wapservice/settings/SenderListActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 284
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/wapservice/settings/SenderListActivity;->untrustedListUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 289
    :goto_1
    invoke-virtual {p0, p1}, Lcom/lge/wapservice/settings/SenderListActivity;->deleteSelectedSender(Landroid/view/ContextMenu$ContextMenuInfo;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    if-eqz v7, :cond_0

    .line 297
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 286
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/wapservice/settings/SenderListActivity;->trustedListUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 291
    .end local v9    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .line 292
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    const-string v0, "SenderListActivity"

    const-string v1, "Could not load cursor"

    invoke-static {v0, v1, v8}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 296
    if-eqz v7, :cond_0

    .line 297
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 296
    .end local v8    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 297
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 188
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .local v1, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 205
    .end local v1    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :goto_0
    return v2

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "exception":Ljava/lang/ClassCastException;
    const-string v3, "WapService"

    const-string v4, "Bad menuInfo."

    invoke-static {v3, v4, v0}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 197
    .end local v0    # "exception":Ljava/lang/ClassCastException;
    .restart local v1    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/lge/wapservice/settings/SenderListActivity;->deleteSelectedSender(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 198
    const/4 v2, 0x1

    goto :goto_0

    .line 202
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/lge/wapservice/settings/SenderListActivity;->confirmMove(Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListActivity;->configureSenderList()V

    .line 92
    const v1, 0x7f03000c

    invoke-virtual {p0, v1}, Lcom/lge/wapservice/settings/SenderListActivity;->setContentView(I)V

    .line 95
    monitor-enter p0

    .line 96
    const v1, 0x7f090022

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/lge/wapservice/settings/SenderListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/lge/wapservice/settings/SenderListActivity;->mNoSenderIndication:Landroid/widget/TextView;

    .line 97
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    const v1, 0x7f090023

    invoke-virtual {p0, v1}, Lcom/lge/wapservice/settings/SenderListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 100
    .local v0, "addButton":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/lge/wapservice/settings/SenderListActivity;->mAddNewSender:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    :cond_0
    const-string v1, "WapService"

    const-string v2, "SenderListActivity.onCreate() procedure completed."

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void

    .line 97
    .end local v0    # "addButton":Landroid/widget/Button;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 168
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 170
    invoke-direct {p0, p3}, Lcom/lge/wapservice/settings/SenderListActivity;->getHeaderTitleFromMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "headerTitle":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 179
    const v1, 0x7f07004a

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 181
    const/4 v1, 0x2

    sget v2, Lcom/lge/wapservice/settings/SenderListActivity;->mContextMenuMove:I

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 130
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 134
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListActivity;->doesSenderExist()Z

    move-result v2

    if-nez v2, :cond_0

    .line 145
    :goto_0
    return v0

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07004a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 144
    const/4 v2, 0x2

    sget-object v3, Lcom/lge/wapservice/settings/SenderListActivity;->mOptionMenuMove:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v0, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move v0, v1

    .line 145
    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 118
    const-string v1, "WapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",   id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    iget-object v2, p0, Lcom/lge/wapservice/settings/SenderListActivity;->mUri:Landroid/net/Uri;

    invoke-static {v2, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 125
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lge/wapservice/settings/SenderListActivity;->startActivity(Landroid/content/Intent;)V

    .line 126
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 150
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 163
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 152
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DELETE"

    iget-object v4, p0, Lcom/lge/wapservice/settings/SenderListActivity;->mUri:Landroid/net/Uri;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 153
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lge/wapservice/settings/SenderListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 158
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.lge.wapservice.MOVE"

    iget-object v4, p0, Lcom/lge/wapservice/settings/SenderListActivity;->mUri:Landroid/net/Uri;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 159
    .local v1, "moveIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/lge/wapservice/settings/SenderListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 112
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListActivity;->setSenderList()V

    .line 113
    return-void
.end method

.method public setSenderList()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 353
    iget-object v1, p0, Lcom/lge/wapservice/settings/SenderListActivity;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/lge/wapservice/settings/SenderListActivity;->projection:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/lge/wapservice/settings/SenderListActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wapservice/settings/SenderListActivity;->mCursor:Landroid/database/Cursor;

    .line 355
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sput-object v0, Lcom/lge/wapservice/settings/SenderListActivity;->mSenderListView:Landroid/widget/ListView;

    .line 356
    sget-object v0, Lcom/lge/wapservice/settings/SenderListActivity;->mSenderListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/settings/SenderListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 357
    sget-object v6, Lcom/lge/wapservice/settings/SenderListActivity;->mSenderListView:Landroid/widget/ListView;

    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x1090003

    iget-object v3, p0, Lcom/lge/wapservice/settings/SenderListActivity;->mCursor:Landroid/database/Cursor;

    sget-object v4, Lcom/lge/wapservice/settings/SenderListActivity;->listProjection:[Ljava/lang/String;

    const/4 v1, 0x1

    new-array v5, v1, [I

    const/4 v1, 0x0

    const v7, 0x1020014

    aput v7, v5, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 360
    const-string v0, "WapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCursor has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListActivity;->getSenderCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Senders"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListActivity;->doesSenderExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListActivity;->showSenderList()V

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListActivity;->showNoSenderIndication()V

    goto :goto_0
.end method

.method public showNoSenderIndication()V
    .locals 2

    .prologue
    .line 334
    sget-object v0, Lcom/lge/wapservice/settings/SenderListActivity;->mSenderListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 335
    sget-object v0, Lcom/lge/wapservice/settings/SenderListActivity;->mNoSenderIndication:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    return-void
.end method

.method public showSenderList()V
    .locals 2

    .prologue
    .line 338
    sget-object v0, Lcom/lge/wapservice/settings/SenderListActivity;->mSenderListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 339
    sget-object v0, Lcom/lge/wapservice/settings/SenderListActivity;->mNoSenderIndication:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 340
    return-void
.end method
