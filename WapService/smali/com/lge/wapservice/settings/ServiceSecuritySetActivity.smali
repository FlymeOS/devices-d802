.class public Lcom/lge/wapservice/settings/ServiceSecuritySetActivity;
.super Landroid/app/ListActivity;
.source "ServiceSecuritySetActivity.java"


# static fields
.field private static isTrustedListActivated:Ljava/lang/String;

.field private static isUntrustedListActivated:Ljava/lang/String;

.field private static isUpdateActivated:Ljava/lang/String;


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 35
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090010

    invoke-virtual {p0}, Lcom/lge/wapservice/settings/ServiceSecuritySetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/lge/wapservice/settings/ServiceSecuritySetActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 40
    iget-object v1, p0, Lcom/lge/wapservice/settings/ServiceSecuritySetActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v1}, Lcom/lge/wapservice/settings/ServiceSecuritySetActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/ServiceSecuritySetActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 43
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 44
    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 47
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/ServiceSecuritySetActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "white_list"

    const-string v3, "0"

    invoke-static {v1, v2, v3}, Lcom/lge/wapservice/settings/SettingsProvider;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lge/wapservice/settings/ServiceSecuritySetActivity;->isTrustedListActivated:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/ServiceSecuritySetActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "black_list"

    const-string v3, "0"

    invoke-static {v1, v2, v3}, Lcom/lge/wapservice/settings/SettingsProvider;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lge/wapservice/settings/ServiceSecuritySetActivity;->isUntrustedListActivated:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/ServiceSecuritySetActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "unmatch_update"

    const-string v3, "0"

    invoke-static {v1, v2, v3}, Lcom/lge/wapservice/settings/SettingsProvider;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lge/wapservice/settings/ServiceSecuritySetActivity;->isUpdateActivated:Ljava/lang/String;

    .line 58
    const-string v1, "1"

    sget-object v2, Lcom/lge/wapservice/settings/ServiceSecuritySetActivity;->isTrustedListActivated:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v0, v6, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 64
    :goto_0
    const-string v1, "1"

    sget-object v2, Lcom/lge/wapservice/settings/ServiceSecuritySetActivity;->isUntrustedListActivated:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    invoke-virtual {v0, v5, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 70
    :goto_1
    const-string v1, "1"

    sget-object v2, Lcom/lge/wapservice/settings/ServiceSecuritySetActivity;->isUpdateActivated:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    invoke-virtual {v0, v7, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 77
    :goto_2
    const-string v1, "WapService"

    const-string v2, "ServiceSecuritySetActivity START"

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void

    .line 61
    :cond_0
    invoke-virtual {v0, v6, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v0, v5, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_1

    .line 73
    :cond_2
    invoke-virtual {v0, v7, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 82
    packed-switch p1, :pswitch_data_0

    .line 88
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 84
    :pswitch_0
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/ServiceSecuritySetActivity;->save()V

    .line 85
    const/4 v0, 0x1

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public save()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/ServiceSecuritySetActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 96
    .local v0, "listViewToSave":Landroid/widget/ListView;
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/ServiceSecuritySetActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "white_list"

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Lcom/lge/wapservice/settings/SettingsProvider;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/ServiceSecuritySetActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "black_list"

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Lcom/lge/wapservice/settings/SettingsProvider;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/ServiceSecuritySetActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "unmatch_update"

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Lcom/lge/wapservice/settings/SettingsProvider;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_2
    const v1, 0x7f07005b

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 125
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/ServiceSecuritySetActivity;->finish()V

    .line 126
    return-void

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/ServiceSecuritySetActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "white_list"

    const-string v3, "0"

    invoke-static {v1, v2, v3}, Lcom/lge/wapservice/settings/SettingsProvider;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/ServiceSecuritySetActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "black_list"

    const-string v3, "0"

    invoke-static {v1, v2, v3}, Lcom/lge/wapservice/settings/SettingsProvider;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 119
    :cond_2
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/ServiceSecuritySetActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "unmatch_update"

    const-string v3, "0"

    invoke-static {v1, v2, v3}, Lcom/lge/wapservice/settings/SettingsProvider;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
