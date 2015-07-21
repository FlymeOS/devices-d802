.class Landroid/database/DefaultDatabaseErrorHandler$2;
.super Ljava/lang/Object;
.source "DefaultDatabaseErrorHandler.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/database/DefaultDatabaseErrorHandler;->deleteBackupDatabaseFile(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/database/DefaultDatabaseErrorHandler;


# direct methods
.method constructor <init>(Landroid/database/DefaultDatabaseErrorHandler;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Landroid/database/DefaultDatabaseErrorHandler$2;->this$0:Landroid/database/DefaultDatabaseErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .param p1, "candidate"    # Ljava/io/File;

    .prologue
    .line 258
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-backup-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
