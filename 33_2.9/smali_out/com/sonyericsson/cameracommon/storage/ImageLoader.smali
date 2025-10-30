.class public Lcom/sonyericsson/cameracommon/storage/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# static fields
.field private static final FIRST_REDUCE_RATIO_FULL_IMG:I = 0x2

.field private static final FULL_SIZE_MAX_LENGTH:I = 0x401

.field public static final TAG:Ljava/lang/String; = "ImageLoader"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mImageData:[B

.field private final mOption:Landroid/graphics/BitmapFactory$Options;

.field private final mOrientation:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;I)V
    .registers 4

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mUri:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mImageData:[B

    .line 81
    iput p3, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mOrientation:I

    .line 82
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[BI)V
    .registers 4

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mUri:Landroid/net/Uri;

    .line 94
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mImageData:[B

    .line 95
    iput p3, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mOrientation:I

    .line 96
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    return-void
.end method

.method private calcBounds(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 177
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "calcBounds()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x2

    .line 180
    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 182
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 186
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_26

    .line 187
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 189
    :cond_26
    iget p0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_91

    iget p0, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq p0, p1, :cond_91

    .line 194
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 p1, 0x0

    if-eqz p0, :cond_50

    new-array p0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BMP out height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, p1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 195
    :cond_50
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_70

    new-array p0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BMP out width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, p1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 196
    :cond_70
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_90

    new-array p0, v0, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scale ratio:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p2, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, p1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_90
    return-void

    :cond_91
    const-string p0, "Bitmap read error"

    .line 190
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 191
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Failed to calculate bounds of bitmap"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private calcRatio(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 6

    .line 289
    iget p0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/2addr p0, p2

    .line 290
    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr p1, p2

    add-int p2, p0, p3

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    .line 292
    div-int/2addr p2, p3

    add-int v1, p1, p3

    sub-int/2addr v1, v0

    .line 293
    div-int/2addr v1, p3

    .line 294
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-nez p2, :cond_23

    .line 297
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_22

    const-string p0, "Full size image loading ratio: error"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_22
    return v0

    :cond_23
    if-le p2, v0, :cond_2d

    .line 302
    div-int/2addr p0, p2

    if-gt p0, p3, :cond_2b

    div-int/2addr p1, p2

    if-le p1, p3, :cond_2d

    :cond_2b
    add-int/lit8 p2, p2, -0x1

    .line 307
    :cond_2d
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_4c

    new-array p0, v0, [Ljava/lang/String;

    const/4 p1, 0x0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Full size image loading ratio:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p0, p1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4c
    return p2
.end method

.method private decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 264
    new-instance p0, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 268
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_13

    const-string v0, "Loading full size image started"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 269
    :cond_13
    invoke-static {p1, p0, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 270
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_24

    const-string p1, "Loading full size image finished"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_24
    return-object p0
.end method

.method private loadFullSize(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 219
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "loadFullSize()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x0

    .line 222
    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 223
    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 224
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 226
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_69

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const-string v1, "loadFullSize: mOrientation"

    aput-object v1, p2, v0

    const/4 v1, 0x1

    .line 232
    iget v2, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mOrientation:I

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->orientationToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 234
    iget p2, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mOrientation:I

    if-eqz p2, :cond_68

    .line 236
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 237
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    .line 238
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 239
    iget p0, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mOrientation:I

    int-to-float p0, p0

    invoke-virtual {v7, p0, p2, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 240
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 241
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 244
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 245
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_68
    return-object p1

    :cond_69
    const-string p0, "loadFullSize: Decode read error"

    .line 228
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 229
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Failed to decode full size image"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public load()Landroid/graphics/Bitmap;
    .registers 10

    const-string v0, "Close stream failed:"

    .line 104
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_f

    const-string v1, "Loading full size image started"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_f
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 109
    :try_start_12
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v4, :cond_32

    new-array v4, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start loading original image:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 112
    :cond_32
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mImageData:[B

    if-eqz v4, :cond_3e

    .line 113
    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mImageData:[B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_46

    .line 115
    :cond_3e
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/storage/ContentResolverUtil;->crOpenInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_46
    .catch Ljava/io/InvalidObjectException; {:try_start_12 .. :try_end_46} :catch_156
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_46} :catch_12c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_46} :catch_102
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_46} :catch_d6
    .catchall {:try_start_12 .. :try_end_46} :catchall_d3

    :goto_46
    if-eqz v4, :cond_5c

    .line 119
    :try_start_48
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0, v4, v5}, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->calcBounds(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)V

    .line 122
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v7, 0x401

    invoke-direct {p0, v5, v6, v7}, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->calcRatio(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v6

    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 125
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 128
    :cond_5c
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mImageData:[B

    if-eqz v5, :cond_68

    .line 129
    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mImageData:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_70

    .line 131
    :cond_68
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mUri:Landroid/net/Uri;

    invoke-static {v5, v6}, Lcom/sonyericsson/cameracommon/storage/ContentResolverUtil;->crOpenInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_70
    .catch Ljava/io/InvalidObjectException; {:try_start_48 .. :try_end_70} :catch_cd
    .catch Ljava/io/FileNotFoundException; {:try_start_48 .. :try_end_70} :catch_c9
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_70} :catch_c5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_48 .. :try_end_70} :catch_c2
    .catchall {:try_start_48 .. :try_end_70} :catchall_be

    :goto_70
    if-eqz v5, :cond_7b

    .line 135
    :try_start_72
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0, v5, v4}, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->loadFullSize(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 137
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 139
    :cond_7b
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v4, :cond_88

    const-string v4, "Loading full size image finished"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_88
    .catch Ljava/io/InvalidObjectException; {:try_start_72 .. :try_end_88} :catch_b9
    .catch Ljava/io/FileNotFoundException; {:try_start_72 .. :try_end_88} :catch_b5
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_88} :catch_b1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_72 .. :try_end_88} :catch_ae
    .catchall {:try_start_72 .. :try_end_88} :catchall_aa

    :cond_88
    if-eqz v5, :cond_192

    .line 151
    :try_start_8a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8d} :catch_8f

    goto/16 :goto_192

    :catch_8f
    move-exception p0

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_192

    :catchall_aa
    move-exception p0

    move-object v1, v5

    goto/16 :goto_193

    :catch_ae
    move-object p0, v1

    move-object v1, v5

    goto :goto_d7

    :catch_b1
    move-object v4, v1

    move-object v1, v5

    goto/16 :goto_103

    :catch_b5
    move-object v4, v1

    move-object v1, v5

    goto/16 :goto_12d

    :catch_b9
    move-exception p0

    move-object v4, v1

    move-object v1, v5

    goto/16 :goto_158

    :catchall_be
    move-exception p0

    move-object v1, v4

    goto/16 :goto_193

    :catch_c2
    move-object p0, v1

    move-object v1, v4

    goto :goto_d7

    :catch_c5
    move-object v8, v4

    move-object v4, v1

    move-object v1, v8

    goto :goto_103

    :catch_c9
    move-object v8, v4

    move-object v4, v1

    move-object v1, v8

    goto :goto_12d

    :catch_cd
    move-exception p0

    move-object v8, v4

    move-object v4, v1

    move-object v1, v8

    goto/16 :goto_158

    :catchall_d3
    move-exception p0

    goto/16 :goto_193

    :catch_d6
    move-object p0, v1

    :goto_d7
    :try_start_d7
    const-string v2, "Maybe File access error."

    .line 147
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_e0
    .catchall {:try_start_d7 .. :try_end_e0} :catchall_d3

    if-eqz v1, :cond_ff

    .line 151
    :try_start_e2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e5} :catch_e6

    goto :goto_ff

    :catch_e6
    move-exception v1

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_ff
    :goto_ff
    move-object v1, p0

    goto/16 :goto_192

    :catch_102
    move-object v4, v1

    :goto_103
    :try_start_103
    new-array v3, v3, [Ljava/lang/String;

    .line 145
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Close failed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_11f
    .catchall {:try_start_103 .. :try_end_11f} :catchall_d3

    if-eqz v1, :cond_191

    .line 151
    :try_start_121
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_124} :catch_125

    goto :goto_191

    :catch_125
    move-exception p0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_17e

    :catch_12c
    move-object v4, v1

    :goto_12d
    :try_start_12d
    new-array v3, v3, [Ljava/lang/String;

    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File not found:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_149
    .catchall {:try_start_12d .. :try_end_149} :catchall_d3

    if-eqz v1, :cond_191

    .line 151
    :try_start_14b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_14e} :catch_14f

    goto :goto_191

    :catch_14f
    move-exception p0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_17e

    :catch_156
    move-exception p0

    move-object v4, v1

    :goto_158
    :try_start_158
    new-array v3, v3, [Ljava/lang/String;

    .line 141
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Load full size error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_172
    .catchall {:try_start_158 .. :try_end_172} :catchall_d3

    if-eqz v1, :cond_191

    .line 151
    :try_start_174
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_177} :catch_178

    goto :goto_191

    :catch_178
    move-exception p0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_17e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_191
    :goto_191
    move-object v1, v4

    :cond_192
    :goto_192
    return-object v1

    :goto_193
    if-eqz v1, :cond_1b2

    .line 151
    :try_start_195
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_198
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_198} :catch_199

    goto :goto_1b2

    :catch_199
    move-exception v1

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    :cond_1b2
    :goto_1b2
    throw p0
.end method
