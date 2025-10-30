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

    .line 58
    const-string v0, "image/jpeg"

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
    .registers 7

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

    const-string v2, "sdcard/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    const/4 v2, 0x0

    .line 67
    :try_start_2f
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_39} :catch_56
    .catchall {:try_start_2f .. :try_end_39} :catchall_54

    .line 68
    :try_start_39
    array-length p0, p1

    invoke-virtual {v3, p1, v1, p0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3d} :catch_51
    .catchall {:try_start_39 .. :try_end_3d} :catchall_4e

    .line 74
    :try_start_3d
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_78

    :catch_41
    move-exception p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_78

    :catchall_4e
    move-exception p0

    move-object v2, v3

    goto :goto_79

    :catch_51
    move-exception p0

    move-object v2, v3

    goto :goto_57

    :catchall_54
    move-exception p0

    goto :goto_79

    :catch_56
    move-exception p0

    :goto_57
    const/4 p1, 0x2

    .line 70
    :try_start_58
    new-array p1, p1, [Ljava/lang/String;

    aput-object v0, p1, v1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_66
    .catchall {:try_start_58 .. :try_end_66} :catchall_54

    if-eqz v2, :cond_78

    .line 74
    :try_start_68
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_78

    :catch_6c
    move-exception p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_78
    :goto_78
    return-void

    :goto_79
    if-eqz v2, :cond_8b

    .line 74
    :try_start_7b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_8b

    :catch_7f
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 79
    :cond_8b
    :goto_8b
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
