.class Landroid/nfc/NfcActivityManager$NfcActivityState;
.super Ljava/lang/Object;
.source "NfcActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/NfcActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NfcActivityState"
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field flags:I

.field ndefMessage:Landroid/nfc/NdefMessage;

.field ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

.field onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

.field readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;

.field readerModeExtras:Landroid/os/Bundle;

.field readerModeFlags:I

.field resumed:Z

.field final synthetic this$0:Landroid/nfc/NfcActivityManager;

.field token:Landroid/os/Binder;

.field uriCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

.field uris:[Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/nfc/NfcActivityManager;Landroid/app/Activity;)V
    .locals 2
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 122
    iput-object p1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->this$0:Landroid/nfc/NfcActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-boolean v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .line 111
    iput-object v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    .line 112
    iput-object v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    .line 113
    iput-object v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    .line 114
    iput-object v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uriCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    .line 115
    iput-object v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uris:[Landroid/net/Uri;

    .line 116
    iput v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->flags:I

    .line 117
    iput v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeFlags:I

    .line 118
    iput-object v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;

    .line 119
    iput-object v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeExtras:Landroid/os/Bundle;

    .line 123
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "NFC"

    const-string v1, "activity is already destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_0
    return-void

    .line 129
    :cond_0
    const-string v0, "android.permission.NFC"

    const-string v1, "NFC permission required."

    invoke-virtual {p2, v0, v1}, Landroid/app/Activity;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    iput-boolean v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .line 135
    iput-object p2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->activity:Landroid/app/Activity;

    .line 136
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    .line 137
    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/nfc/NfcActivityManager;->registerApplication(Landroid/app/Application;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 140
    iget-object v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->this$0:Landroid/nfc/NfcActivityManager;

    iget-object v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/nfc/NfcActivityManager;->unregisterApplication(Landroid/app/Application;)V

    .line 141
    iput-boolean v3, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .line 142
    iput-object v2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->activity:Landroid/app/Activity;

    .line 143
    iput-object v2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    .line 144
    iput-object v2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    .line 145
    iput-object v2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    .line 146
    iput-object v2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uriCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    .line 147
    iput-object v2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uris:[Landroid/net/Uri;

    .line 148
    iput v3, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeFlags:I

    .line 149
    iput-object v2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    .line 150
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 154
    .local v3, "s":Ljava/lang/StringBuilder;
    iget-object v5, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object v5, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uriCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-object v5, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uris:[Landroid/net/Uri;

    if-eqz v5, :cond_0

    .line 157
    iget-object v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uris:[Landroid/net/Uri;

    .local v0, "arr$":[Landroid/net/Uri;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 158
    .local v4, "uri":Landroid/net/Uri;
    iget-object v5, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v0    # "arr$":[Landroid/net/Uri;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
