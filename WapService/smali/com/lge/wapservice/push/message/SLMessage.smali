.class public Lcom/lge/wapservice/push/message/SLMessage;
.super Lcom/lge/wapservice/push/message/PushMessage;
.source "SLMessage.java"


# instance fields
.field public ACTION_CACHE:I

.field public ACTION_EXECUTE_HIGH:I

.field public ACTION_EXECUTE_LOW:I

.field CONTENT_ITEM_TYPE:Ljava/lang/String;

.field CONTENT_TYPE:Ljava/lang/String;

.field CONTENT_URI:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/lge/wapservice/push/message/PushMessage;-><init>()V

    .line 26
    const-string v0, "content://wappush/sl"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wapservice/push/message/SLMessage;->CONTENT_URI:Landroid/net/Uri;

    .line 28
    const-string v0, "vnd.android.cursor.dir/sl"

    iput-object v0, p0, Lcom/lge/wapservice/push/message/SLMessage;->CONTENT_TYPE:Ljava/lang/String;

    .line 29
    const-string v0, "vnd.android.cursor.item/sl"

    iput-object v0, p0, Lcom/lge/wapservice/push/message/SLMessage;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    .line 37
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/wapservice/push/message/SLMessage;->ACTION_EXECUTE_LOW:I

    .line 38
    const/4 v0, 0x6

    iput v0, p0, Lcom/lge/wapservice/push/message/SLMessage;->ACTION_EXECUTE_HIGH:I

    .line 39
    const/4 v0, 0x7

    iput v0, p0, Lcom/lge/wapservice/push/message/SLMessage;->ACTION_CACHE:I

    return-void
.end method
