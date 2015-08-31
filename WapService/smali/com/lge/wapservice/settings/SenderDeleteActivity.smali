.class public Lcom/lge/wapservice/settings/SenderDeleteActivity;
.super Landroid/app/ListActivity;
.source "SenderDeleteActivity.java"


# static fields
.field private static final listProjection:[Ljava/lang/String;

.field private static mSenderListView:Landroid/widget/ListView;

.field private static final projection:[Ljava/lang/String;


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mDeleteSenders:Landroid/view/View$OnClickListener;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "sender"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "smsc"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/wapservice/settings/SenderDeleteActivity;->projection:[Ljava/lang/String;

    .line 48
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "sender"

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/wapservice/settings/SenderDeleteActivity;->listProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 53
    new-instance v0, Lcom/lge/wapservice/settings/SenderDeleteActivity$1;

    invoke-direct {v0, p0}, Lcom/lge/wapservice/settings/SenderDeleteActivity$1;-><init>(Lcom/lge/wapservice/settings/SenderDeleteActivity;)V

    iput-object v0, p0, Lcom/lge/wapservice/settings/SenderDeleteActivity;->mDeleteSenders:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public deleteSenders()V
    .locals 8

    .prologue
    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v3, "where":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 125
    .local v0, "firstTime":Z
    sget-object v4, Lcom/lge/wapservice/settings/SenderDeleteActivity;->mSenderListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckItemIds()[J

    move-result-object v1

    .line 127
    .local v1, "ids":[J
    array-length v4, v1

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    .line 176
    :goto_0
    return-void

    .line 133
    :cond_0
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_2

    .line 135
    if-nez v0, :cond_1

    .line 136
    const-string v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_1
    const-string v4, "(_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    aget-wide v4, v1, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 141
    const-string v4, "WapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Selected id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v6, v1, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const/4 v0, 0x0

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 147
    :cond_2
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/wapservice/settings/SenderDeleteActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 175
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderDeleteActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wapservice/settings/SenderDeleteActivity;->mUri:Landroid/net/Uri;

    .line 65
    iget-object v1, p0, Lcom/lge/wapservice/settings/SenderDeleteActivity;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/lge/wapservice/settings/SenderDeleteActivity;->projection:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/lge/wapservice/settings/SenderDeleteActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wapservice/settings/SenderDeleteActivity;->mCursor:Landroid/database/Cursor;

    .line 67
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/settings/SenderDeleteActivity;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderDeleteActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sput-object v0, Lcom/lge/wapservice/settings/SenderDeleteActivity;->mSenderListView:Landroid/widget/ListView;

    .line 69
    const-string v0, "content://senderlist/trustedlist"

    iget-object v1, p0, Lcom/lge/wapservice/settings/SenderDeleteActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/settings/SenderDeleteActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    :cond_0
    :goto_0
    const v0, 0x7f09001e

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/settings/SenderDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 76
    .local v6, "deleteButton":Landroid/widget/Button;
    if-eqz v6, :cond_1

    .line 77
    iget-object v0, p0, Lcom/lge/wapservice/settings/SenderDeleteActivity;->mDeleteSenders:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    :cond_1
    sget-object v7, Lcom/lge/wapservice/settings/SenderDeleteActivity;->mSenderListView:Landroid/widget/ListView;

    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x1090010

    iget-object v3, p0, Lcom/lge/wapservice/settings/SenderDeleteActivity;->mCursor:Landroid/database/Cursor;

    sget-object v4, Lcom/lge/wapservice/settings/SenderDeleteActivity;->listProjection:[Ljava/lang/String;

    new-array v5, v9, [I

    const/4 v1, 0x0

    const v8, 0x1020014

    aput v8, v5, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    sget-object v0, Lcom/lge/wapservice/settings/SenderDeleteActivity;->mSenderListView:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 85
    sget-object v0, Lcom/lge/wapservice/settings/SenderDeleteActivity;->mSenderListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 87
    const-string v0, "WapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SenderDeleteActivity.onCreate() procedure completed. URI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wapservice/settings/SenderDeleteActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void

    .line 71
    .end local v6    # "deleteButton":Landroid/widget/Button;
    :cond_2
    const-string v0, "content://senderlist/untrustedlist"

    iget-object v1, p0, Lcom/lge/wapservice/settings/SenderDeleteActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/settings/SenderDeleteActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 92
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 94
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 96
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 98
    return v4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 103
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 115
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :cond_0
    return v1

    .line 105
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/lge/wapservice/settings/SenderDeleteActivity;->mSenderListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 106
    sget-object v2, Lcom/lge/wapservice/settings/SenderDeleteActivity;->mSenderListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "i":I
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    sget-object v2, Lcom/lge/wapservice/settings/SenderDeleteActivity;->mSenderListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 111
    sget-object v2, Lcom/lge/wapservice/settings/SenderDeleteActivity;->mSenderListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
