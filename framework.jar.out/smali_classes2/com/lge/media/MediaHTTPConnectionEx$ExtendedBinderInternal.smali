.class final Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;
.super Lcom/lge/media/IMediaHTTPConnectionEx$Stub;
.source "MediaHTTPConnectionEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/MediaHTTPConnectionEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExtendedBinderInternal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/media/MediaHTTPConnectionEx;


# direct methods
.method private constructor <init>(Lcom/lge/media/MediaHTTPConnectionEx;)V
    .locals 0

    .prologue
    .line 788
    iput-object p1, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    invoke-direct {p0}, Lcom/lge/media/IMediaHTTPConnectionEx$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/media/MediaHTTPConnectionEx;Lcom/lge/media/MediaHTTPConnectionEx$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/media/MediaHTTPConnectionEx;
    .param p2, "x1"    # Lcom/lge/media/MediaHTTPConnectionEx$1;

    .prologue
    .line 788
    invoke-direct {p0, p1}, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;-><init>(Lcom/lge/media/MediaHTTPConnectionEx;)V

    return-void
.end method


# virtual methods
.method public getCurrentOffset()J
    .locals 4

    .prologue
    .line 863
    const-string v0, "MediaHTTPConnectionEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCurrentOffset] startByte="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J
    invoke-static {v2}, Lcom/lge/media/MediaHTTPConnectionEx;->access$1300(Lcom/lge/media/MediaHTTPConnectionEx;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J
    invoke-static {v0}, Lcom/lge/media/MediaHTTPConnectionEx;->access$1300(Lcom/lge/media/MediaHTTPConnectionEx;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J
    invoke-static {v0}, Lcom/lge/media/MediaHTTPConnectionEx;->access$1300(Lcom/lge/media/MediaHTTPConnectionEx;)J

    move-result-wide v0

    .line 868
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getRangeLastByte()J
    .locals 2

    .prologue
    .line 834
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->rangeRequestLastByte:J
    invoke-static {v0}, Lcom/lge/media/MediaHTTPConnectionEx;->access$800(Lcom/lge/media/MediaHTTPConnectionEx;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->mResCode:I
    invoke-static {v0}, Lcom/lge/media/MediaHTTPConnectionEx;->access$900(Lcom/lge/media/MediaHTTPConnectionEx;)I

    move-result v0

    return v0
.end method

.method public getResponseHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->mResHeader:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/media/MediaHTTPConnectionEx;->access$600(Lcom/lge/media/MediaHTTPConnectionEx;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseHeaderFields()Ljava/lang/String;
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->mResHeaderFields:Ljava/lang/StringBuilder;
    invoke-static {v0}, Lcom/lge/media/MediaHTTPConnectionEx;->access$1200(Lcom/lge/media/MediaHTTPConnectionEx;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->mResHeaderFields:Ljava/lang/StringBuilder;
    invoke-static {v0}, Lcom/lge/media/MediaHTTPConnectionEx;->access$1200(Lcom/lge/media/MediaHTTPConnectionEx;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 857
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportRangeRequest()Z
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->mServerSupportRangeRequest:Z
    invoke-static {v0}, Lcom/lge/media/MediaHTTPConnectionEx;->access$700(Lcom/lge/media/MediaHTTPConnectionEx;)Z

    move-result v0

    return v0
.end method

.method public setContentSize(J)V
    .locals 1
    .param p1, "contentSize"    # J

    .prologue
    .line 874
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # setter for: Lcom/lge/media/MediaHTTPConnectionEx;->mContentSize:J
    invoke-static {v0, p1, p2}, Lcom/lge/media/MediaHTTPConnectionEx;->access$1402(Lcom/lge/media/MediaHTTPConnectionEx;J)J

    .line 875
    return-void
.end method

.method public setDLNAByteRangeSeekMode(Z)V
    .locals 3
    .param p1, "mode"    # Z

    .prologue
    .line 798
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # setter for: Lcom/lge/media/MediaHTTPConnectionEx;->mIsHttpByteRangeSeek:Z
    invoke-static {v0, p1}, Lcom/lge/media/MediaHTTPConnectionEx;->access$202(Lcom/lge/media/MediaHTTPConnectionEx;Z)Z

    .line 799
    const-string v0, "MediaHTTPConnectionEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDLNAByteRangeSeekMode mIsHttpByteRangeSeek="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    return-void
.end method

.method public setDLNAPauseMode(Z)V
    .locals 3
    .param p1, "mode"    # Z

    .prologue
    .line 804
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # setter for: Lcom/lge/media/MediaHTTPConnectionEx;->mIsDisconnectAtPause:Z
    invoke-static {v0, p1}, Lcom/lge/media/MediaHTTPConnectionEx;->access$302(Lcom/lge/media/MediaHTTPConnectionEx;Z)Z

    .line 805
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    const/4 v1, 0x1

    # setter for: Lcom/lge/media/MediaHTTPConnectionEx;->mIsHttpDlnaPlayback:Z
    invoke-static {v0, v1}, Lcom/lge/media/MediaHTTPConnectionEx;->access$402(Lcom/lge/media/MediaHTTPConnectionEx;Z)Z

    .line 806
    const-string v0, "MediaHTTPConnectionEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDLNAPauseMode mIsDisconnectAtPause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    return-void
.end method

.method public setDLNAPlayback(Z)V
    .locals 3
    .param p1, "mode"    # Z

    .prologue
    .line 811
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # setter for: Lcom/lge/media/MediaHTTPConnectionEx;->mIsHttpDlnaPlayback:Z
    invoke-static {v0, p1}, Lcom/lge/media/MediaHTTPConnectionEx;->access$402(Lcom/lge/media/MediaHTTPConnectionEx;Z)Z

    .line 812
    const-string v0, "MediaHTTPConnectionEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDLNAPlayback mIsHttpDlnaPlayback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    return-void
.end method

.method public setDLNATimeSeekMode(Z)V
    .locals 3
    .param p1, "mode"    # Z

    .prologue
    .line 792
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # setter for: Lcom/lge/media/MediaHTTPConnectionEx;->mIsHttpTimeSeek:Z
    invoke-static {v0, p1}, Lcom/lge/media/MediaHTTPConnectionEx;->access$102(Lcom/lge/media/MediaHTTPConnectionEx;Z)Z

    .line 793
    const-string v0, "MediaHTTPConnectionEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDLNATimeSeekMode mIsHttpTimeSeek="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    return-void
.end method

.method public setDLNATimeSeekValue(J)V
    .locals 5
    .param p1, "param"    # J

    .prologue
    .line 817
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # setter for: Lcom/lge/media/MediaHTTPConnectionEx;->mTimeSeekValue:J
    invoke-static {v0, p1, p2}, Lcom/lge/media/MediaHTTPConnectionEx;->access$502(Lcom/lge/media/MediaHTTPConnectionEx;J)J

    .line 818
    const-string v0, "MediaHTTPConnectionEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDLNATimeSeekValue mTimeSeekValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # getter for: Lcom/lge/media/MediaHTTPConnectionEx;->mTimeSeekValue:J
    invoke-static {v2}, Lcom/lge/media/MediaHTTPConnectionEx;->access$500(Lcom/lge/media/MediaHTTPConnectionEx;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    return-void
.end method

.method public setTimeout(II)V
    .locals 1
    .param p1, "connectTimeoutms"    # I
    .param p2, "readTimeoutms"    # I

    .prologue
    .line 844
    if-ltz p1, :cond_0

    .line 845
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # setter for: Lcom/lge/media/MediaHTTPConnectionEx;->mConnectTimeout:I
    invoke-static {v0, p1}, Lcom/lge/media/MediaHTTPConnectionEx;->access$1002(Lcom/lge/media/MediaHTTPConnectionEx;I)I

    .line 847
    :cond_0
    if-ltz p2, :cond_1

    .line 848
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->this$0:Lcom/lge/media/MediaHTTPConnectionEx;

    # setter for: Lcom/lge/media/MediaHTTPConnectionEx;->mReadTimeout:I
    invoke-static {v0, p2}, Lcom/lge/media/MediaHTTPConnectionEx;->access$1102(Lcom/lge/media/MediaHTTPConnectionEx;I)I

    .line 850
    :cond_1
    return-void
.end method
