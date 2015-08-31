.class public Lcom/lge/wapservice/settings/SenderEditor;
.super Landroid/preference/PreferenceActivity;
.source "SenderEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static COLUMN_ID:I

.field private static COLUMN_SENDER:I

.field private static COLUMN_SMSC:I

.field private static final projection:[Ljava/lang/String;

.field private static sNotSet:Ljava/lang/String;


# instance fields
.field private final editMode:Z

.field private final insertMode:Z

.field private mCursor:Landroid/database/Cursor;

.field private mDiscardButton:Landroid/view/View;

.field private mMode:Z

.field private mOriginAddress:Landroid/preference/EditTextPreference;

.field private mSaveButton:Landroid/view/View;

.field private mSmscAddress:Landroid/preference/EditTextPreference;

.field private mUri:Landroid/net/Uri;

.field private preferenceEditor:Landroid/widget/EditText;

.field private trustedListUri:Landroid/net/Uri;

.field private untrustedListUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "sender"

    aput-object v1, v0, v3

    const-string v1, "smsc"

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/wapservice/settings/SenderEditor;->projection:[Ljava/lang/String;

    .line 82
    sput v2, Lcom/lge/wapservice/settings/SenderEditor;->COLUMN_ID:I

    .line 83
    sput v3, Lcom/lge/wapservice/settings/SenderEditor;->COLUMN_SENDER:I

    .line 84
    sput v4, Lcom/lge/wapservice/settings/SenderEditor;->COLUMN_SMSC:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/wapservice/settings/SenderEditor;->insertMode:Z

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/wapservice/settings/SenderEditor;->editMode:Z

    .line 73
    const-string v0, "content://senderlist/trustedlist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wapservice/settings/SenderEditor;->trustedListUri:Landroid/net/Uri;

    .line 74
    const-string v0, "content://senderlist/untrustedlist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wapservice/settings/SenderEditor;->untrustedListUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/wapservice/settings/SenderEditor;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wapservice/settings/SenderEditor;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lge/wapservice/settings/SenderEditor;->preferenceEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 294
    if-eqz p1, :cond_0

    sget-object v0, Lcom/lge/wapservice/settings/SenderEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    :cond_0
    const-string p1, ""

    .line 297
    .end local p1    # "value":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method private showErrorMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 242
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Error"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 247
    return-void
.end method

.method private validateAndSave(Z)Z
    .locals 8
    .param p1, "force"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 252
    iget-object v4, p0, Lcom/lge/wapservice/settings/SenderEditor;->mSmscAddress:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/lge/wapservice/settings/SenderEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "smscAddress":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/wapservice/settings/SenderEditor;->mOriginAddress:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/lge/wapservice/settings/SenderEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "originAddress":Ljava/lang/String;
    const/4 v0, 0x0

    .line 258
    .local v0, "errorMsg":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v5, :cond_1

    .line 259
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f070050

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 264
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 265
    invoke-direct {p0, v0}, Lcom/lge/wapservice/settings/SenderEditor;->showErrorMessage(Ljava/lang/String;)V

    .line 266
    const/4 v4, 0x0

    .line 283
    :goto_1
    return v4

    .line 260
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v5, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f070051

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 269
    :cond_2
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 271
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "sender"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v4, "smsc"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-boolean v4, p0, Lcom/lge/wapservice/settings/SenderEditor;->mMode:Z

    if-nez v4, :cond_3

    .line 277
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v6, p0, Lcom/lge/wapservice/settings/SenderEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v6, v3, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_2
    move v4, v5

    .line 283
    goto :goto_1

    .line 279
    :cond_3
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v6, p0, Lcom/lge/wapservice/settings/SenderEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v6, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 222
    :pswitch_0
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderEditor;->finish()V

    goto :goto_0

    .line 225
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/wapservice/settings/SenderEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderEditor;->finish()V

    goto :goto_0

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x7f09001f
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 90
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/settings/SenderEditor;->setContentView(I)V

    .line 92
    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/settings/SenderEditor;->addPreferencesFromResource(I)V

    .line 94
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/wapservice/settings/SenderEditor;->sNotSet:Ljava/lang/String;

    .line 95
    const-string v0, "sender_smsc_edit_pref"

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/settings/SenderEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/lge/wapservice/settings/SenderEditor;->mSmscAddress:Landroid/preference/EditTextPreference;

    .line 96
    const-string v0, "sender_origin_add_edit_pref"

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/settings/SenderEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/lge/wapservice/settings/SenderEditor;->mOriginAddress:Landroid/preference/EditTextPreference;

    .line 98
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderEditor;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 99
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 103
    .local v7, "action":Ljava/lang/String;
    iget-object v0, p0, Lcom/lge/wapservice/settings/SenderEditor;->mSmscAddress:Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/lge/wapservice/settings/SenderEditor;->mOriginAddress:Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wapservice/settings/SenderEditor;->mUri:Landroid/net/Uri;

    .line 107
    const-string v0, "WapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wapservice/settings/SenderEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v1, p0, Lcom/lge/wapservice/settings/SenderEditor;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/lge/wapservice/settings/SenderEditor;->projection:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/lge/wapservice/settings/SenderEditor;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wapservice/settings/SenderEditor;->mCursor:Landroid/database/Cursor;

    .line 110
    iget-object v0, p0, Lcom/lge/wapservice/settings/SenderEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/lge/wapservice/settings/SenderEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 114
    const-string v0, "android.intent.action.EDIT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iput-boolean v10, p0, Lcom/lge/wapservice/settings/SenderEditor;->mMode:Z

    .line 116
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/settings/SenderEditor;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/lge/wapservice/settings/SenderEditor;->mSmscAddress:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/lge/wapservice/settings/SenderEditor;->mCursor:Landroid/database/Cursor;

    sget v2, Lcom/lge/wapservice/settings/SenderEditor;->COLUMN_SMSC:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/lge/wapservice/settings/SenderEditor;->mOriginAddress:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/lge/wapservice/settings/SenderEditor;->mCursor:Landroid/database/Cursor;

    sget v2, Lcom/lge/wapservice/settings/SenderEditor;->COLUMN_SENDER:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 119
    const-string v0, "WapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SenderEditor Received Intent.ACTION_EDIT with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wapservice/settings/SenderEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_0
    const v0, 0x7f09001f

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/settings/SenderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wapservice/settings/SenderEditor;->mSaveButton:Landroid/view/View;

    .line 133
    iget-object v0, p0, Lcom/lge/wapservice/settings/SenderEditor;->mSaveButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v0, 0x7f090020

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/settings/SenderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wapservice/settings/SenderEditor;->mDiscardButton:Landroid/view/View;

    .line 135
    iget-object v0, p0, Lcom/lge/wapservice/settings/SenderEditor;->mDiscardButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    :goto_1
    return-void

    .line 121
    :cond_0
    const-string v0, "android.intent.action.INSERT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iput-boolean v11, p0, Lcom/lge/wapservice/settings/SenderEditor;->mMode:Z

    .line 123
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/settings/SenderEditor;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/lge/wapservice/settings/SenderEditor;->mSmscAddress:Landroid/preference/EditTextPreference;

    sget-object v1, Lcom/lge/wapservice/settings/SenderEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/lge/wapservice/settings/SenderEditor;->mOriginAddress:Landroid/preference/EditTextPreference;

    sget-object v1, Lcom/lge/wapservice/settings/SenderEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderEditor;->finish()V

    goto :goto_1

    .line 138
    :cond_2
    const v9, 0x7f07006c

    .line 139
    .local v9, "msg":I
    invoke-static {p0, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    .line 142
    .local v6, "UnsupportedMessage":Landroid/widget/Toast;
    const/16 v0, 0x11

    invoke-virtual {v6, v0, v10, v10}, Landroid/widget/Toast;->setGravity(III)V

    .line 143
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 144
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderEditor;->finish()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 165
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 170
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v1, "WapService"

    const-string v2, "SenderEditor.java onResume() getSharedPreferences() is null"

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x1

    .line 190
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-object v2, p2

    .line 192
    check-cast v2, Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/wapservice/settings/SenderEditor;->preferenceEditor:Landroid/widget/EditText;

    .line 197
    iget-boolean v2, p0, Lcom/lge/wapservice/settings/SenderEditor;->mMode:Z

    if-ne v2, v6, :cond_0

    .line 198
    const-string v1, ""

    .line 202
    .local v1, "summary":Ljava/lang/CharSequence;
    :goto_0
    iget-object v2, p0, Lcom/lge/wapservice/settings/SenderEditor;->preferenceEditor:Landroid/widget/EditText;

    sget-object v3, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 205
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 206
    .local v0, "mHandler":Landroid/os/Handler;
    new-instance v2, Lcom/lge/wapservice/settings/SenderEditor$1;

    invoke-direct {v2, p0}, Lcom/lge/wapservice/settings/SenderEditor$1;-><init>(Lcom/lge/wapservice/settings/SenderEditor;)V

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 216
    return v6

    .line 200
    .end local v0    # "mHandler":Landroid/os/Handler;
    .end local v1    # "summary":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1    # "summary":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 152
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 155
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v1, "WapService"

    const-string v2, "SenderEditor.java onResume() getSharedPreferences() is null"

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 186
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/wapservice/settings/SenderEditor;->validateAndSave(Z)Z

    .line 187
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-virtual {p0, p2}, Lcom/lge/wapservice/settings/SenderEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 236
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 237
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 239
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 174
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 175
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderEditor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 176
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/lge/wapservice/settings/SenderEditor;->finish()V

    .line 181
    :cond_0
    return-void
.end method
