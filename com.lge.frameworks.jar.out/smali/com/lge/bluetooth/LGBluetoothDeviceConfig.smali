.class public final Lcom/lge/bluetooth/LGBluetoothDeviceConfig;
.super Ljava/lang/Object;
.source "LGBluetoothDeviceConfig.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LGBluetoothDeviceConfig"

.field private static dvFeature:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static isXmlParsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->isXmlParsed:Z

    .line 46
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->dvFeature:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static get(Ljava/lang/String;)Z
    .locals 2
    .param p0, "dvfName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 99
    sget-boolean v0, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->isXmlParsed:Z

    if-eq v0, v1, :cond_0

    .line 100
    invoke-static {}, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->parseXml()V

    .line 101
    sput-boolean v1, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->isXmlParsed:Z

    .line 104
    :cond_0
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->dvFeature:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 105
    const/4 v0, 0x0

    .line 110
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/lang/Boolean;

    sget-object v0, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->dvFeature:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static isDeviceSupported(Ljava/lang/String;)Z
    .locals 1
    .param p0, "dvfName"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-static {p0}, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->get(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static parseXml()V
    .locals 10

    .prologue
    .line 61
    const/4 v8, 0x1

    sput-boolean v8, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->isXmlParsed:Z

    .line 63
    const/4 v1, 0x0

    .line 66
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v8, "etc/bluetooth/device_config.xml"

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v6, "xmlFile":Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    .line 72
    .local v4, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 74
    .local v3, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v7

    .line 76
    .local v7, "xr":Lorg/xml/sax/XMLReader;
    new-instance v5, Lcom/lge/bluetooth/LGBluetoothXmlHandler;

    invoke-direct {v5}, Lcom/lge/bluetooth/LGBluetoothXmlHandler;-><init>()V

    .line 77
    .local v5, "xh":Lcom/lge/bluetooth/LGBluetoothXmlHandler;
    invoke-interface {v7, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 79
    new-instance v8, Lorg/xml/sax/InputSource;

    invoke-direct {v8, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v7, v8}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    if-eqz v2, :cond_2

    .line 89
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 96
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .end local v5    # "xh":Lcom/lge/bluetooth/LGBluetoothXmlHandler;
    .end local v6    # "xmlFile":Ljava/io/File;
    .end local v7    # "xr":Lorg/xml/sax/XMLReader;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-void

    .line 90
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v4    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .restart local v5    # "xh":Lcom/lge/bluetooth/LGBluetoothXmlHandler;
    .restart local v6    # "xmlFile":Ljava/io/File;
    .restart local v7    # "xr":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 92
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 81
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .end local v5    # "xh":Lcom/lge/bluetooth/LGBluetoothXmlHandler;
    .end local v6    # "xmlFile":Ljava/io/File;
    .end local v7    # "xr":Lorg/xml/sax/XMLReader;
    :catch_1
    move-exception v0

    .line 82
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v8, "LGBluetoothDeviceConfig"

    const-string v9, "[BTUI] parseXml: not exist device_config.xml"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    if-eqz v1, :cond_0

    .line 89
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 90
    :catch_2
    move-exception v0

    .line 91
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 83
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 87
    if-eqz v1, :cond_0

    .line 89
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 90
    :catch_4
    move-exception v0

    .line 91
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 87
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v1, :cond_1

    .line 89
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 92
    :cond_1
    :goto_4
    throw v8

    .line 90
    :catch_5
    move-exception v0

    .line 91
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 87
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "xmlFile":Ljava/io/File;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 83
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 81
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v4    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .restart local v5    # "xh":Lcom/lge/bluetooth/LGBluetoothXmlHandler;
    .restart local v7    # "xr":Lorg/xml/sax/XMLReader;
    :cond_2
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method static declared-synchronized set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "dvfName"    # Ljava/lang/String;
    .param p1, "bYn"    # Ljava/lang/String;

    .prologue
    .line 50
    const-class v1, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->dvFeature:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->dvFeature:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    sget-object v0, Lcom/lge/bluetooth/LGBluetoothDeviceConfig;->dvFeature:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit v1

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
