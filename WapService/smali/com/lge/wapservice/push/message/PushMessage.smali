.class public Lcom/lge/wapservice/push/message/PushMessage;
.super Ljava/lang/Object;
.source "PushMessage.java"


# instance fields
.field public ACTION:Ljava/lang/String;

.field public CONTENT:Ljava/lang/String;

.field CONTENT_ITEM_TYPE:Ljava/lang/String;

.field CONTENT_TYPE:Ljava/lang/String;

.field CONTENT_URI:Landroid/net/Uri;

.field public HREF:Ljava/lang/String;

.field public final MESSAGE_TYPE_PUSH_SI:I

.field public final MESSAGE_TYPE_PUSH_SL:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "content://wappush"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wapservice/push/message/PushMessage;->CONTENT_URI:Landroid/net/Uri;

    .line 27
    const-string v0, "vnd.android.cursor.dir/wappush"

    iput-object v0, p0, Lcom/lge/wapservice/push/message/PushMessage;->CONTENT_TYPE:Ljava/lang/String;

    .line 28
    const-string v0, "vnd.android.cursor.item/wappush"

    iput-object v0, p0, Lcom/lge/wapservice/push/message/PushMessage;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/wapservice/push/message/PushMessage;->MESSAGE_TYPE_PUSH_SI:I

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/wapservice/push/message/PushMessage;->MESSAGE_TYPE_PUSH_SL:I

    return-void
.end method
