.class public Lcom/android/nfc/lgsharing/LSharingManager$SendTask;
.super Landroid/os/AsyncTask;
.source "LSharingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/lgsharing/LSharingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SendTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/lgsharing/LSharingManager;


# direct methods
.method public constructor <init>(Lcom/android/nfc/lgsharing/LSharingManager;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/nfc/lgsharing/LSharingManager$SendTask;->this$0:Lcom/android/nfc/lgsharing/LSharingManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 160
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/lgsharing/LSharingManager$SendTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    .line 165
    new-instance v0, Lcom/android/nfc/lgsharing/LSharingClient;

    invoke-direct {v0}, Lcom/android/nfc/lgsharing/LSharingClient;-><init>()V

    .line 167
    .local v0, "client":Lcom/android/nfc/lgsharing/LSharingClient;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/nfc/lgsharing/LSharingClient;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    iget-object v3, p0, Lcom/android/nfc/lgsharing/LSharingManager$SendTask;->this$0:Lcom/android/nfc/lgsharing/LSharingManager;

    invoke-virtual {v3}, Lcom/android/nfc/lgsharing/LSharingManager;->makeSendMessage()Landroid/nfc/NdefMessage;

    move-result-object v2

    .line 175
    .local v2, "msg":Landroid/nfc/NdefMessage;
    :try_start_1
    invoke-virtual {v0, v2}, Lcom/android/nfc/lgsharing/LSharingClient;->sendLGSharingMessage(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    :goto_0
    invoke-virtual {v0}, Lcom/android/nfc/lgsharing/LSharingClient;->close()V

    .line 181
    .end local v2    # "msg":Landroid/nfc/NdefMessage;
    :goto_1
    return-object v4

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 170
    goto :goto_1

    .line 176
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "msg":Landroid/nfc/NdefMessage;
    :catch_1
    move-exception v3

    goto :goto_0
.end method
