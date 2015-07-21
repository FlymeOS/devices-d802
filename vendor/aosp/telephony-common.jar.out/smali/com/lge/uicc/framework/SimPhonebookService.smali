.class public Lcom/lge/uicc/framework/SimPhonebookService;
.super Lcom/lge/uicc/ISimPhonebookService$Stub;
.source "SimPhonebookService.java"

# interfaces
.implements Lcom/lge/uicc/framework/PbmEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/uicc/framework/SimPhonebookService$1;,
        Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;
    }
.end annotation


# static fields
.field private static final EVENT_GET_INIT_STATE_DONE:I = 0x2

.field private static final EVENT_PBREADY:I = 0x3

.field private static final EVENT_PROXY_SIM_READY:I = 0x1

.field private static final SUPPORT_GROUP:Z

.field private static mPbmService:Lcom/lge/uicc/framework/SimPhonebookService;


# instance fields
.field private mPbmHandler:Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/uicc/framework/SimPhonebookService;->mPbmService:Lcom/lge/uicc/framework/SimPhonebookService;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/lge/uicc/ISimPhonebookService$Stub;-><init>()V

    .line 58
    new-instance v0, Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;-><init>(Lcom/lge/uicc/framework/SimPhonebookService;Lcom/lge/uicc/framework/SimPhonebookService$1;)V

    iput-object v0, p0, Lcom/lge/uicc/framework/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;

    .line 59
    const-string v0, "proxy.sim_state"

    iget-object v1, p0, Lcom/lge/uicc/framework/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;

    const/4 v2, 0x1

    const-string v3, "READY"

    invoke-static {v0, v1, v2, v3}, Lcom/lge/uicc/framework/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    .line 60
    const-string v0, "pbm_state"

    iget-object v1, p0, Lcom/lge/uicc/framework/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;

    const/4 v2, 0x3

    const-string v3, "READY"

    invoke-static {v0, v1, v2, v3}, Lcom/lge/uicc/framework/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    .line 61
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {p0}, Lcom/lge/uicc/framework/SimPhonebookService;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/uicc/framework/SimPhonebookService;)Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;
    .locals 1
    .param p0, "x0"    # Lcom/lge/uicc/framework/SimPhonebookService;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/uicc/framework/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {p0}, Lcom/lge/uicc/framework/SimPhonebookService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private static convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 6
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "type"    # I
    .param p2, "inverse"    # Z

    .prologue
    const/16 v5, 0x2b

    .line 512
    if-nez p0, :cond_0

    .line 513
    const-string v4, ""

    .line 529
    :goto_0
    return-object v4

    .line 516
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 517
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 519
    .local v3, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 520
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 521
    .local v0, "c":C
    if-eqz p2, :cond_2

    .line 527
    :cond_1
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 519
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 523
    :cond_2
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    if-nez v1, :cond_1

    if-eq v0, v5, :cond_1

    .line 524
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 529
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static detectType(Ljava/lang/String;)I
    .locals 3
    .param p0, "num"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 502
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 508
    :cond_0
    :goto_0
    return v0

    .line 505
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    .line 506
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private dumpPbmInfo(Ljava/lang/String;Lcom/lge/uicc/framework/PbmInfo;)V
    .locals 5
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/lge/uicc/framework/PbmInfo;

    .prologue
    .line 625
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/lge/uicc/framework/PbmInfo;->device:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/lge/uicc/framework/PbmInfo;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|file_type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/lge/uicc/framework/PbmInfo;->file_type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|max_num_length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/lge/uicc/framework/PbmInfo;->max_num_length:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|max_text_length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/lge/uicc/framework/PbmInfo;->max_text_length:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|num_of_free_ext="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/lge/uicc/framework/PbmInfo;->num_of_free_ext:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|num_of_tot_rec="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/lge/uicc/framework/PbmInfo;->num_of_tot_rec:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|num_of_used_rec="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/lge/uicc/framework/PbmInfo;->num_of_used_rec:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 635
    .local v1, "log1":Ljava/lang/String;
    const-string v2, ""

    .line 636
    .local v2, "log2":Ljava/lang/String;
    iget-object v3, p2, Lcom/lge/uicc/framework/PbmInfo;->records_in_pb_set:[I

    if-eqz v3, :cond_0

    .line 637
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v3, p2, Lcom/lge/uicc/framework/PbmInfo;->records_in_pb_set:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 638
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "| records_in_pb_set["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/lge/uicc/framework/PbmInfo;->records_in_pb_set:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 639
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "| used_records_in_pb_set["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/lge/uicc/framework/PbmInfo;->used_records_in_pb_set:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 637
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 642
    .end local v0    # "index":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/framework/SimPhonebookService;->logd(Ljava/lang/String;)V

    .line 643
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PbmService] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->logd(Ljava/lang/String;)V

    .line 651
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PbmService] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->loge(Ljava/lang/String;)V

    .line 647
    return-void
.end method

.method private static logp(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PbmService] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->logp(Ljava/lang/String;)V

    .line 655
    return-void
.end method

.method private newPbmGroupRecordWithoutGroupIndex(Lcom/lge/uicc/SimPhonebookBaseEntry;)Lcom/lge/uicc/framework/PbmRecord;
    .locals 3
    .param p1, "group"    # Lcom/lge/uicc/SimPhonebookBaseEntry;

    .prologue
    const/4 v2, 0x0

    .line 601
    new-instance v0, Lcom/lge/uicc/framework/PbmRecord;

    invoke-direct {v0}, Lcom/lge/uicc/framework/PbmRecord;-><init>()V

    .line 603
    .local v0, "record":Lcom/lge/uicc/framework/PbmRecord;
    const/16 v1, 0x20

    iput v1, v0, Lcom/lge/uicc/framework/PbmRecord;->device:I

    .line 604
    iput v2, v0, Lcom/lge/uicc/framework/PbmRecord;->sync_cnt:I

    .line 605
    iput v2, v0, Lcom/lge/uicc/framework/PbmRecord;->type:I

    .line 606
    iput v2, v0, Lcom/lge/uicc/framework/PbmRecord;->ad_type:I

    .line 607
    iput v2, v0, Lcom/lge/uicc/framework/PbmRecord;->gas_id:I

    .line 608
    iput v2, v0, Lcom/lge/uicc/framework/PbmRecord;->index:I

    .line 609
    iget-object v1, p1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mName:Ljava/lang/String;

    iput-object v1, v0, Lcom/lge/uicc/framework/PbmRecord;->name:Ljava/lang/String;

    .line 611
    iget-object v1, v0, Lcom/lge/uicc/framework/PbmRecord;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 612
    const-string v1, ""

    iput-object v1, v0, Lcom/lge/uicc/framework/PbmRecord;->name:Ljava/lang/String;

    .line 614
    :cond_0
    const-string v1, ""

    iput-object v1, v0, Lcom/lge/uicc/framework/PbmRecord;->number:Ljava/lang/String;

    .line 615
    const-string v1, ""

    iput-object v1, v0, Lcom/lge/uicc/framework/PbmRecord;->additional_number:Ljava/lang/String;

    .line 616
    const-string v1, ""

    iput-object v1, v0, Lcom/lge/uicc/framework/PbmRecord;->additional_number_a:Ljava/lang/String;

    .line 617
    const-string v1, ""

    iput-object v1, v0, Lcom/lge/uicc/framework/PbmRecord;->additional_number_b:Ljava/lang/String;

    .line 618
    const-string v1, ""

    iput-object v1, v0, Lcom/lge/uicc/framework/PbmRecord;->email_address:Ljava/lang/String;

    .line 619
    const-string v1, ""

    iput-object v1, v0, Lcom/lge/uicc/framework/PbmRecord;->second_name:Ljava/lang/String;

    .line 621
    return-object v0
.end method

.method private newPbmRecordWithoutSimIndex(Lcom/lge/uicc/SimPhonebookBaseEntry;)Lcom/lge/uicc/framework/PbmRecord;
    .locals 10
    .param p1, "entry"    # Lcom/lge/uicc/SimPhonebookBaseEntry;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 534
    new-instance v5, Lcom/lge/uicc/framework/PbmRecord;

    invoke-direct {v5}, Lcom/lge/uicc/framework/PbmRecord;-><init>()V

    .line 536
    .local v5, "records":Lcom/lge/uicc/framework/PbmRecord;
    iput v8, v5, Lcom/lge/uicc/framework/PbmRecord;->device:I

    .line 537
    iput v8, v5, Lcom/lge/uicc/framework/PbmRecord;->sync_cnt:I

    .line 538
    iput v8, v5, Lcom/lge/uicc/framework/PbmRecord;->type:I

    .line 539
    iput v8, v5, Lcom/lge/uicc/framework/PbmRecord;->ad_type:I

    .line 540
    iget-object v7, p1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mName:Ljava/lang/String;

    iput-object v7, v5, Lcom/lge/uicc/framework/PbmRecord;->name:Ljava/lang/String;

    .line 542
    iget-object v7, v5, Lcom/lge/uicc/framework/PbmRecord;->name:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 543
    const-string v7, ""

    iput-object v7, v5, Lcom/lge/uicc/framework/PbmRecord;->name:Ljava/lang/String;

    .line 546
    :cond_0
    iget-object v4, p1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mNumbers:Landroid/util/SparseArray;

    .line 547
    .local v4, "numbers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 549
    .local v3, "number":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 550
    const-string v7, ""

    iput-object v7, v5, Lcom/lge/uicc/framework/PbmRecord;->number:Ljava/lang/String;

    .line 556
    :goto_0
    const-string v7, ""

    iput-object v7, v5, Lcom/lge/uicc/framework/PbmRecord;->additional_number:Ljava/lang/String;

    .line 557
    const-string v7, ""

    iput-object v7, v5, Lcom/lge/uicc/framework/PbmRecord;->additional_number_a:Ljava/lang/String;

    .line 558
    const-string v7, ""

    iput-object v7, v5, Lcom/lge/uicc/framework/PbmRecord;->additional_number_b:Ljava/lang/String;

    .line 560
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 561
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 563
    .local v2, "length":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 564
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "number":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 565
    .restart local v3    # "number":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 566
    invoke-static {v3}, Lcom/lge/uicc/framework/SimPhonebookService;->detectType(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/lge/uicc/framework/PbmRecord;->ad_type:I

    .line 567
    iget v7, v5, Lcom/lge/uicc/framework/PbmRecord;->ad_type:I

    invoke-static {v3, v7, v9}, Lcom/lge/uicc/framework/SimPhonebookService;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v3

    .line 569
    packed-switch v1, :pswitch_data_0

    .line 563
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 552
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_2
    invoke-static {v3}, Lcom/lge/uicc/framework/SimPhonebookService;->detectType(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/lge/uicc/framework/PbmRecord;->type:I

    .line 553
    iget v7, v5, Lcom/lge/uicc/framework/PbmRecord;->type:I

    invoke-static {v3, v7, v9}, Lcom/lge/uicc/framework/SimPhonebookService;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/lge/uicc/framework/PbmRecord;->number:Ljava/lang/String;

    goto :goto_0

    .line 571
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :pswitch_0
    iput-object v3, v5, Lcom/lge/uicc/framework/PbmRecord;->additional_number:Ljava/lang/String;

    goto :goto_2

    .line 575
    :pswitch_1
    iput-object v3, v5, Lcom/lge/uicc/framework/PbmRecord;->additional_number_a:Ljava/lang/String;

    goto :goto_2

    .line 579
    :pswitch_2
    iput-object v3, v5, Lcom/lge/uicc/framework/PbmRecord;->additional_number_b:Ljava/lang/String;

    goto :goto_2

    .line 586
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_3
    iget-object v0, p1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mEmails:Landroid/util/SparseArray;

    .line 587
    .local v0, "emails":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v5, Lcom/lge/uicc/framework/PbmRecord;->email_address:Ljava/lang/String;

    .line 588
    iget-object v7, v5, Lcom/lge/uicc/framework/PbmRecord;->email_address:Ljava/lang/String;

    if-nez v7, :cond_4

    .line 589
    const-string v7, ""

    iput-object v7, v5, Lcom/lge/uicc/framework/PbmRecord;->email_address:Ljava/lang/String;

    .line 591
    :cond_4
    iget-object v6, p1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mSecondName:Landroid/util/SparseArray;

    .line 592
    .local v6, "sne":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v5, Lcom/lge/uicc/framework/PbmRecord;->second_name:Ljava/lang/String;

    .line 593
    iget-object v7, v5, Lcom/lge/uicc/framework/PbmRecord;->second_name:Ljava/lang/String;

    if-nez v7, :cond_5

    .line 594
    const-string v7, ""

    iput-object v7, v5, Lcom/lge/uicc/framework/PbmRecord;->second_name:Ljava/lang/String;

    .line 596
    :cond_5
    iget v7, p1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mGroupId:I

    iput v7, v5, Lcom/lge/uicc/framework/PbmRecord;->gas_id:I

    .line 597
    return-object v5

    .line 569
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected static setup()V
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/lge/uicc/framework/SimPhonebookService;->mPbmService:Lcom/lge/uicc/framework/SimPhonebookService;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/lge/uicc/framework/SimPhonebookService;

    invoke-direct {v0}, Lcom/lge/uicc/framework/SimPhonebookService;-><init>()V

    sput-object v0, Lcom/lge/uicc/framework/SimPhonebookService;->mPbmService:Lcom/lge/uicc/framework/SimPhonebookService;

    .line 53
    :cond_0
    const-string v0, "lguiccpbm"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 54
    const-string v0, "lguiccpbm"

    sget-object v1, Lcom/lge/uicc/framework/SimPhonebookService;->mPbmService:Lcom/lge/uicc/framework/SimPhonebookService;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 55
    :cond_1
    return-void
.end method


# virtual methods
.method public deleteEntry(II)I
    .locals 3
    .param p1, "slot"    # I
    .param p2, "simIndex"    # I

    .prologue
    const/4 v0, 0x0

    .line 478
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_0

    .line 486
    :goto_0
    return v0

    .line 482
    :cond_0
    if-gtz p2, :cond_1

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteEntry: invalid sim index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/uicc/framework/SimPhonebookService;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 486
    :cond_1
    iget-object v1, p0, Lcom/lge/uicc/framework/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;

    # invokes: Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->deleteRecord(III)I
    invoke-static {v1, p1, v0, p2}, Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->access$700(Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;III)I

    move-result v0

    goto :goto_0
.end method

.method public deleteGroup(II)I
    .locals 3
    .param p1, "slot"    # I
    .param p2, "groupIndex"    # I

    .prologue
    const/4 v0, 0x0

    .line 490
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_0

    .line 498
    :goto_0
    return v0

    .line 494
    :cond_0
    if-gtz p2, :cond_1

    .line 495
    const-string v1, "deleteGroup: gas_id MUST be greater than 0!"

    invoke-static {v1}, Lcom/lge/uicc/framework/SimPhonebookService;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/lge/uicc/framework/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;

    const/16 v1, 0x20

    # invokes: Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->deleteRecord(III)I
    invoke-static {v0, p1, v1, p2}, Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->access$700(Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;III)I

    move-result v0

    goto :goto_0
.end method

.method public getSimPhonebookInfo(I)Lcom/lge/uicc/SimPhonebookBaseInfo;
    .locals 13
    .param p1, "slot"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 204
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    const/16 v10, 0x7d0

    if-ne v9, v10, :cond_0

    move-object v1, v8

    .line 325
    :goto_0
    return-object v1

    .line 208
    :cond_0
    if-ltz p1, :cond_1

    invoke-static {}, Lcom/lge/uicc/framework/IccTools;->getSlots()I

    move-result v9

    if-lt p1, v9, :cond_2

    .line 209
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSimPhonebookInfo: error: slot="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/lge/uicc/framework/SimPhonebookService;->loge(Ljava/lang/String;)V

    move-object v1, v8

    .line 210
    goto :goto_0

    .line 213
    :cond_2
    new-instance v1, Lcom/lge/uicc/SimPhonebookBaseInfo;

    invoke-direct {v1}, Lcom/lge/uicc/SimPhonebookBaseInfo;-><init>()V

    .line 214
    .local v1, "globalInfo":Lcom/lge/uicc/SimPhonebookBaseInfo;
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 217
    .local v6, "sliceInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;>;"
    const-string v9, "load ADN"

    invoke-static {v9}, Lcom/lge/uicc/framework/SimPhonebookService;->logd(Ljava/lang/String;)V

    .line 218
    iget-object v9, p0, Lcom/lge/uicc/framework/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;

    # invokes: Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->getInfo(II)Lcom/lge/uicc/framework/PbmInfo;
    invoke-static {v9, p1, v11}, Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->access$400(Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;II)Lcom/lge/uicc/framework/PbmInfo;

    move-result-object v3

    .line 219
    .local v3, "info":Lcom/lge/uicc/framework/PbmInfo;
    if-nez v3, :cond_3

    .line 220
    const-string v9, "getSimPhonebookInfo: Fails to get ADN"

    invoke-static {v9}, Lcom/lge/uicc/framework/SimPhonebookService;->loge(Ljava/lang/String;)V

    move-object v1, v8

    .line 221
    goto :goto_0

    .line 224
    :cond_3
    iget v9, v3, Lcom/lge/uicc/framework/PbmInfo;->status:I

    if-nez v9, :cond_4

    iget-object v9, v3, Lcom/lge/uicc/framework/PbmInfo;->records_in_pb_set:[I

    if-nez v9, :cond_5

    .line 225
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSimPhonebookInfo: ADN: status="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/lge/uicc/framework/PbmInfo;->status:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/lge/uicc/framework/SimPhonebookService;->logd(Ljava/lang/String;)V

    .line 226
    const-string v9, "ADN"

    invoke-direct {p0, v9, v3}, Lcom/lge/uicc/framework/SimPhonebookService;->dumpPbmInfo(Ljava/lang/String;Lcom/lge/uicc/framework/PbmInfo;)V

    move-object v1, v8

    .line 227
    goto :goto_0

    .line 230
    :cond_5
    iget v9, v3, Lcom/lge/uicc/framework/PbmInfo;->num_of_tot_rec:I

    if-nez v9, :cond_6

    .line 231
    const-string v9, "getSimPhonebookInfo: number of total record is 0!!!"

    invoke-static {v9}, Lcom/lge/uicc/framework/SimPhonebookService;->loge(Ljava/lang/String;)V

    move-object v1, v8

    .line 232
    goto :goto_0

    .line 235
    :cond_6
    iget-object v8, v3, Lcom/lge/uicc/framework/PbmInfo;->records_in_pb_set:[I

    array-length v8, v8

    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mSliceCount:I

    .line 236
    iput v12, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAssignableEmailount:I

    .line 237
    iput v12, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mTotalSneCount:I

    .line 238
    iput v12, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAssignableGroupCount:I

    .line 239
    const-string v8, "GSMAlpha"

    iput-object v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAdnNameEncodingType:Ljava/lang/String;

    .line 240
    iget v8, v3, Lcom/lge/uicc/framework/PbmInfo;->max_text_length:I

    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAdnNameMaxbyteLength:I

    .line 241
    iget v8, v3, Lcom/lge/uicc/framework/PbmInfo;->max_num_length:I

    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAdnNumberMaxLength:I

    .line 242
    iget v8, v3, Lcom/lge/uicc/framework/PbmInfo;->max_num_length:I

    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mExternalNumberMaxLength:I

    .line 243
    iget v8, v3, Lcom/lge/uicc/framework/PbmInfo;->num_of_free_ext:I

    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mFreeExternalNumberCount:I

    .line 244
    const-string v8, ""

    iput-object v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mGroupNameEncodingType:Ljava/lang/String;

    .line 245
    iput v11, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mTotalGroupCount:I

    .line 246
    iput v11, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mGroupNameMaxByteLength:I

    .line 248
    const/4 v7, 0x0

    .line 249
    .local v7, "totalAdn":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    iget-object v8, v3, Lcom/lge/uicc/framework/PbmInfo;->records_in_pb_set:[I

    array-length v8, v8

    if-ge v2, v8, :cond_7

    .line 250
    new-instance v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;

    invoke-direct {v5}, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;-><init>()V

    .line 251
    .local v5, "slice":Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;
    iget-object v8, v3, Lcom/lge/uicc/framework/PbmInfo;->records_in_pb_set:[I

    aget v8, v8, v2

    iput v8, v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mAdnCount:I

    .line 252
    invoke-virtual {v6, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 253
    iget-object v8, v3, Lcom/lge/uicc/framework/PbmInfo;->records_in_pb_set:[I

    aget v8, v8, v2

    add-int/2addr v7, v8

    .line 249
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 255
    .end local v5    # "slice":Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;
    :cond_7
    iput v7, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mTotalAdncount:I

    .line 256
    const-string v8, "onAdn"

    invoke-direct {p0, v8, v3}, Lcom/lge/uicc/framework/SimPhonebookService;->dumpPbmInfo(Ljava/lang/String;Lcom/lge/uicc/framework/PbmInfo;)V

    .line 259
    const-string v8, "load ANR"

    invoke-static {v8}, Lcom/lge/uicc/framework/SimPhonebookService;->logd(Ljava/lang/String;)V

    .line 260
    const/4 v4, 0x0

    .local v4, "key":I
    const/16 v0, 0xf

    .local v0, "efdev":I
    :goto_2
    const/16 v8, 0x16

    if-gt v0, v8, :cond_8

    .line 261
    iget-object v8, p0, Lcom/lge/uicc/framework/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;

    # invokes: Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->getInfo(II)Lcom/lge/uicc/framework/PbmInfo;
    invoke-static {v8, p1, v0}, Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->access$400(Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;II)Lcom/lge/uicc/framework/PbmInfo;

    move-result-object v3

    .line 262
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;

    .line 263
    .restart local v5    # "slice":Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;
    if-eqz v3, :cond_8

    if-nez v5, :cond_b

    .line 276
    .end local v5    # "slice":Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;
    :cond_8
    const-string v8, "load EMAIL"

    invoke-static {v8}, Lcom/lge/uicc/framework/SimPhonebookService;->logd(Ljava/lang/String;)V

    .line 277
    const/4 v4, 0x0

    const/4 v0, 0x7

    :goto_3
    const/16 v8, 0xe

    if-gt v0, v8, :cond_9

    .line 278
    iget-object v8, p0, Lcom/lge/uicc/framework/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;

    # invokes: Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->getInfo(II)Lcom/lge/uicc/framework/PbmInfo;
    invoke-static {v8, p1, v0}, Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->access$400(Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;II)Lcom/lge/uicc/framework/PbmInfo;

    move-result-object v3

    .line 279
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;

    .line 280
    .restart local v5    # "slice":Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;
    if-eqz v3, :cond_9

    if-nez v5, :cond_d

    .line 293
    .end local v5    # "slice":Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;
    :cond_9
    const-string v8, "load SNE"

    invoke-static {v8}, Lcom/lge/uicc/framework/SimPhonebookService;->logd(Ljava/lang/String;)V

    .line 294
    const/4 v4, 0x0

    const/16 v0, 0x24

    :goto_4
    const/16 v8, 0x2b

    if-gt v0, v8, :cond_a

    .line 295
    iget-object v8, p0, Lcom/lge/uicc/framework/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;

    # invokes: Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->getInfo(II)Lcom/lge/uicc/framework/PbmInfo;
    invoke-static {v8, p1, v0}, Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->access$400(Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;II)Lcom/lge/uicc/framework/PbmInfo;

    move-result-object v3

    .line 296
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;

    .line 297
    .restart local v5    # "slice":Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;
    if-eqz v3, :cond_a

    if-nez v5, :cond_f

    .line 323
    .end local v5    # "slice":Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;
    :cond_a
    const-string v8, "return SimPhonebookBaseInfo"

    invoke-static {v8}, Lcom/lge/uicc/framework/SimPhonebookService;->logd(Ljava/lang/String;)V

    .line 324
    iput-object v6, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mSlices:Landroid/util/SparseArray;

    goto/16 :goto_0

    .line 265
    .restart local v5    # "slice":Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;
    :cond_b
    const/16 v8, 0xf

    if-ne v0, v8, :cond_c

    .line 266
    const/16 v8, 0x14

    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAnrMaxLength:I

    .line 267
    iget-object v8, v3, Lcom/lge/uicc/framework/PbmInfo;->records_in_pb_set:[I

    aget v8, v8, v11

    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mAssignableAnrCount:I

    .line 269
    :cond_c
    iget v8, v3, Lcom/lge/uicc/framework/PbmInfo;->file_type:I

    and-int/lit8 v8, v8, 0xf

    iput v8, v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mAnrType:I

    .line 270
    iget v8, v3, Lcom/lge/uicc/framework/PbmInfo;->num_of_tot_rec:I

    iput v8, v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mAnrCount:I

    .line 271
    iget-object v8, v3, Lcom/lge/uicc/framework/PbmInfo;->used_records_in_pb_set:[I

    iput-object v8, v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mUsedAnrCount:[I

    .line 272
    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 273
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onAnr["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v3}, Lcom/lge/uicc/framework/SimPhonebookService;->dumpPbmInfo(Ljava/lang/String;Lcom/lge/uicc/framework/PbmInfo;)V

    .line 260
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 282
    :cond_d
    const/4 v8, 0x7

    if-ne v0, v8, :cond_e

    .line 283
    iget v8, v3, Lcom/lge/uicc/framework/PbmInfo;->max_text_length:I

    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mEmailMaxByteLength:I

    .line 284
    const-string v8, "GSM7"

    iput-object v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mEmailencodingType:Ljava/lang/String;

    .line 286
    :cond_e
    iget v8, v3, Lcom/lge/uicc/framework/PbmInfo;->file_type:I

    and-int/lit8 v8, v8, 0xf

    iput v8, v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mEmailType:I

    .line 287
    iget v8, v3, Lcom/lge/uicc/framework/PbmInfo;->num_of_tot_rec:I

    iput v8, v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mEmailCount:I

    .line 288
    iget-object v8, v3, Lcom/lge/uicc/framework/PbmInfo;->used_records_in_pb_set:[I

    iput-object v8, v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mUsedEmailCount:[I

    .line 289
    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 290
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onEmail["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v3}, Lcom/lge/uicc/framework/SimPhonebookService;->dumpPbmInfo(Ljava/lang/String;Lcom/lge/uicc/framework/PbmInfo;)V

    .line 277
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 299
    :cond_f
    const/16 v8, 0x24

    if-ne v0, v8, :cond_10

    .line 300
    iget v8, v3, Lcom/lge/uicc/framework/PbmInfo;->max_text_length:I

    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mSneMaxByteLength:I

    .line 301
    const-string v8, "GSM7"

    iput-object v8, v1, Lcom/lge/uicc/SimPhonebookBaseInfo;->mSneencodingType:Ljava/lang/String;

    .line 303
    :cond_10
    iget v8, v3, Lcom/lge/uicc/framework/PbmInfo;->file_type:I

    and-int/lit8 v8, v8, 0xf

    iput v8, v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mSneType:I

    .line 304
    iget v8, v3, Lcom/lge/uicc/framework/PbmInfo;->num_of_tot_rec:I

    iput v8, v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mSneCount:I

    .line 305
    iget-object v8, v3, Lcom/lge/uicc/framework/PbmInfo;->used_records_in_pb_set:[I

    iput-object v8, v5, Lcom/lge/uicc/SimPhonebookBaseInfo$SliceInfo;->mUsedSneCount:[I

    .line 306
    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 307
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onsne["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v3}, Lcom/lge/uicc/framework/SimPhonebookService;->dumpPbmInfo(Ljava/lang/String;Lcom/lge/uicc/framework/PbmInfo;)V

    .line 294
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4
.end method

.method public insertEntry(IILcom/lge/uicc/SimPhonebookBaseEntry;)I
    .locals 4
    .param p1, "slot"    # I
    .param p2, "simIndex"    # I
    .param p3, "entry"    # Lcom/lge/uicc/SimPhonebookBaseEntry;

    .prologue
    const/4 v1, 0x0

    .line 400
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x7d0

    if-ne v2, v3, :cond_0

    .line 417
    :goto_0
    return v1

    .line 404
    :cond_0
    if-ltz p1, :cond_1

    invoke-static {}, Lcom/lge/uicc/framework/IccTools;->getSlots()I

    move-result v2

    if-lt p1, v2, :cond_2

    .line 405
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertEntry: error: slot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/framework/SimPhonebookService;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :cond_2
    if-gtz p2, :cond_3

    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertEntry: invalid sim index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/framework/SimPhonebookService;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 414
    :cond_3
    invoke-direct {p0, p3}, Lcom/lge/uicc/framework/SimPhonebookService;->newPbmRecordWithoutSimIndex(Lcom/lge/uicc/SimPhonebookBaseEntry;)Lcom/lge/uicc/framework/PbmRecord;

    move-result-object v0

    .line 415
    .local v0, "record":Lcom/lge/uicc/framework/PbmRecord;
    iput p2, v0, Lcom/lge/uicc/framework/PbmRecord;->index:I

    .line 417
    iget-object v1, p0, Lcom/lge/uicc/framework/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;

    # invokes: Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->writeRecord(ILcom/lge/uicc/framework/PbmRecord;)I
    invoke-static {v1, p1, v0}, Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->access$600(Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;ILcom/lge/uicc/framework/PbmRecord;)I

    move-result v1

    goto :goto_0
.end method

.method public insertGroup(IILcom/lge/uicc/SimPhonebookBaseEntry;)I
    .locals 4
    .param p1, "slot"    # I
    .param p2, "groupIndex"    # I
    .param p3, "group"    # Lcom/lge/uicc/SimPhonebookBaseEntry;

    .prologue
    const/4 v1, 0x0

    .line 421
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x7d0

    if-ne v2, v3, :cond_0

    .line 433
    :goto_0
    return v1

    .line 425
    :cond_0
    if-ltz p1, :cond_1

    invoke-static {}, Lcom/lge/uicc/framework/IccTools;->getSlots()I

    move-result v2

    if-lt p1, v2, :cond_2

    .line 426
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertGroup: error: slot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/framework/SimPhonebookService;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 430
    :cond_2
    invoke-direct {p0, p3}, Lcom/lge/uicc/framework/SimPhonebookService;->newPbmGroupRecordWithoutGroupIndex(Lcom/lge/uicc/SimPhonebookBaseEntry;)Lcom/lge/uicc/framework/PbmRecord;

    move-result-object v0

    .line 431
    .local v0, "record":Lcom/lge/uicc/framework/PbmRecord;
    iput p2, v0, Lcom/lge/uicc/framework/PbmRecord;->index:I

    .line 433
    iget-object v1, p0, Lcom/lge/uicc/framework/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;

    # invokes: Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->writeRecord(ILcom/lge/uicc/framework/PbmRecord;)I
    invoke-static {v1, p1, v0}, Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->access$600(Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;ILcom/lge/uicc/framework/PbmRecord;)I

    move-result v1

    goto :goto_0
.end method

.method public readEntry(II)Lcom/lge/uicc/SimPhonebookBaseEntry;
    .locals 9
    .param p1, "slot"    # I
    .param p2, "simIndex"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 329
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/16 v7, 0x7d0

    if-ne v6, v7, :cond_0

    move-object v1, v5

    .line 373
    :goto_0
    return-object v1

    .line 333
    :cond_0
    if-ltz p1, :cond_1

    invoke-static {}, Lcom/lge/uicc/framework/IccTools;->getSlots()I

    move-result v6

    if-lt p1, v6, :cond_2

    .line 334
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readEntry: error: slot="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/uicc/framework/SimPhonebookService;->loge(Ljava/lang/String;)V

    move-object v1, v5

    .line 335
    goto :goto_0

    .line 338
    :cond_2
    iget-object v6, p0, Lcom/lge/uicc/framework/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;

    # invokes: Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->readRecord(III)Lcom/lge/uicc/framework/PbmRecord;
    invoke-static {v6, p1, v8, p2}, Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->access$500(Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;III)Lcom/lge/uicc/framework/PbmRecord;

    move-result-object v3

    .line 339
    .local v3, "record":Lcom/lge/uicc/framework/PbmRecord;
    new-instance v1, Lcom/lge/uicc/SimPhonebookBaseEntry;

    invoke-direct {v1}, Lcom/lge/uicc/SimPhonebookBaseEntry;-><init>()V

    .line 340
    .local v1, "entry":Lcom/lge/uicc/SimPhonebookBaseEntry;
    if-nez v3, :cond_3

    .line 341
    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mIndex:I

    .line 342
    const-string v6, ""

    iput-object v6, v1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mName:Ljava/lang/String;

    .line 343
    iput-object v5, v1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mNumbers:Landroid/util/SparseArray;

    .line 344
    iput-object v5, v1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mEmails:Landroid/util/SparseArray;

    .line 345
    iput-object v5, v1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mSecondName:Landroid/util/SparseArray;

    .line 346
    iput v8, v1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mGroupId:I

    goto :goto_0

    .line 348
    :cond_3
    iget v5, v3, Lcom/lge/uicc/framework/PbmRecord;->index:I

    iput v5, v1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mIndex:I

    .line 349
    iget-object v5, v3, Lcom/lge/uicc/framework/PbmRecord;->name:Ljava/lang/String;

    if-nez v5, :cond_7

    const-string v5, ""

    :goto_1
    iput-object v5, v1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mName:Ljava/lang/String;

    .line 350
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 351
    .local v2, "numbers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v5, v3, Lcom/lge/uicc/framework/PbmRecord;->number:Ljava/lang/String;

    iget v6, v3, Lcom/lge/uicc/framework/PbmRecord;->type:I

    invoke-static {v5, v6, v8}, Lcom/lge/uicc/framework/SimPhonebookService;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 352
    const-string v5, ""

    iget-object v6, v3, Lcom/lge/uicc/framework/PbmRecord;->additional_number:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 353
    const/4 v5, 0x1

    iget-object v6, v3, Lcom/lge/uicc/framework/PbmRecord;->additional_number:Ljava/lang/String;

    iget v7, v3, Lcom/lge/uicc/framework/PbmRecord;->ad_type:I

    invoke-static {v6, v7, v8}, Lcom/lge/uicc/framework/SimPhonebookService;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 355
    :cond_4
    const-string v5, ""

    iget-object v6, v3, Lcom/lge/uicc/framework/PbmRecord;->additional_number_a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 356
    const/4 v5, 0x2

    iget-object v6, v3, Lcom/lge/uicc/framework/PbmRecord;->additional_number_a:Ljava/lang/String;

    iget v7, v3, Lcom/lge/uicc/framework/PbmRecord;->ad_type:I

    invoke-static {v6, v7, v8}, Lcom/lge/uicc/framework/SimPhonebookService;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 358
    :cond_5
    const-string v5, ""

    iget-object v6, v3, Lcom/lge/uicc/framework/PbmRecord;->additional_number_b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 359
    const/4 v5, 0x3

    iget-object v6, v3, Lcom/lge/uicc/framework/PbmRecord;->additional_number_b:Ljava/lang/String;

    iget v7, v3, Lcom/lge/uicc/framework/PbmRecord;->ad_type:I

    invoke-static {v6, v7, v8}, Lcom/lge/uicc/framework/SimPhonebookService;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 361
    :cond_6
    iput-object v2, v1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mNumbers:Landroid/util/SparseArray;

    .line 363
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 364
    .local v0, "emails":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v5, v3, Lcom/lge/uicc/framework/PbmRecord;->email_address:Ljava/lang/String;

    if-nez v5, :cond_8

    const-string v5, ""

    :goto_2
    invoke-virtual {v0, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 365
    iput-object v0, v1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mEmails:Landroid/util/SparseArray;

    .line 367
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 368
    .local v4, "sne":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v5, v3, Lcom/lge/uicc/framework/PbmRecord;->second_name:Ljava/lang/String;

    if-nez v5, :cond_9

    const-string v5, ""

    :goto_3
    invoke-virtual {v4, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 369
    iput-object v4, v1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mSecondName:Landroid/util/SparseArray;

    .line 371
    iget v5, v3, Lcom/lge/uicc/framework/PbmRecord;->gas_id:I

    iput v5, v1, Lcom/lge/uicc/SimPhonebookBaseEntry;->mGroupId:I

    goto/16 :goto_0

    .line 349
    .end local v0    # "emails":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v2    # "numbers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v4    # "sne":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_7
    iget-object v5, v3, Lcom/lge/uicc/framework/PbmRecord;->name:Ljava/lang/String;

    goto :goto_1

    .line 364
    .restart local v0    # "emails":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v2    # "numbers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_8
    iget-object v5, v3, Lcom/lge/uicc/framework/PbmRecord;->email_address:Ljava/lang/String;

    goto :goto_2

    .line 368
    .restart local v4    # "sne":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_9
    iget-object v5, v3, Lcom/lge/uicc/framework/PbmRecord;->second_name:Ljava/lang/String;

    goto :goto_3
.end method

.method public readGroup(II)Lcom/lge/uicc/SimPhonebookBaseEntry;
    .locals 4
    .param p1, "slot"    # I
    .param p2, "groupIndex"    # I

    .prologue
    const/4 v0, 0x0

    .line 377
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x7d0

    if-ne v2, v3, :cond_0

    .line 396
    :goto_0
    return-object v0

    .line 381
    :cond_0
    if-ltz p1, :cond_1

    invoke-static {}, Lcom/lge/uicc/framework/IccTools;->getSlots()I

    move-result v2

    if-lt p1, v2, :cond_2

    .line 382
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readGroup: error: slot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/framework/SimPhonebookService;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :cond_2
    iget-object v2, p0, Lcom/lge/uicc/framework/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;

    const/16 v3, 0x20

    # invokes: Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->readRecord(III)Lcom/lge/uicc/framework/PbmRecord;
    invoke-static {v2, p1, v3, p2}, Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->access$500(Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;III)Lcom/lge/uicc/framework/PbmRecord;

    move-result-object v1

    .line 387
    .local v1, "record":Lcom/lge/uicc/framework/PbmRecord;
    new-instance v0, Lcom/lge/uicc/SimPhonebookBaseEntry;

    invoke-direct {v0}, Lcom/lge/uicc/SimPhonebookBaseEntry;-><init>()V

    .line 388
    .local v0, "group":Lcom/lge/uicc/SimPhonebookBaseEntry;
    if-nez v1, :cond_3

    .line 389
    const/4 v2, 0x0

    iput v2, v0, Lcom/lge/uicc/SimPhonebookBaseEntry;->mIndex:I

    .line 390
    const-string v2, ""

    iput-object v2, v0, Lcom/lge/uicc/SimPhonebookBaseEntry;->mName:Ljava/lang/String;

    goto :goto_0

    .line 392
    :cond_3
    iget v2, v1, Lcom/lge/uicc/framework/PbmRecord;->index:I

    iput v2, v0, Lcom/lge/uicc/SimPhonebookBaseEntry;->mIndex:I

    .line 393
    iget-object v2, v1, Lcom/lge/uicc/framework/PbmRecord;->name:Ljava/lang/String;

    iput-object v2, v0, Lcom/lge/uicc/SimPhonebookBaseEntry;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public updateEntry(IILcom/lge/uicc/SimPhonebookBaseEntry;)I
    .locals 4
    .param p1, "slot"    # I
    .param p2, "simIndex"    # I
    .param p3, "entry"    # Lcom/lge/uicc/SimPhonebookBaseEntry;

    .prologue
    const/4 v1, 0x0

    .line 437
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x7d0

    if-ne v2, v3, :cond_0

    .line 453
    :goto_0
    return v1

    .line 441
    :cond_0
    if-ltz p1, :cond_1

    invoke-static {}, Lcom/lge/uicc/framework/IccTools;->getSlots()I

    move-result v2

    if-lt p1, v2, :cond_2

    .line 442
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateEntry: error: slot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/framework/SimPhonebookService;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 445
    :cond_2
    if-gtz p2, :cond_3

    .line 446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateEntry: invalid sim index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/framework/SimPhonebookService;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :cond_3
    invoke-direct {p0, p3}, Lcom/lge/uicc/framework/SimPhonebookService;->newPbmRecordWithoutSimIndex(Lcom/lge/uicc/SimPhonebookBaseEntry;)Lcom/lge/uicc/framework/PbmRecord;

    move-result-object v0

    .line 451
    .local v0, "record":Lcom/lge/uicc/framework/PbmRecord;
    iput p2, v0, Lcom/lge/uicc/framework/PbmRecord;->index:I

    .line 453
    iget-object v1, p0, Lcom/lge/uicc/framework/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;

    # invokes: Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->writeRecord(ILcom/lge/uicc/framework/PbmRecord;)I
    invoke-static {v1, p1, v0}, Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->access$600(Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;ILcom/lge/uicc/framework/PbmRecord;)I

    move-result v1

    goto :goto_0
.end method

.method public updateGroup(IILcom/lge/uicc/SimPhonebookBaseEntry;)I
    .locals 4
    .param p1, "slot"    # I
    .param p2, "groupIndex"    # I
    .param p3, "group"    # Lcom/lge/uicc/SimPhonebookBaseEntry;

    .prologue
    const/4 v1, 0x0

    .line 457
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x7d0

    if-ne v2, v3, :cond_0

    .line 473
    :goto_0
    return v1

    .line 461
    :cond_0
    if-ltz p1, :cond_1

    invoke-static {}, Lcom/lge/uicc/framework/IccTools;->getSlots()I

    move-result v2

    if-lt p1, v2, :cond_2

    .line 462
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateGroup: error: slot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/framework/SimPhonebookService;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 465
    :cond_2
    if-gtz p2, :cond_3

    .line 466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateGroup: invalid group index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/framework/SimPhonebookService;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 470
    :cond_3
    invoke-direct {p0, p3}, Lcom/lge/uicc/framework/SimPhonebookService;->newPbmGroupRecordWithoutGroupIndex(Lcom/lge/uicc/SimPhonebookBaseEntry;)Lcom/lge/uicc/framework/PbmRecord;

    move-result-object v0

    .line 471
    .local v0, "record":Lcom/lge/uicc/framework/PbmRecord;
    iput p2, v0, Lcom/lge/uicc/framework/PbmRecord;->index:I

    .line 473
    iget-object v1, p0, Lcom/lge/uicc/framework/SimPhonebookService;->mPbmHandler:Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;

    # invokes: Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->writeRecord(ILcom/lge/uicc/framework/PbmRecord;)I
    invoke-static {v1, p1, v0}, Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;->access$600(Lcom/lge/uicc/framework/SimPhonebookService$PbmHandler;ILcom/lge/uicc/framework/PbmRecord;)I

    move-result v1

    goto :goto_0
.end method
