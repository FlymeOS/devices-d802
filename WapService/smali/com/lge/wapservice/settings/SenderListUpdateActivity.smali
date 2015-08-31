.class public Lcom/lge/wapservice/settings/SenderListUpdateActivity;
.super Landroid/app/ListActivity;
.source "SenderListUpdateActivity.java"


# instance fields
.field private final LIST_ITEM_NOT_PROCESS:I

.field private final LIST_ITEM_PROCESS:I

.field private final LIST_ITEM_TRUSTED_LIST:I

.field private final LIST_ITEM_UNTRUSTED_LIST:I

.field private final NOTIFICATION_ID:I

.field private mDocument:[B

.field private mMimeType:Ljava/lang/String;

.field private mMsgType:I

.field private mOriginatingAddress:Ljava/lang/String;

.field private mServiceCenterAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 29
    const/16 v0, 0x2382

    iput v0, p0, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->NOTIFICATION_ID:I

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->LIST_ITEM_PROCESS:I

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->LIST_ITEM_NOT_PROCESS:I

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->LIST_ITEM_TRUSTED_LIST:I

    .line 34
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->LIST_ITEM_UNTRUSTED_LIST:I

    return-void
.end method


# virtual methods
.method public addSender(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 113
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 114
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "sender"

    iget-object v2, p0, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->mOriginatingAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v1, "smsc"

    iget-object v2, p0, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->mServiceCenterAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 118
    return-void
.end method

.method public addSenderToBlackList()V
    .locals 2

    .prologue
    .line 126
    const-string v1, "content://senderlist/untrustedlist"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 127
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->addSender(Landroid/net/Uri;)V

    .line 128
    return-void
.end method

.method public addSenderToWhiteList()V
    .locals 2

    .prologue
    .line 121
    const-string v1, "content://senderlist/trustedlist"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 122
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->addSender(Landroid/net/Uri;)V

    .line 123
    return-void
.end method

.method public clearNotification()V
    .locals 2

    .prologue
    .line 131
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 133
    .local v0, "manager":Landroid/app/NotificationManager;
    const/16 v1, 0x2382

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 134
    return-void
.end method

.method public generateMimeType()V
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->mMsgType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 85
    const-string v0, "application/vnd.wap.sic"

    iput-object v0, p0, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->mMimeType:Ljava/lang/String;

    .line 91
    :goto_0
    return-void

    .line 86
    :cond_0
    iget v0, p0, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->mMsgType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 87
    const-string v0, "application/vnd.wap.slc"

    iput-object v0, p0, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->mMimeType:Ljava/lang/String;

    goto :goto_0

    .line 89
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->mMimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDataFromIntent()V
    .locals 3

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.lge.wapservice.smscaddress"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->mServiceCenterAddress:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.lge.wapservice.originatingaddress"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->mOriginatingAddress:Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.lge.wapservice.msgtype"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->mMsgType:I

    .line 97
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.lge.wapservice.document"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->mDocument:[B

    .line 98
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->clearNotification()V

    .line 47
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->getDataFromIntent()V

    .line 54
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->generateMimeType()V

    .line 55
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 59
    packed-switch p3, :pswitch_data_0

    .line 81
    :goto_0
    return-void

    .line 61
    :pswitch_0
    const-string v0, "WapService"

    const-string v1, "LIST_ITEM_PROCESS"

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->processSender()V

    .line 63
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->finish()V

    goto :goto_0

    .line 66
    :pswitch_1
    const-string v0, "WapService"

    const-string v1, "LIST_ITEM_NOT_PROCESS"

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->finish()V

    goto :goto_0

    .line 70
    :pswitch_2
    const-string v0, "WapService"

    const-string v1, "LIST_ITEM_TRUSTED_LIST"

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->addSenderToWhiteList()V

    .line 72
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->processSender()V

    .line 73
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->finish()V

    goto :goto_0

    .line 76
    :pswitch_3
    const-string v0, "WapService"

    const-string v1, "LIST_ITEM_UNTRUSTED_LIST"

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->addSenderToBlackList()V

    .line 78
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->finish()V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public processSender()V
    .locals 4

    .prologue
    .line 101
    const/4 v1, 0x1

    .line 103
    .local v1, "permissionTokenEnabled":I
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v2, "data"

    iget-object v3, p0, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->mDocument:[B

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 106
    const-string v2, "smscAdd"

    iget-object v3, p0, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->mServiceCenterAddress:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v2, "originAdd"

    iget-object v3, p0, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->mOriginatingAddress:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v2, "permissionToShow"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {p0, v0, v2}, Lcom/lge/wapservice/settings/SenderListUpdateActivity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 110
    return-void
.end method
