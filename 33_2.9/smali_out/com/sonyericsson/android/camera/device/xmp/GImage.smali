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
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const-string v0, "depthI"

    if-eqz p0, :cond_f

    const-string p0, "saveAsJPEG img"

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 64
    :cond_f
    new-instance p0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdcard/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_img.JPEG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 67
    :try_start_35
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3f} :catch_5e
    .catchall {:try_start_35 .. :try_end_3f} :catchall_5c

    .line 68
    :try_start_3f
    array-length p0, p1

    invoke-virtual {v5, p1, v4, p0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_43} :catch_59
    .catchall {:try_start_3f .. :try_end_43} :catchall_56

    .line 74
    :try_start_43
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_80

    :catch_47
    move-exception p0

    new-array p1, v3, [Ljava/lang/String;

    aput-object v0, p1, v4

    .line 76
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_80

    :catchall_56
    move-exception p0

    move-object v1, v5

    goto :goto_81

    :catch_59
    move-exception p0

    move-object v1, v5

    goto :goto_5f

    :catchall_5c
    move-exception p0

    goto :goto_81

    :catch_5e
    move-exception p0

    :goto_5f
    :try_start_5f
    new-array p1, v3, [Ljava/lang/String;

    aput-object v0, p1, v4

    .line 70
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_5f .. :try_end_6c} :catchall_5c

    if-eqz v1, :cond_80

    .line 74
    :try_start_6e
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_80

    :catch_72
    move-exception p0

    new-array p1, v3, [Ljava/lang/String;

    aput-object v0, p1, v4

    .line 76
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_80
    :goto_80
    return-void

    :goto_81
    if-eqz v1, :cond_95

    .line 74
    :try_start_83
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_95

    :catch_87
    move-exception p1

    new-array v1, v3, [Ljava/lang/String;

    aput-object v0, v1, v4

    .line 76
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 79
    :cond_95
    :goto_95
    throw p0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/GImage;->mData:Ljava/lang/String;

    return-object p0
.end method

.method public getMime()Ljava/lang/String;
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/GImage;->mMime:Ljava/lang/String;

    return-object p0
.end method
