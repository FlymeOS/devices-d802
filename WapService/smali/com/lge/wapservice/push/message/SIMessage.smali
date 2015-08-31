.class public Lcom/lge/wapservice/push/message/SIMessage;
.super Lcom/lge/wapservice/push/message/PushMessage;
.source "SIMessage.java"


# instance fields
.field CONTENT_ITEM_TYPE:Ljava/lang/String;

.field CONTENT_TYPE:Ljava/lang/String;

.field CONTENT_URI:Landroid/net/Uri;

.field public CREATED:Ljava/lang/String;

.field public EXPIRES:Ljava/lang/String;

.field public SI_ID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/lge/wapservice/push/message/PushMessage;-><init>()V

    .line 26
    const-string v0, "content://wappush/si"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wapservice/push/message/SIMessage;->CONTENT_URI:Landroid/net/Uri;

    .line 28
    const-string v0, "vnd.android.cursor.dir/si"

    iput-object v0, p0, Lcom/lge/wapservice/push/message/SIMessage;->CONTENT_TYPE:Ljava/lang/String;

    .line 29
    const-string v0, "vnd.android.cursor.item/si"

    iput-object v0, p0, Lcom/lge/wapservice/push/message/SIMessage;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    return-void
.end method
