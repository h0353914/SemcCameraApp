.class public Lcom/sonyericsson/android/camera/device/xmp/GDepth;
.super Ljava/lang/Object;
.source "GDepth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;
    }
.end annotation


# static fields
.field public static final FORMAT_8_BIT:Ljava/lang/String; = "8-bit"

.field public static final FORMAT_RANGE_INVERSE:Ljava/lang/String; = "RangeInverse"

.field public static final FORMAT_RANGLE_LINEAR:Ljava/lang/String; = "RangeLinear"

.field private static final MIME:Ljava/lang/String; = "image/jpeg"

.field public static final NAMESPACE_URL:Ljava/lang/String; = "http://ns.google.com/photos/1.0/depthmap/"

.field public static final PREFIX:Ljava/lang/String; = "GDepth"

.field public static final PROPERTY_DATA:Ljava/lang/String; = "Data"

.field public static final PROPERTY_FAR:Ljava/lang/String; = "Far"

.field public static final PROPERTY_FORMAT:Ljava/lang/String; = "Format"

.field public static final PROPERTY_MIME:Ljava/lang/String; = "Mime"

.field public static final PROPERTY_NEAR:Ljava/lang/String; = "Near"

.field public static final PROPERTY_ROI_HEIGHT:Ljava/lang/String; = "RoiHeight"

.field public static final PROPERTY_ROI_WIDTH:Ljava/lang/String; = "RoiWidth"

.field public static final PROPERTY_ROI_X:Ljava/lang/String; = "RoiX"

.field public static final PROPERTY_ROI_Y:Ljava/lang/String; = "RoiY"

.field private static final TAG:Ljava/lang/String; = "Flow_GDepth"


# instance fields
.field private mData:Ljava/lang/String;

.field private mDepthMap:Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;

.field private final mFormat:Ljava/lang/String;

.field private mGdepthJpeg:[B

.field private mMap:[I

.field private mRoi:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 83
    :try_start_0
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    const-string v1, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v2, "GDepth"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception v0

    .line 86
    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    :goto_10
    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .registers 4

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "RangeLinear"

    .line 75
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mFormat:Ljava/lang/String;

    .line 282
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mData:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;)V
    .registers 5

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RangeLinear"

    .line 75
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mFormat:Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mDepthMap:Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;

    .line 92
    iget-object v0, p1, Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;->roi:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mRoi:Landroid/graphics/Rect;

    if-eqz p1, :cond_31

    .line 93
    iget-object v0, p1, Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;->buffer:[B

    if-eqz v0, :cond_31

    .line 94
    iget-object v0, p1, Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;->buffer:[B

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mMap:[I

    const/4 v0, 0x0

    .line 96
    :goto_1b
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mMap:[I

    array-length v1, v1

    if-ge v0, v1, :cond_31

    .line 97
    iget-object v1, p1, Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;->buffer:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    .line 98
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    .line 99
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mMap:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_31
    return-void
.end method

.method private constructor <init>([B)V
    .registers 3

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RangeLinear"

    .line 75
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mFormat:Ljava/lang/String;

    .line 105
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mGdepthJpeg:[B

    return-void
.end method

.method private compressToJPEG([B)[B
    .registers 7

    .line 206
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "Flow_GDepth"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compressToJPEG byte[].size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 207
    :cond_24
    array-length v0, p1

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_38

    const-string p1, "Flow_GDepth"

    const-string v0, " buffer can\'t be decoded "

    .line 209
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 212
    :cond_38
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 213
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 214
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public static createGDepth(Lcom/adobe/xmp/XMPMeta;)Lcom/sonyericsson/android/camera/device/xmp/GDepth;
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    const-string v2, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v3, "Near"

    .line 287
    invoke-interface {p0, v2, v3}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v2

    invoke-interface {v2}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 286
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v4, "Far"

    .line 289
    invoke-interface {p0, v3, v4}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v3

    invoke-interface {v3}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 288
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v5, "Data"

    .line 290
    invoke-interface {p0, v4, v5}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v4

    .line 291
    invoke-interface {v4}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v6, "Format"

    .line 292
    invoke-interface {p0, v5, v6}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v5

    .line 293
    invoke-interface {v5}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 294
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v7, 0x2

    if-eqz v6, :cond_73

    new-array v6, v7, [Ljava/lang/String;

    const-string v8, "Flow_GDepth"

    aput-object v8, v6, v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "new GDepth: nerar="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " far="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "format="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " data="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v1

    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_73
    const-string v5, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v6, "RoiX"

    .line 297
    invoke-interface {p0, v5, v6}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v5

    invoke-interface {v5}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 296
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v8, "RoiY"

    .line 299
    invoke-interface {p0, v6, v8}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v6

    invoke-interface {v6}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 298
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v8, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v9, "RoiWidth"

    .line 301
    invoke-interface {p0, v8, v9}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v8

    invoke-interface {v8}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 300
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v10, "RoiHeight"

    .line 303
    invoke-interface {p0, v9, v10}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object p0

    invoke-interface {p0}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 302
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 304
    sget-boolean v9, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v9, :cond_eb

    new-array v7, v7, [Ljava/lang/String;

    const-string v9, "Flow_GDepth"

    aput-object v9, v7, v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "x="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " y="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " width="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " height="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v7, v1

    invoke-static {v7}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 306
    :cond_eb
    new-instance p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;

    invoke-direct {p0, v2, v3, v4}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;-><init>(IILjava/lang/String;)V
    :try_end_f0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_2 .. :try_end_f0} :catch_fe
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f0} :catch_f1

    return-object p0

    :catch_f1
    move-exception p0

    .line 311
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v0

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_10a

    :catch_fe
    move-exception p0

    .line 309
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/adobe/xmp/XMPException;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v0

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_10a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createGDepth(Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;)Lcom/sonyericsson/android/camera/device/xmp/GDepth;
    .registers 2

    .line 138
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;-><init>(Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;)V

    .line 139
    invoke-direct {v0}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->encoding()Z

    move-result p0

    if-eqz p0, :cond_c

    return-object v0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createGDepth([B)Lcom/sonyericsson/android/camera/device/xmp/GDepth;
    .registers 2

    .line 146
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;-><init>([B)V

    .line 147
    invoke-direct {v0}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->encodeDepthmapJpeg()Z

    move-result p0

    if-eqz p0, :cond_c

    return-object v0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method private encodeDepthmapJpeg()Z
    .registers 4

    .line 174
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "Flow_GDepth"

    const-string v1, "encodeDepthmapJpeg"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_f
    const/4 v0, 0x0

    .line 176
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mGdepthJpeg:[B

    if-eqz v1, :cond_1d

    .line 178
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->serializeAsBase64Str([B)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 180
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mData:Ljava/lang/String;

    move v0, v1

    goto :goto_28

    :cond_1d
    const-string v1, "Flow_GDepth"

    const-string v2, "compressToJPEG failure"

    .line 182
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_28
    return v0
.end method

.method private encoding()Z
    .registers 6

    .line 154
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "Flow_GDepth"

    const-string v1, "encoding"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_f
    const/4 v0, 0x0

    .line 156
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mMap:[I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mDepthMap:Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;

    iget v2, v2, Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;->width:I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mDepthMap:Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;

    iget v3, v3, Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 158
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 159
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 160
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 161
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mGdepthJpeg:[B

    if-eqz v1, :cond_3d

    .line 163
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->serializeAsBase64Str([B)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 165
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mData:Ljava/lang/String;

    move v0, v1

    goto :goto_48

    :cond_3d
    const-string v1, "Flow_GDepth"

    const-string v2, "compressToJPEG failure"

    .line 167
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_48
    return v0
.end method

.method private saveAsFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 227
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "Flow_GDepth"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveAsFile sdcard/DDM/Flow_GDepth"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 228
    :cond_28
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sdcard/DDM/Flow_GDepth"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".log"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 231
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 233
    :try_start_48
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_52} :catch_62
    .catchall {:try_start_48 .. :try_end_52} :catchall_60

    .line 234
    :try_start_52
    array-length p2, p1

    invoke-virtual {v2, p1, v1, p2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_56} :catch_5d
    .catchall {:try_start_52 .. :try_end_56} :catchall_5a

    .line 240
    :try_start_56
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_6e

    goto :goto_74

    :catchall_5a
    move-exception p1

    move-object p2, v2

    goto :goto_75

    :catch_5d
    move-exception p1

    move-object p2, v2

    goto :goto_63

    :catchall_60
    move-exception p1

    goto :goto_75

    :catch_62
    move-exception p1

    :goto_63
    :try_start_63
    const-string v0, "Flow_GDepth"

    .line 236
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_68
    .catchall {:try_start_63 .. :try_end_68} :catchall_60

    if-eqz p2, :cond_74

    .line 240
    :try_start_6a
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_74

    :catch_6e
    move-exception p1

    const-string p2, "Flow_GDepth"

    .line 242
    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_74
    :goto_74
    return-void

    :goto_75
    if-eqz p2, :cond_81

    .line 240
    :try_start_77
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7a} :catch_7b

    goto :goto_81

    :catch_7b
    move-exception p2

    const-string v0, "Flow_GDepth"

    .line 242
    invoke-static {v0, p2}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    :cond_81
    :goto_81
    throw p1
.end method

.method private saveAsJPEG([B)V
    .registers 9

    .line 249
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "Flow_GDepth"

    const-string v1, "saveAsJPEG"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 250
    :cond_f
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdcard/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_depth.JPEG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 253
    :try_start_32
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3c} :catch_5d
    .catchall {:try_start_32 .. :try_end_3c} :catchall_5b

    .line 254
    :try_start_3c
    array-length v0, p1

    invoke-virtual {v5, p1, v4, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_40} :catch_58
    .catchall {:try_start_3c .. :try_end_40} :catchall_55

    .line 260
    :try_start_40
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_81

    :catch_44
    move-exception p1

    .line 262
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "Flow_GDepth"

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

    .line 256
    :goto_5e
    :try_start_5e
    new-array v0, v3, [Ljava/lang/String;

    const-string v5, "Flow_GDepth"

    aput-object v5, v0, v4

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_6d
    .catchall {:try_start_5e .. :try_end_6d} :catchall_5b

    if-eqz v1, :cond_81

    .line 260
    :try_start_6f
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_81

    :catch_73
    move-exception p1

    .line 262
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "Flow_GDepth"

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

    .line 260
    :try_start_84
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_98

    :catch_88
    move-exception v0

    .line 262
    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "Flow_GDepth"

    aput-object v3, v1, v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 265
    :cond_98
    :goto_98
    throw p1
.end method

.method private serializeAsBase64Str([B)Ljava/lang/String;
    .registers 4

    .line 222
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "Flow_GDepth"

    const-string v1, "serializeAsBase64Str"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_f
    const/4 v0, 0x0

    .line 223
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public decode()Z
    .registers 6

    .line 317
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "Flow_GDepth"

    const-string v1, "decode"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 318
    :cond_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mData:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 323
    array-length v2, v0

    new-array v2, v2, [I

    .line 324
    array-length v3, v0

    new-array v3, v3, [I

    move v3, v1

    .line 327
    :goto_1d
    array-length v4, v2

    if-ge v3, v4, :cond_2b

    .line 328
    aget-byte v4, v0, v3

    add-int/lit16 v4, v4, 0x100

    rem-int/lit16 v4, v4, 0x100

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_2b
    return v1
.end method

.method public getBitGdepthBitmap()Landroid/graphics/Bitmap;
    .registers 5

    .line 195
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mMap:[I

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 196
    :goto_6
    array-length v2, v0

    if-ge v1, v2, :cond_16

    .line 197
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mMap:[I

    aget v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    .line 198
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 200
    :cond_16
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mDepthMap:Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;

    iget v1, v1, Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;->width:I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mDepthMap:Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;

    iget v2, v2, Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getDepthJpeg()[B
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mGdepthJpeg:[B

    return-object v0
.end method

.method public getFar()I
    .registers 2

    const/16 v0, 0xff

    return v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    const-string v0, "RangeLinear"

    return-object v0
.end method

.method public getGdepthBitmap()Landroid/graphics/Bitmap;
    .registers 5

    .line 189
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mMap:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mDepthMap:Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;

    iget v1, v1, Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;->width:I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mDepthMap:Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;

    iget v2, v2, Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getMime()Ljava/lang/String;
    .registers 2

    const-string v0, "image/jpeg"

    return-object v0
.end method

.method public getNear()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getRoi()Landroid/graphics/Rect;
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mRoi:Landroid/graphics/Rect;

    return-object v0
.end method

.method public setRoi(Landroid/graphics/Rect;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mRoi:Landroid/graphics/Rect;

    return-void
.end method
