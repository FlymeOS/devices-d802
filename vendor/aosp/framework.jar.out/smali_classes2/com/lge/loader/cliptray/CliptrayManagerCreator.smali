.class public Lcom/lge/loader/cliptray/CliptrayManagerCreator;
.super Lcom/lge/loader/InstanceCreator;
.source "CliptrayManagerCreator.java"


# static fields
.field private static CLITRAY_MANAGER_CLASS:Ljava/lang/String;

.field private static LGSYSTEM_SERVICE_CORE_LIB:Ljava/lang/String;

.field private static sCliptrayManagerConstructor:Ljava/lang/reflect/Constructor;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 19
    const-string v4, "/system/framework/com.lge.systemservice.core.jar"

    sput-object v4, Lcom/lge/loader/cliptray/CliptrayManagerCreator;->LGSYSTEM_SERVICE_CORE_LIB:Ljava/lang/String;

    .line 21
    const-string v4, "com.lge.systemservice.core.cliptraymanager.CliptrayManager"

    sput-object v4, Lcom/lge/loader/cliptray/CliptrayManagerCreator;->CLITRAY_MANAGER_CLASS:Ljava/lang/String;

    .line 25
    new-instance v1, Ldalvik/system/PathClassLoader;

    sget-object v4, Lcom/lge/loader/cliptray/CliptrayManagerCreator;->LGSYSTEM_SERVICE_CORE_LIB:Ljava/lang/String;

    const-class v5, Lcom/lge/loader/cliptray/CliptrayManagerCreator;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 29
    .local v1, "cloader":Ljava/lang/ClassLoader;
    :try_start_0
    sget-object v4, Lcom/lge/loader/cliptray/CliptrayManagerCreator;->CLITRAY_MANAGER_CLASS:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v4, v5, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 33
    .local v0, "cliptrayManagerClass":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    .line 34
    .local v3, "paramType":[Ljava/lang/Class;
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    sput-object v4, Lcom/lge/loader/cliptray/CliptrayManagerCreator;->sCliptrayManagerConstructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    .line 45
    .end local v0    # "cliptrayManagerClass":Ljava/lang/Class;
    .end local v3    # "paramType":[Ljava/lang/Class;
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v2

    .line 37
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "CliptrayManagerLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/lge/loader/cliptray/CliptrayManagerCreator;->CLITRAY_MANAGER_CLASS:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "don\'t exist in library: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 38
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 40
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 41
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v2

    .line 43
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "CliptrayManagerLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/lge/loader/cliptray/CliptrayManagerCreator;->CLITRAY_MANAGER_CLASS:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "don\'t exist Constructor in library: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/lge/loader/InstanceCreator;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "args"    # Ljava/lang/Object;

    .prologue
    .line 52
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 54
    .local v1, "paramType":[Ljava/lang/Object;
    :try_start_0
    sget-object v2, Lcom/lge/loader/cliptray/CliptrayManagerCreator;->sCliptrayManagerConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v2, :cond_0

    .line 55
    sget-object v2, Lcom/lge/loader/cliptray/CliptrayManagerCreator;->sCliptrayManagerConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 66
    :goto_0
    return-object v2

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 66
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 59
    :catch_1
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 61
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 63
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method
