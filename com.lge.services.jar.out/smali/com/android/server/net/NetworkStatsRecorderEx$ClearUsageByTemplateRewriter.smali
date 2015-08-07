.class public Lcom/android/server/net/NetworkStatsRecorderEx$ClearUsageByTemplateRewriter;
.super Ljava/lang/Object;
.source "NetworkStatsRecorderEx.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Rewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsRecorderEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClearUsageByTemplateRewriter"
.end annotation


# instance fields
.field private final mTemp:Lcom/android/server/net/NetworkStatsCollectionEx;

.field private final mTemplate:Landroid/net/NetworkTemplate;


# direct methods
.method public constructor <init>(JLandroid/net/NetworkTemplate;)V
    .locals 1
    .param p1, "bucketDuration"    # J
    .param p3, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/android/server/net/NetworkStatsCollectionEx;

    invoke-direct {v0, p1, p2}, Lcom/android/server/net/NetworkStatsCollectionEx;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderEx$ClearUsageByTemplateRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollectionEx;

    .line 65
    iput-object p3, p0, Lcom/android/server/net/NetworkStatsRecorderEx$ClearUsageByTemplateRewriter;->mTemplate:Landroid/net/NetworkTemplate;

    .line 66
    return-void
.end method


# virtual methods
.method public read(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderEx$ClearUsageByTemplateRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollectionEx;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollectionEx;->read(Ljava/io/InputStream;)V

    .line 76
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderEx$ClearUsageByTemplateRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollectionEx;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollectionEx;->clearDirty()V

    .line 77
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderEx$ClearUsageByTemplateRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollectionEx;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorderEx$ClearUsageByTemplateRewriter;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsCollectionEx;->clearUsageByTemplate(Landroid/net/NetworkTemplate;)Z

    .line 78
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderEx$ClearUsageByTemplateRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollectionEx;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollectionEx;->reset()V

    .line 71
    return-void
.end method

.method public shouldWrite()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderEx$ClearUsageByTemplateRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollectionEx;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollectionEx;->isDirty()Z

    move-result v0

    return v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorderEx$ClearUsageByTemplateRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollectionEx;

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsCollectionEx;->write(Ljava/io/DataOutputStream;)V

    .line 88
    return-void
.end method
