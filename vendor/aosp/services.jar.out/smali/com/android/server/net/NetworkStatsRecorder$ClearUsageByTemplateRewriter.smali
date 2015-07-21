.class public Lcom/android/server/net/NetworkStatsRecorder$ClearUsageByTemplateRewriter;
.super Ljava/lang/Object;
.source "NetworkStatsRecorder.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Rewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClearUsageByTemplateRewriter"
.end annotation


# instance fields
.field private final mTemp:Lcom/android/server/net/NetworkStatsCollection;

.field private final mTemplate:Landroid/net/NetworkTemplate;


# direct methods
.method public constructor <init>(JLandroid/net/NetworkTemplate;)V
    .locals 1
    .param p1, "bucketDuration"    # J
    .param p3, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    new-instance v0, Lcom/android/server/net/NetworkStatsCollection;

    invoke-direct {v0, p1, p2}, Lcom/android/server/net/NetworkStatsCollection;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$ClearUsageByTemplateRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    .line 410
    iput-object p3, p0, Lcom/android/server/net/NetworkStatsRecorder$ClearUsageByTemplateRewriter;->mTemplate:Landroid/net/NetworkTemplate;

    .line 411
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
    .line 420
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$ClearUsageByTemplateRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollection;->read(Ljava/io/InputStream;)V

    .line 421
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$ClearUsageByTemplateRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->clearDirty()V

    .line 422
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$ClearUsageByTemplateRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsRecorder$ClearUsageByTemplateRewriter;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsCollection;->clearUsageByTemplate(Landroid/net/NetworkTemplate;)Z

    .line 423
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$ClearUsageByTemplateRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    .line 416
    return-void
.end method

.method public shouldWrite()Z
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$ClearUsageByTemplateRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->isDirty()Z

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
    .line 432
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsRecorder$ClearUsageByTemplateRewriter;->mTemp:Lcom/android/server/net/NetworkStatsCollection;

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsCollection;->write(Ljava/io/DataOutputStream;)V

    .line 433
    return-void
.end method
