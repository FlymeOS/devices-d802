.class public Lcom/lge/browser/metropcs/MetroPCSPurchase;
.super Ljava/lang/Object;
.source "MetroPCSPurchase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/browser/metropcs/MetroPCSPurchase$MMCReq;,
        Lcom/lge/browser/metropcs/MetroPCSPurchase$Purchase;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.lge.browser.metropcs"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static getPageUrl(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 70
    const/4 v6, 0x0

    .line 71
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "page_url"

    aput-object v0, v2, v1

    .line 72
    .local v2, "projection":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 73
    .local v3, "selection":Ljava/lang/String;
    const/4 v7, 0x0

    .line 77
    .local v7, "url":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p1, v1}, Lcom/lge/lgdrm/DrmContent;->getContentInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    sget-object v1, Lcom/lge/browser/metropcs/MetroPCSPurchase$Purchase;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 87
    if-nez v6, :cond_1

    .line 88
    const-string v0, "BROWSER"

    const-string v1, "<MetroPCSPurchase> cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    if-eqz v6, :cond_0

    .line 100
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v8

    .line 104
    :goto_0
    return-object v0

    .line 92
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 99
    :cond_2
    if-eqz v6, :cond_3

    .line 100
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move-object v0, v7

    .line 104
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 99
    if-eqz v6, :cond_3

    .line 100
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 99
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 100
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method
