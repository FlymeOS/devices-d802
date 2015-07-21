.class Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "LGCallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallerInfoAsyncQueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;
    }
.end annotation


# instance fields
.field private mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

.field private mContext:Landroid/content/Context;

.field private mQueryUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;

    .line 246
    invoke-static {p2}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->getCurrentProfileContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 247
    iput-object p2, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    .line 248
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;Landroid/content/Context;Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$1;

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;-><init>(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Lcom/android/internal/telephony/CallerInfoEx;)Lcom/android/internal/telephony/CallerInfoEx;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
    .param p1, "x1"    # Lcom/android/internal/telephony/CallerInfoEx;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    return-object p1
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 252
    new-instance v0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;-><init>(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 10
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x0

    .line 267
    # getter for: Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LGCallerInfoAsyncQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##### onQueryComplete() #####   query complete for token: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v8, p2

    .line 270
    check-cast v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;

    .line 271
    .local v8, "cw":Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;
    if-nez v8, :cond_3

    .line 276
    # getter for: Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "LGCallerInfoAsyncQuery"

    const-string v1, "Cookie is null, ignoring onQueryComplete() request."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_1
    if-eqz p3, :cond_2

    .line 278
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 396
    :cond_2
    :goto_0
    return-void

    .line 283
    :cond_3
    iget v0, v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->event:I

    if-ne v0, v6, :cond_4

    .line 284
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;

    # invokes: Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->release()V
    invoke-static {v0}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->access$200(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;)V

    .line 285
    if-eqz p3, :cond_2

    .line 286
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 292
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    if-nez v0, :cond_9

    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    if-nez v0, :cond_6

    .line 294
    :cond_5
    new-instance v0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$QueryPoolException;

    const-string v1, "Bad context or query uri, or LGCallerInfoAsyncQuery already released."

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_6
    const-string v0, "CTC"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->event:I

    if-ne v0, v5, :cond_c

    .line 307
    new-instance v0, Lcom/android/internal/telephony/CallerInfoEx;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallerInfoEx;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    iget-object v4, v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/CallerInfoEx;->markAsEmergency(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    .line 378
    :cond_7
    :goto_1
    # getter for: Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->access$000()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "LGCallerInfoAsyncQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "constructing CallerInfoEx object for token: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_8
    new-instance v2, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$1;)V

    .line 382
    .local v2, "endMarker":Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;
    iput v6, v2, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->event:I

    move-object v0, p0

    move v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    .line 383
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    .end local v2    # "endMarker":Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;
    :cond_9
    iget-object v0, v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;

    if-eqz v0, :cond_b

    .line 388
    # getter for: Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->access$000()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "LGCallerInfoAsyncQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying listener: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for token: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_a
    iget-object v0, v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;

    iget-object v1, v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    invoke-interface {v0, p1, v1, v3}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfoEx;)V

    .line 393
    :cond_b
    if-eqz p3, :cond_2

    .line 394
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 311
    :cond_c
    iget v0, v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->event:I

    if-ne v0, v5, :cond_d

    .line 314
    new-instance v0, Lcom/android/internal/telephony/CallerInfoEx;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallerInfoEx;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallerInfoEx;->markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    goto/16 :goto_1

    .line 315
    :cond_d
    iget v0, v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_e

    .line 316
    new-instance v0, Lcom/android/internal/telephony/CallerInfoEx;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallerInfoEx;-><init>()V

    iget-wide v4, v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->subId:J

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/CallerInfoEx;->markAsVoiceMail(J)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    goto/16 :goto_1

    .line 318
    :cond_e
    iget v0, v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_f

    .line 319
    new-instance v0, Lcom/android/internal/telephony/CallerInfoEx;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallerInfoEx;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    iget-object v4, v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/CallerInfoEx;->markAsN11OrSpecial(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    goto/16 :goto_1

    .line 323
    :cond_f
    const-string v0, "LGE_PHONE_NUMBER_QUERY"

    invoke-static {v3, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->inputNumber:Ljava/lang/String;

    invoke-static {v0, v1, p3, v4}, Lcom/android/internal/telephony/CallerInfoEx;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    .line 325
    sput-object v3, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->inputNumber:Ljava/lang/String;

    .line 330
    :goto_2
    # getter for: Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->access$000()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "LGCallerInfoAsyncQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> Got mCallerInfo: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_10
    const-string v0, "Korea_RAD"

    invoke-static {v3, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfoEx;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    iget-object v1, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfoEx;->phoneNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/CallerInfoEx;->contactNumber:Ljava/lang/String;

    .line 336
    :cond_11
    # getter for: Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->access$000()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "LGCallerInfoAsyncQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cw.number: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", phoneNumber: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    iget-object v4, v4, Lcom/android/internal/telephony/CallerInfoEx;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", contactNumber: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    iget-object v4, v4, Lcom/android/internal/telephony/CallerInfoEx;->contactNumber:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_12
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    iget-object v1, v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    invoke-static {v0, v1, v4}, Lcom/android/internal/telephony/CallerInfoEx;->doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoEx;)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v9

    .line 342
    .local v9, "newCallerInfo":Lcom/android/internal/telephony/CallerInfoEx;
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    if-eq v9, v0, :cond_13

    .line 343
    iput-object v9, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    .line 344
    # getter for: Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery;->access$000()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "LGCallerInfoAsyncQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#####async contact look up with numeric username"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfoEx;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    iget-object v1, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    iget-object v4, v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/CallerInfoEx;->updateGeoDescription(Landroid/content/Context;Ljava/lang/String;)V

    .line 371
    :cond_14
    iget-object v0, v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 372
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    iget-object v1, v8, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    iget-object v4, v4, Lcom/android/internal/telephony/CallerInfoEx;->normalizedNumber:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/telephony/CallerInfoEx;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/CallerInfoEx;->phoneNumber:Ljava/lang/String;

    goto/16 :goto_1

    .line 327
    .end local v9    # "newCallerInfo":Lcom/android/internal/telephony/CallerInfoEx;
    :cond_15
    iget-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    invoke-static {v0, v1, p3}, Lcom/android/internal/telephony/CallerInfoEx;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfoEx;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/LGCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfoEx;

    goto/16 :goto_2
.end method
