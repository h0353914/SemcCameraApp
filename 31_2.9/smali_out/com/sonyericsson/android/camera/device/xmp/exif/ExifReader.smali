.class Lcom/sonyericsson/android/camera/device/xmp/exif/ExifReader;
.super Ljava/lang/Object;
.source "ExifReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExifReader"


# instance fields
.field private final mInterface:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;)V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifReader;->mInterface:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;

    return-void
.end method


# virtual methods
.method protected read(Ljava/io/InputStream;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifReader;->mInterface:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;

    move-result-object p1

    .line 47
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    .line 50
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->next()I

    move-result v1

    :goto_13
    const/4 v2, 0x5

    if-eq v1, v2, :cond_9f

    packed-switch v1, :pswitch_data_a0

    goto/16 :goto_99

    .line 80
    :pswitch_1b
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->getStripSize()I

    move-result v1

    new-array v1, v1, [B

    .line 81
    array-length v2, v1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->read([B)I

    move-result v3

    if-ne v2, v3, :cond_30

    .line 82
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->getStripIndex()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->setStripBytes(I[B)V

    goto :goto_99

    :cond_30
    const-string v1, "ExifReader"

    const-string v2, "Failed to read the strip bytes"

    .line 84
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    goto :goto_99

    .line 72
    :pswitch_3c
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->getCompressedImageSize()I

    move-result v1

    new-array v1, v1, [B

    .line 73
    array-length v2, v1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->read([B)I

    move-result v3

    if-ne v2, v3, :cond_4d

    .line 74
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->setCompressedThumbnail([B)V

    goto :goto_99

    :cond_4d
    const-string v1, "ExifReader"

    const-string v2, "Failed to read the compressed thumbnail"

    .line 76
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    goto :goto_99

    .line 65
    :pswitch_59
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->getTag()Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getDataType()S

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_67

    .line 67
    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->readFullTagValue(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)V

    .line 69
    :cond_67
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getIfd()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getIfdData(I)Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;->setTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    goto :goto_99

    .line 57
    :pswitch_73
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->getTag()Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->hasValue()Z

    move-result v2

    if-nez v2, :cond_81

    .line 59
    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->registerForTagValue(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)V

    goto :goto_99

    .line 61
    :cond_81
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getIfd()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getIfdData(I)Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;->setTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    goto :goto_99

    .line 54
    :pswitch_8d
    new-instance v1, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->getCurrentIfd()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->addIfdData(Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;)V

    .line 88
    :goto_99
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->next()I

    move-result v1

    goto/16 :goto_13

    :cond_9f
    return-object v0

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_73
        :pswitch_59
        :pswitch_3c
        :pswitch_1b
    .end packed-switch
.end method
