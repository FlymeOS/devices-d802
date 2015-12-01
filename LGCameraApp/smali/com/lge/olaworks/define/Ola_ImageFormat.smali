.class public Lcom/lge/olaworks/define/Ola_ImageFormat;
.super Ljava/lang/Object;
.source "Ola_ImageFormat.java"


# static fields
.field public static final BGR888:I = 0x102

.field public static final BGR8880:I = 0x104

.field public static final GRAY:I = 0x1

.field private static final PREFIX_FORMAT_STR:Ljava/lang/String; = "OLA_IMAGE_FORMAT_"

.field public static final RGB888:I = 0x101

.field public static final RGB8880:I = 0x103

.field public static final RGB_LABEL:I = 0x100

.field public static final YUVPACKED_LABEL:I = 0x200

.field public static final YUVPACKED_Y411:I = 0x201

.field public static final YUVPLANAR_LABEL:I = 0x400

.field public static final YUVPLANAR_NV12:I = 0x401

.field public static final YUVPLANAR_NV12_SPLIT:I = 0x403

.field public static final YUVPLANAR_NV21:I = 0x402

.field public static final YUVPLANAR_NV21_SPLIT:I = 0x404


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 30
    const-string v0, "OLA_IMAGE_FORMAT_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OLA_IMAGE_FORMAT_"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 32
    :cond_0
    const-string v0, "GRAY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 42
    :goto_0
    return v0

    .line 33
    :cond_1
    const-string v0, "RGB888"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x101

    goto :goto_0

    .line 34
    :cond_2
    const-string v0, "BGR888"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x102

    goto :goto_0

    .line 35
    :cond_3
    const-string v0, "RGB8880"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x103

    goto :goto_0

    .line 36
    :cond_4
    const-string v0, "BGR8880"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x104

    goto :goto_0

    .line 37
    :cond_5
    const-string v0, "YUVPACKED_Y411"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x201

    goto :goto_0

    .line 38
    :cond_6
    const-string v0, "YUVPLANAR_NV12"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x401

    goto :goto_0

    .line 39
    :cond_7
    const-string v0, "YUVPLANAR_NV21"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x402

    goto :goto_0

    .line 40
    :cond_8
    const-string v0, "YUVPLANAR_NV12_SPLIT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0x403

    goto :goto_0

    .line 41
    :cond_9
    const-string v0, "YUVPLANAR_NV21_SPLIT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0x404

    goto :goto_0

    .line 42
    :cond_a
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static format(I)Ljava/lang/String;
    .locals 3
    .param p0, "format"    # I

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 48
    .local v0, "str":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 61
    :goto_0
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 49
    :sswitch_0
    const-string v0, "GRAY"

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "RGB888"

    goto :goto_0

    .line 51
    :sswitch_2
    const-string v0, "BGR888"

    goto :goto_0

    .line 52
    :sswitch_3
    const-string v0, "RGB8880"

    goto :goto_0

    .line 53
    :sswitch_4
    const-string v0, "BGR8880"

    goto :goto_0

    .line 54
    :sswitch_5
    const-string v0, "YUVPACKED_Y411"

    goto :goto_0

    .line 55
    :sswitch_6
    const-string v0, "YUVPLANAR_NV12"

    goto :goto_0

    .line 56
    :sswitch_7
    const-string v0, "YUVPLANAR_NV21"

    goto :goto_0

    .line 57
    :sswitch_8
    const-string v0, "YUVPLANAR_NV12_SPLIT"

    goto :goto_0

    .line 58
    :sswitch_9
    const-string v0, "YUVPLANAR_NV21_SPLIT"

    goto :goto_0

    .line 61
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OLA_IMAGE_FORMAT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 48
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x101 -> :sswitch_1
        0x102 -> :sswitch_2
        0x103 -> :sswitch_3
        0x104 -> :sswitch_4
        0x201 -> :sswitch_5
        0x401 -> :sswitch_6
        0x402 -> :sswitch_7
        0x403 -> :sswitch_8
        0x404 -> :sswitch_9
    .end sparse-switch
.end method
