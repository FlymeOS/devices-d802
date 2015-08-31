.class public Lcom/lge/wapservice/settings/SenderMoveActivity;
.super Landroid/app/ListActivity;
.source "SenderMoveActivity.java"


# static fields
.field private static final listProjection:[Ljava/lang/String;

.field private static mSenderListView:Landroid/widget/ListView;

.field private static final projection:[Ljava/lang/String;


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mMoveSenders:Landroid/view/View$OnClickListener;

.field private mUri:Landroid/net/Uri;

.field private trustedListUri:Landroid/net/Uri;

.field private untrustedListUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "sender"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "smsc"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/wapservice/settings/SenderMoveActivity;->projection:[Ljava/lang/String;

    .line 56
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "sender"

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/wapservice/settings/SenderMoveActivity;->listProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 42
    const-string v0, "content://senderlist/trustedlist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wapservice/settings/SenderMoveActivity;->trustedListUri:Landroid/net/Uri;

    .line 43
    const-string v0, "content://senderlist/untrustedlist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wapservice/settings/SenderMoveActivity;->untrustedListUri:Landroid/net/Uri;

    .line 61
    new-instance v0, Lcom/lge/wapservice/settings/SenderMoveActivity$1;

    invoke-direct {v0, p0}, Lcom/lge/wapservice/settings/SenderMoveActivity$1;-><init>(Lcom/lge/wapservice/settings/SenderMoveActivity;)V

    iput-object v0, p0, Lcom/lge/wapservice/settings/SenderMoveActivity;->mMoveSenders:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public confirmMove()V
    .locals 4

    .prologue
    .line 207
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 208
    .local v0, "moveListConfirmDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderMoveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 209
    const v1, 0x7f07005c

    new-instance v2, Lcom/lge/wapservice/settings/SenderMoveActivity$2;

    invoke-direct {v2, p0}, Lcom/lge/wapservice/settings/SenderMoveActivity$2;-><init>(Lcom/lge/wapservice/settings/SenderMoveActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 214
    const v1, 0x7f07005d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 216
    iget-object v1, p0, Lcom/lge/wapservice/settings/SenderMoveActivity;->trustedListUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/lge/wapservice/settings/SenderMoveActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderMoveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 218
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 223
    :goto_0
    return-void

    .line 220
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderMoveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070049

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 221
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public moveSenders()V
    .locals 14

    .prologue
    const/4 v1, 0x1

    const/4 v13, 0x0

    .line 136
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v12, "where":Ljava/lang/StringBuilder;
    const/4 v8, 0x1

    .line 139
    .local v8, "firstTime":Z
    const/4 v6, 0x0

    .line 141
    .local v6, "cursor":Landroid/database/Cursor;
    sget-object v0, Lcom/lge/wapservice/settings/SenderMoveActivity;->mSenderListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckItemIds()[J

    move-result-object v9

    .line 143
    .local v9, "ids":[J
    array-length v0, v9

    if-ge v0, v1, :cond_0

    .line 202
    :goto_0
    return-void

    .line 149
    :cond_0
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_1
    array-length v0, v9

    if-ge v10, v0, :cond_7

    .line 154
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderMoveActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/wapservice/settings/SenderMoveActivity;->mUri:Landroid/net/Uri;

    aget-wide v2, v9, v10

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/lge/wapservice/settings/SenderMoveActivity;->projection:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 157
    if-nez v6, :cond_1

    .line 159
    const-string v0, "WapService"

    const-string v1, "SenderMoveActivity.moveSenders() cursor is null "

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_1
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 166
    .local v11, "values":Landroid/content/ContentValues;
    const-string v0, "sender"

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "smsc"

    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/lge/wapservice/settings/SenderMoveActivity;->trustedListUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/lge/wapservice/settings/SenderMoveActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 170
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderMoveActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/wapservice/settings/SenderMoveActivity;->untrustedListUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 175
    :goto_2
    if-nez v8, :cond_2

    .line 176
    const-string v0, " OR "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_2
    const-string v0, "(_id=\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    aget-wide v0, v9, v10

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 181
    const-string v0, "WapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-wide v2, v9, v10

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v0, "\')"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    const/4 v8, 0x0

    .line 190
    .end local v11    # "values":Landroid/content/ContentValues;
    :cond_3
    if-eqz v6, :cond_4

    .line 192
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 149
    :cond_4
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 172
    .restart local v11    # "values":Landroid/content/ContentValues;
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderMoveActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/wapservice/settings/SenderMoveActivity;->trustedListUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 186
    .end local v11    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 187
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v0, "SenderMoveActivity"

    const-string v1, "Could not load cursor"

    invoke-static {v0, v1, v7}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    if-eqz v6, :cond_4

    .line 192
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 190
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 192
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 199
    :cond_7
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderMoveActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/wapservice/settings/SenderMoveActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderMoveActivity;->finish()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 74
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderMoveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wapservice/settings/SenderMoveActivity;->mUri:Landroid/net/Uri;

    .line 77
    iget-object v1, p0, Lcom/lge/wapservice/settings/SenderMoveActivity;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/lge/wapservice/settings/SenderMoveActivity;->projection:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/lge/wapservice/settings/SenderMoveActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wapservice/settings/SenderMoveActivity;->mCursor:Landroid/database/Cursor;

    .line 79
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/settings/SenderMoveActivity;->setContentView(I)V

    .line 80
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderMoveActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sput-object v0, Lcom/lge/wapservice/settings/SenderMoveActivity;->mSenderListView:Landroid/widget/ListView;

    .line 84
    const v0, 0x7f090021

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/settings/SenderMoveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 85
    .local v6, "moveButton":Landroid/widget/Button;
    if-eqz v6, :cond_0

    .line 86
    iget-object v0, p0, Lcom/lge/wapservice/settings/SenderMoveActivity;->mMoveSenders:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const-string v0, "content://senderlist/trustedlist"

    iget-object v1, p0, Lcom/lge/wapservice/settings/SenderMoveActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderMoveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/settings/SenderMoveActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderMoveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_0
    :goto_0
    sget-object v7, Lcom/lge/wapservice/settings/SenderMoveActivity;->mSenderListView:Landroid/widget/ListView;

    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x1090010

    iget-object v3, p0, Lcom/lge/wapservice/settings/SenderMoveActivity;->mCursor:Landroid/database/Cursor;

    sget-object v4, Lcom/lge/wapservice/settings/SenderMoveActivity;->listProjection:[Ljava/lang/String;

    new-array v5, v9, [I

    const/4 v1, 0x0

    const v8, 0x1020014

    aput v8, v5, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    sget-object v0, Lcom/lge/wapservice/settings/SenderMoveActivity;->mSenderListView:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 102
    sget-object v0, Lcom/lge/wapservice/settings/SenderMoveActivity;->mSenderListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 104
    const-string v0, "WapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SenderMoveActivity.onCreate() procedure completed. URI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wapservice/settings/SenderMoveActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void

    .line 90
    :cond_1
    const-string v0, "content://senderlist/untrustedlist"

    iget-object v1, p0, Lcom/lge/wapservice/settings/SenderMoveActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderMoveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/settings/SenderMoveActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderMoveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 109
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 111
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderMoveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 113
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderMoveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 115
    return v4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 120
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 132
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :cond_0
    return v1

    .line 122
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/lge/wapservice/settings/SenderMoveActivity;->mSenderListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 123
    sget-object v2, Lcom/lge/wapservice/settings/SenderMoveActivity;->mSenderListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    .end local v0    # "i":I
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    sget-object v2, Lcom/lge/wapservice/settings/SenderMoveActivity;->mSenderListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 128
    sget-object v2, Lcom/lge/wapservice/settings/SenderMoveActivity;->mSenderListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
