.class public Lcom/lge/camera/VideoFile;
.super Ljava/lang/Object;
.source "VideoFile.java"


# static fields
.field public static final VIDEO_EXTENSION_3GP:Ljava/lang/String; = ".3gp"

.field public static final VIDEO_EXTENSION_MP4:Ljava/lang/String; = ".mp4"


# instance fields
.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mFile:Ljava/io/File;

.field private mFileDirectory:Ljava/lang/String;

.field private mFileExtension:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mInitialized:Z

.field private mOccured_execption:Z

.field private mRecordingTime_duration:J

.field private mUri:Landroid/net/Uri;

.field private misAudiozoomcontent:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "purpose"    # I

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v2, p0, Lcom/lge/camera/VideoFile;->mInitialized:Z

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/VideoFile;->mRecordingTime_duration:J

    .line 48
    iput v2, p0, Lcom/lge/camera/VideoFile;->misAudiozoomcontent:I

    .line 49
    iput-boolean v2, p0, Lcom/lge/camera/VideoFile;->mOccured_execption:Z

    .line 75
    if-nez p3, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 77
    const-string v0, ".mp4"

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileExtension:Ljava/lang/String;

    .line 83
    :goto_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, p1}, Lcom/lge/camera/VideoFile;->initialize(Landroid/content/Context;)Z

    .line 85
    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".3gp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 81
    const-string v0, ".3gp"

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileExtension:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "storage"    # I
    .param p4, "purpose"    # I

    .prologue
    const/4 v2, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v2, p0, Lcom/lge/camera/VideoFile;->mInitialized:Z

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/VideoFile;->mRecordingTime_duration:J

    .line 48
    iput v2, p0, Lcom/lge/camera/VideoFile;->misAudiozoomcontent:I

    .line 49
    iput-boolean v2, p0, Lcom/lge/camera/VideoFile;->mOccured_execption:Z

    .line 117
    if-nez p4, :cond_0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 119
    const-string v0, ".mp4"

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileExtension:Ljava/lang/String;

    .line 125
    :goto_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, p1, p3}, Lcom/lge/camera/VideoFile;->initialize(Landroid/content/Context;I)Z

    .line 127
    return-void

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".3gp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 123
    const-string v0, ".3gp"

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileExtension:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "directory"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "purpose"    # I

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v2, p0, Lcom/lge/camera/VideoFile;->mInitialized:Z

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/VideoFile;->mRecordingTime_duration:J

    .line 48
    iput v2, p0, Lcom/lge/camera/VideoFile;->misAudiozoomcontent:I

    .line 49
    iput-boolean v2, p0, Lcom/lge/camera/VideoFile;->mOccured_execption:Z

    .line 88
    if-nez p4, :cond_0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 90
    const-string v0, ".mp4"

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileExtension:Ljava/lang/String;

    .line 97
    :goto_0
    iput-object p2, p0, Lcom/lge/camera/VideoFile;->mFileDirectory:Ljava/lang/String;

    .line 99
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/lge/camera/VideoFile;->initialize(Landroid/content/Context;)Z

    .line 101
    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".3gp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 94
    const-string v0, ".3gp"

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileExtension:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "testMode"    # Z
    .param p4, "purpose"    # I

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v2, p0, Lcom/lge/camera/VideoFile;->mInitialized:Z

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/VideoFile;->mRecordingTime_duration:J

    .line 48
    iput v2, p0, Lcom/lge/camera/VideoFile;->misAudiozoomcontent:I

    .line 49
    iput-boolean v2, p0, Lcom/lge/camera/VideoFile;->mOccured_execption:Z

    .line 104
    if-nez p4, :cond_0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 106
    const-string v0, ".mp4"

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileExtension:Ljava/lang/String;

    .line 112
    :goto_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, p1}, Lcom/lge/camera/VideoFile;->initialize(Landroid/content/Context;)Z

    .line 114
    return-void

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".3gp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 110
    const-string v0, ".3gp"

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileExtension:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public clearEmptyFile()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 183
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearEmptyFile() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 185
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 188
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iput-object v6, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    .line 191
    iput-object v6, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 200
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 193
    .restart local v0    # "file":Ljava/io/File;
    :cond_1
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty file delete failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_2
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File is not empty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteFile()V
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 216
    const-string v0, "CameraApp"

    const-string v1, "delete invalid video file"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAudiozoomExection_state()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/lge/camera/VideoFile;->mOccured_execption:Z

    return v0
.end method

.method public getAudiozoomcontent()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/lge/camera/VideoFile;->misAudiozoomcontent:I

    return v0
.end method

.method public getFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 204
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    if-nez v0, :cond_1

    .line 208
    const-string v0, "CameraApp"

    const-string v1, "Error!! mFile can\'t create!!!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getFileExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFileExtension:Ljava/lang/String;

    return-object v0
.end method

.method public getFileExternalPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/VideoFile;->mFileDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/VideoFile;->mFileDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/lge/camera/VideoFile;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mUri:Landroid/net/Uri;

    .line 324
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoThumb()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 381
    iget-object v1, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 383
    .local v0, "videoFrame":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public initialize(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mContext:Ljava/lang/ref/WeakReference;

    .line 131
    invoke-virtual {p0}, Lcom/lge/camera/VideoFile;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lcom/lge/camera/VideoFile;->getFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/VideoFile;->mInitialized:Z

    .line 135
    iget-boolean v0, p0, Lcom/lge/camera/VideoFile;->mInitialized:Z

    return v0
.end method

.method public initialize(Landroid/content/Context;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storage"    # I

    .prologue
    .line 139
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mContext:Ljava/lang/ref/WeakReference;

    .line 141
    if-nez p2, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/lge/camera/VideoFile;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    .line 148
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/VideoFile;->getFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/VideoFile;->mInitialized:Z

    .line 151
    iget-boolean v0, p0, Lcom/lge/camera/VideoFile;->mInitialized:Z

    return v0

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/VideoFile;->getFileExternalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/lge/camera/VideoFile;->mInitialized:Z

    return v0
.end method

.method public registerUri(ILjava/lang/String;Landroid/location/Location;ZI)Landroid/net/Uri;
    .locals 18
    .param p1, "mode"    # I
    .param p2, "resolution"    # Ljava/lang/String;
    .param p3, "location"    # Landroid/location/Location;
    .param p4, "toast"    # Z
    .param p5, "purpose"    # I

    .prologue
    .line 226
    const-string v13, "CameraApp"

    const-string v14, "registerUri()"

    invoke-static {v13, v14}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 230
    .local v6, "dateTaken":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 231
    .local v9, "name":Ljava/lang/String;
    const-string v13, "CameraApp"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "name: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    if-nez v9, :cond_0

    .line 234
    const/4 v13, 0x0

    .line 317
    :goto_0
    return-object v13

    .line 237
    :cond_0
    const/16 v13, 0x2e

    invoke-virtual {v9, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 238
    .local v8, "indexOfDot":I
    const/4 v11, 0x0

    .line 239
    .local v11, "title":Ljava/lang/String;
    const/4 v13, -0x1

    if-eq v8, v13, :cond_5

    .line 240
    const/4 v13, 0x0

    invoke-virtual {v9, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 246
    :goto_1
    :try_start_0
    const-string v2, "video/mp4"

    .line 247
    .local v2, "VIDEO_MIME_TYPE":Ljava/lang/String;
    const/4 v13, 0x1

    move/from16 v0, p5

    if-eq v0, v13, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v13

    const/4 v14, 0x6

    if-ne v13, v14, :cond_2

    .line 249
    :cond_1
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/lge/camera/properties/MultimediaProperties;->getVideoMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 251
    :cond_2
    const-string v13, "CameraApp"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "video mime type : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 254
    .local v12, "values":Landroid/content/ContentValues;
    const-string v13, "title"

    invoke-virtual {v12, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v13, "_display_name"

    invoke-virtual {v12, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v13, "mime_type"

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v13, "datetaken"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 260
    const-string v13, "date_added"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 261
    const-string v13, "date_modified"

    const-wide/16 v14, 0x3e8

    div-long v14, v6, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 262
    const-string v13, "_data"

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/VideoFile;->getFilePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v13, "_size"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 282
    const-string v13, "duration"

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/lge/camera/VideoFile;->mRecordingTime_duration:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 284
    if-eqz p2, :cond_3

    .line 285
    const-string v13, "@"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 286
    .local v10, "removeAt":[Ljava/lang/String;
    const-string v13, "resolution"

    const/4 v14, 0x0

    aget-object v14, v10, v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .end local v10    # "removeAt":[Ljava/lang/String;
    :cond_3
    if-eqz p3, :cond_4

    .line 289
    const-string v13, "latitude"

    invoke-virtual/range {p3 .. p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 290
    const-string v13, "longitude"

    invoke-virtual/range {p3 .. p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 293
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/VideoFile;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    .line 294
    .local v4, "context":Landroid/content/Context;
    if-eqz v4, :cond_6

    .line 295
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 296
    .local v3, "contentResolver":Landroid/content/ContentResolver;
    const-string v13, "CameraApp"

    const-string v14, "insert to DB:%s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/VideoFile;->getFilePath()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    sget-object v13, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v13, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lge/camera/VideoFile;->mUri:Landroid/net/Uri;

    .line 298
    const-string v13, "CameraApp"

    const-string v14, "insert to DB done."

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    new-instance v13, Landroid/content/Intent;

    const-string v14, "android.hardware.action.NEW_VIDEO"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/VideoFile;->mUri:Landroid/net/Uri;

    invoke-direct {v13, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    .end local v3    # "contentResolver":Landroid/content/ContentResolver;
    :goto_2
    const-string v13, "CameraApp"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Current video URI: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/VideoFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .end local v2    # "VIDEO_MIME_TYPE":Ljava/lang/String;
    .end local v12    # "values":Landroid/content/ContentValues;
    :goto_3
    const-string v13, "CameraApp"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Manually registered uri: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/VideoFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/VideoFile;->mUri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 242
    .end local v4    # "context":Landroid/content/Context;
    :cond_5
    move-object v11, v9

    goto/16 :goto_1

    .line 301
    .restart local v2    # "VIDEO_MIME_TYPE":Ljava/lang/String;
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v12    # "values":Landroid/content/ContentValues;
    :cond_6
    :try_start_1
    const-string v13, "CameraApp"

    const-string v14, "Cannot insert URI because context is null"

    invoke-static {v13, v14}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 303
    .end local v2    # "VIDEO_MIME_TYPE":Ljava/lang/String;
    .end local v4    # "context":Landroid/content/Context;
    .end local v12    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v5

    .line 304
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v13, "CameraApp"

    const-string v14, "Failed to register uri: %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/VideoFile;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    .line 306
    .restart local v4    # "context":Landroid/content/Context;
    if-eqz v4, :cond_7

    if-eqz p4, :cond_7

    .line 309
    const v13, 0x7f0a0323

    invoke-virtual {v4, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v4, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 312
    :cond_7
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lge/camera/VideoFile;->mUri:Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 314
    const-string v13, "CameraApp"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Current video URI: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/VideoFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    const-string v14, "CameraApp"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Current video URI: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/VideoFile;->mUri:Landroid/net/Uri;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    throw v13
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 329
    const-string v3, ".3gp"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ".mp4"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 331
    :cond_0
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "videofile.rename extension error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFileDirectory:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    .line 335
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    .line 337
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 338
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "title"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v3, "_display_name"

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v3, "_data"

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v3, "_size"

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 343
    iget-object v3, p0, Lcom/lge/camera/VideoFile;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 344
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_2

    .line 345
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 346
    .local v0, "c":Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/lge/camera/VideoFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 351
    .end local v0    # "c":Landroid/content/ContentResolver;
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 348
    :cond_2
    const-string v3, "CameraApp"

    const-string v4, "Cannot update name because context is null"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public rename_ExternalSD(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 355
    const-string v3, ".3gp"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ".mp4"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 357
    :cond_0
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "videofile.rename extension error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFileDirectory:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    .line 361
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    .line 363
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 364
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "title"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v3, "_display_name"

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v3, "_data"

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v3, "_size"

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 369
    iget-object v3, p0, Lcom/lge/camera/VideoFile;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 370
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_2

    .line 371
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 372
    .local v0, "c":Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/lge/camera/VideoFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 377
    .end local v0    # "c":Landroid/content/ContentResolver;
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 374
    :cond_2
    const-string v3, "CameraApp"

    const-string v4, "Cannot update name because context is null"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAudiozoomExection_state(Z)V
    .locals 0
    .param p1, "isOccured"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/lge/camera/VideoFile;->mOccured_execption:Z

    .line 57
    return-void
.end method

.method public setAudiozoomcontent(I)V
    .locals 0
    .param p1, "contenttype"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/lge/camera/VideoFile;->misAudiozoomcontent:I

    .line 61
    return-void
.end method

.method public setRecordingTime_duration(J)V
    .locals 3
    .param p1, "recordingTime_duration"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 71
    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .end local p1    # "recordingTime_duration":J
    :cond_0
    iput-wide p1, p0, Lcom/lge/camera/VideoFile;->mRecordingTime_duration:J

    .line 72
    return-void
.end method
