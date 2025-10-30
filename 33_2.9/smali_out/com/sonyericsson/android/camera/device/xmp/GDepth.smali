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
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const-string v0, "Flow_GDepth"

    const/4 v1, 0x0

    if-eqz p0, :cond_26

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    aput-object v0, p0, v1

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compressToJPEG byte[].size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v2

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 207
    :cond_26
    array-length p0, p1

    invoke-static {p1, v1, p0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_38

    const-string p0, " buffer can\'t be decoded "

    .line 209
    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 212
    :cond_38
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 213
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 214
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static createGDepth(Lcom/adobe/xmp/XMPMeta;)Lcom/sonyericsson/android/camera/device/xmp/GDepth;
    .registers 13

    const-string v0, "http://ns.google.com/photos/1.0/depthmap/"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_4
    const-string v3, "Near"

    .line 287
    invoke-interface {p0, v0, v3}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v3

    invoke-interface {v3}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 286
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "Far"

    .line 289
    invoke-interface {p0, v0, v4}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v4

    invoke-interface {v4}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 288
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "Data"

    .line 290
    invoke-interface {p0, v0, v5}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v5

    .line 291
    invoke-interface {v5}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Format"

    .line 292
    invoke-interface {p0, v0, v6}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v6

    .line 293
    invoke-interface {v6}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 294
    sget-boolean v7, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z
    :try_end_36
    .catch Lcom/adobe/xmp/XMPException; {:try_start_4 .. :try_end_36} :catch_ff
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_36} :catch_f2

    const-string v8, "Flow_GDepth"

    const/4 v9, 0x2

    if-eqz v7, :cond_75

    :try_start_3b
    new-array v7, v9, [Ljava/lang/String;

    aput-object v8, v7, v1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "new GDepth: nerar="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " far="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "format="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " data="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v2

    invoke-static {v7}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_75
    const-string v6, "RoiX"

    .line 297
    invoke-interface {p0, v0, v6}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v6

    invoke-interface {v6}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 296
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "RoiY"

    .line 299
    invoke-interface {p0, v0, v7}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v7

    invoke-interface {v7}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 298
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const-string v10, "RoiWidth"

    .line 301
    invoke-interface {p0, v0, v10}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v10

    invoke-interface {v10}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 300
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, "RoiHeight"

    .line 303
    invoke-interface {p0, v0, v11}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object p0

    invoke-interface {p0}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 302
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 304
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_ec

    new-array v0, v9, [Ljava/lang/String;

    aput-object v8, v0, v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "x="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " y="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " width="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " height="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 306
    :cond_ec
    new-instance p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;

    invoke-direct {p0, v3, v4, v5}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;-><init>(IILjava/lang/String;)V
    :try_end_f1
    .catch Lcom/adobe/xmp/XMPException; {:try_start_3b .. :try_end_f1} :catch_ff
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_f1} :catch_f2

    return-object p0

    :catch_f2
    move-exception p0

    new-array v0, v2, [Ljava/lang/String;

    .line 311
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_10b

    :catch_ff
    move-exception p0

    new-array v0, v2, [Ljava/lang/String;

    .line 309
    invoke-virtual {p0}, Lcom/adobe/xmp/XMPException;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_10b
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

    const-string v1, "Flow_GDepth"

    if-eqz v0, :cond_f

    const-string v0, "encodeDepthmapJpeg"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_f
    const/4 v0, 0x0

    .line 176
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mGdepthJpeg:[B

    if-eqz v2, :cond_1d

    .line 178
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->serializeAsBase64Str([B)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 180
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mData:Ljava/lang/String;

    move v0, v1

    goto :goto_26

    :cond_1d
    const-string p0, "compressToJPEG failure"

    .line 182
    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_26
    return v0
.end method

.method private encoding()Z
    .registers 7

    .line 154
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const-string v1, "Flow_GDepth"

    if-eqz v0, :cond_f

    const-string v0, "encoding"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_f
    const/4 v0, 0x0

    .line 156
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mMap:[I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mDepthMap:Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;

    iget v3, v3, Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;->width:I

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mDepthMap:Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;

    iget v4, v4, Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;->height:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 158
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 159
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 160
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 161
    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mGdepthJpeg:[B

    if-eqz v2, :cond_3d

    .line 163
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->serializeAsBase64Str([B)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 165
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mData:Ljava/lang/String;

    move v0, v1

    goto :goto_46

    :cond_3d
    const-string p0, "compressToJPEG failure"

    .line 167
    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_46
    return v0
.end method

.method private saveAsFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 227
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v0, 0x0

    const-string v1, ".log"

    const-string v2, "Flow_GDepth"

    if-eqz p0, :cond_2b

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    aput-object v2, p0, v0

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveAsFile sdcard/DDM/Flow_GDepth"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p0, v3

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 228
    :cond_2b
    new-instance p0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sdcard/DDM/Flow_GDepth"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 231
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 233
    :try_start_4c
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_56} :catch_66
    .catchall {:try_start_4c .. :try_end_56} :catchall_64

    .line 234
    :try_start_56
    array-length p0, p1

    invoke-virtual {v1, p1, v0, p0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5a} :catch_61
    .catchall {:try_start_56 .. :try_end_5a} :catchall_5e

    .line 240
    :try_start_5a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_70

    goto :goto_74

    :catchall_5e
    move-exception p0

    move-object p2, v1

    goto :goto_75

    :catch_61
    move-exception p0

    move-object p2, v1

    goto :goto_67

    :catchall_64
    move-exception p0

    goto :goto_75

    :catch_66
    move-exception p0

    .line 236
    :goto_67
    :try_start_67
    invoke-static {v2, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_64

    if-eqz p2, :cond_74

    .line 240
    :try_start_6c
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_74

    :catch_70
    move-exception p0

    .line 242
    invoke-static {v2, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_74
    :goto_74
    return-void

    :goto_75
    if-eqz p2, :cond_7f

    .line 240
    :try_start_77
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7a} :catch_7b

    goto :goto_7f

    :catch_7b
    move-exception p1

    .line 242
    invoke-static {v2, p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    :cond_7f
    :goto_7f
    throw p0
.end method

.method private saveAsJPEG([B)V
    .registers 9

    .line 249
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const-string v0, "Flow_GDepth"

    if-eqz p0, :cond_f

    const-string p0, "saveAsJPEG"

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 250
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

    const-string v2, "_depth.JPEG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 253
    :try_start_35
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3f} :catch_5e
    .catchall {:try_start_35 .. :try_end_3f} :catchall_5c

    .line 254
    :try_start_3f
    array-length p0, p1

    invoke-virtual {v5, p1, v4, p0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_43} :catch_59
    .catchall {:try_start_3f .. :try_end_43} :catchall_56

    .line 260
    :try_start_43
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_80

    :catch_47
    move-exception p0

    new-array p1, v3, [Ljava/lang/String;

    aput-object v0, p1, v4

    .line 262
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

    .line 256
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_5f .. :try_end_6c} :catchall_5c

    if-eqz v1, :cond_80

    .line 260
    :try_start_6e
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_80

    :catch_72
    move-exception p0

    new-array p1, v3, [Ljava/lang/String;

    aput-object v0, p1, v4

    .line 262
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_80
    :goto_80
    return-void

    :goto_81
    if-eqz v1, :cond_95

    .line 260
    :try_start_83
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_95

    :catch_87
    move-exception p1

    new-array v1, v3, [Ljava/lang/String;

    aput-object v0, v1, v4

    .line 262
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 265
    :cond_95
    :goto_95
    throw p0
.end method

.method private serializeAsBase64Str([B)Ljava/lang/String;
    .registers 3

    .line 222
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_f

    const-string p0, "Flow_GDepth"

    const-string v0, "serializeAsBase64Str"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_f
    const/4 p0, 0x0

    .line 223
    invoke-static {p1, p0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
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
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mData:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 323
    array-length v1, p0

    new-array v2, v1, [I

    .line 324
    array-length v3, p0

    new-array v3, v3, [I

    move v3, v0

    :goto_1d
    if-ge v3, v1, :cond_2a

    .line 328
    aget-byte v4, p0, v3

    add-int/lit16 v4, v4, 0x100

    rem-int/lit16 v4, v4, 0x100

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_2a
    return v0
.end method

.method public getBitGdepthBitmap()Landroid/graphics/Bitmap;
    .registers 5

    .line 195
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mMap:[I

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_15

    .line 197
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mMap:[I

    aget v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    .line 198
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 200
    :cond_15
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mDepthMap:Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;

    iget v0, v0, Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;->width:I

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mDepthMap:Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;

    iget p0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, p0, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getData()Ljava/lang/String;
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mData:Ljava/lang/String;

    return-object p0
.end method

.method public getDepthJpeg()[B
    .registers 1

    .line 218
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mGdepthJpeg:[B

    return-object p0
.end method

.method public getFar()I
    .registers 1

    const/16 p0, 0xff

    return p0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 1

    const-string p0, "RangeLinear"

    return-object p0
.end method

.method public getGdepthBitmap()Landroid/graphics/Bitmap;
    .registers 4

    .line 189
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mMap:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mDepthMap:Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;

    iget v1, v1, Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;->width:I

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mDepthMap:Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;

    iget p0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth$DepthMap;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, p0, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getMime()Ljava/lang/String;
    .registers 1

    const-string p0, "image/jpeg"

    return-object p0
.end method

.method public getNear()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public getRoi()Landroid/graphics/Rect;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mRoi:Landroid/graphics/Rect;

    return-object p0
.end method

.method public setRoi(Landroid/graphics/Rect;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->mRoi:Landroid/graphics/Rect;

    return-void
.end method
