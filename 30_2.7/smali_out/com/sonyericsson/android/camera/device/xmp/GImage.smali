.class public Lcom/sonyericsson/android/camera/device/xmp/GImage;
.super Ljava/lang/Object;
.source "GImage.java"


# static fields
.field public static final NAMESPACE_URL:Ljava/lang/String; = "http://ns.google.com/photos/1.0/image/"

.field public static final PREFIX:Ljava/lang/String; = "GImage"

.field public static final PROPERTY_DATA:Ljava/lang/String; = "Data"

.field public static final PROPERTY_MIME:Ljava/lang/String; = "Mime"


# instance fields
.field private mData:Ljava/lang/String;

.field private mMime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 51
    :try_start_0
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    const-string v1, "http://ns.google.com/photos/1.0/image/"

    const-string v2, "GImage"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception v0

    .line 54
    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    :goto_10
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .registers 4

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "image/jpeg"

    .line 58
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/GImage;->mMime:Ljava/lang/String;

    const/4 v0, 0x0

    .line 83
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/GImage;->mData:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/xmp/GImage;->mMime:Ljava/lang/String;

    return-void
.end method

.method private saveAsJPEG([B)V
    .registers 9

    .line 63
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "depthI"

    const-string v1, "saveAsJPEG img"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 64
    :cond_f
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdcard/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_img.JPEG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 67
    :try_start_32
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3c} :catch_5d
    .catchall {:try_start_32 .. :try_end_3c} :catchall_5b

    .line 68
    :try_start_3c
    array-length v0, p1

    invoke-virtual {v5, p1, v4, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_40} :catch_58
    .catchall {:try_start_3c .. :try_end_40} :catchall_55

    .line 74
    :try_start_40
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_81

    :catch_44
    move-exception p1

    .line 76
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "depthI"

    aput-object v1, v0, v4

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    :goto_51
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_81

    :catchall_55
    move-exception p1

    move-object v1, v5

    goto :goto_82

    :catch_58
    move-exception p1

    move-object v1, v5

    goto :goto_5e

    :catchall_5b
    move-exception p1

    goto :goto_82

    :catch_5d
    move-exception p1

    .line 70
    :goto_5e
    :try_start_5e
    new-array v0, v3, [Ljava/lang/String;

    const-string v5, "depthI"

    aput-object v5, v0, v4

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_6d
    .catchall {:try_start_5e .. :try_end_6d} :catchall_5b

    if-eqz v1, :cond_81

    .line 74
    :try_start_6f
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_81

    :catch_73
    move-exception p1

    .line 76
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "depthI"

    aput-object v1, v0, v4

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    goto :goto_51

    :cond_81
    :goto_81
    return-void

    :goto_82
    if-eqz v1, :cond_98

    .line 74
    :try_start_84
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_98

    :catch_88
    move-exception v0

    .line 76
    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "depthI"

    aput-object v3, v1, v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 79
    :cond_98
    :goto_98
    throw p1
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/GImage;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getMime()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/GImage;->mMime:Ljava/lang/String;

    return-object v0
.end method
