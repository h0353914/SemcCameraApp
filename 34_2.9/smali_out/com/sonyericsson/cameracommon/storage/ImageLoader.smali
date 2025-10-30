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
    .registers 4
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
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

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

    if-eq p0, p1, :cond_84

    iget p0, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq p0, p1, :cond_84

    .line 194
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_4b

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "BMP out height:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 195
    :cond_4b
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_67

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "BMP out width:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 196
    :cond_67
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_83

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Scale ratio:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_83
    return-void

    .line 190
    :cond_84
    const-string p0, "Bitmap read error"

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

    if-eqz p0, :cond_47

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Full size image loading ratio:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_47
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

    if-eqz p1, :cond_65

    .line 232
    iget p2, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mOrientation:I

    invoke-static {p2}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->orientationToString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "loadFullSize: mOrientation"

    filled-new-array {v1, p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 234
    iget p2, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mOrientation:I

    if-eqz p2, :cond_64

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

    .line 240
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

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

    :cond_64
    return-object p1

    .line 228
    :cond_65
    const-string p0, "loadFullSize: Decode read error"

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
    .registers 13

    .line 104
    const-string v0, "Close stream failed:"

    .line 0
    const-string v1, "Start loading original image:"

    const-string v2, "Close failed:"

    const-string v3, "File not found:"

    const-string v4, "Load full size error:"

    .line 104
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v5, :cond_17

    const-string v5, "Loading full size image started"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_17
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 109
    :try_start_1a
    sget-boolean v8, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v8, :cond_34

    new-array v8, v7, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v6

    invoke-static {v8}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 112
    :cond_34
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mImageData:[B

    if-eqz v1, :cond_40

    .line 113
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mImageData:[B

    invoke-direct {v1, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_48

    .line 115
    :cond_40
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mUri:Landroid/net/Uri;

    invoke-static {v1, v8}, Lcom/sonyericsson/cameracommon/storage/ContentResolverUtil;->crOpenInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_48
    .catch Ljava/io/InvalidObjectException; {:try_start_1a .. :try_end_48} :catch_144
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_48} :catch_120
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_48} :catch_fc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_48} :catch_d4
    .catchall {:try_start_1a .. :try_end_48} :catchall_d1

    :goto_48
    if-eqz v1, :cond_5e

    .line 119
    :try_start_4a
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0, v1, v8}, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->calcBounds(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)V

    .line 122
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    iget v9, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v10, 0x401

    invoke-direct {p0, v8, v9, v10}, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->calcRatio(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v9

    iput v9, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 125
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 128
    :cond_5e
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mImageData:[B

    if-eqz v8, :cond_6a

    .line 129
    new-instance v8, Ljava/io/ByteArrayInputStream;

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mImageData:[B

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_72

    .line 131
    :cond_6a
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mUri:Landroid/net/Uri;

    invoke-static {v8, v9}, Lcom/sonyericsson/cameracommon/storage/ContentResolverUtil;->crOpenInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8
    :try_end_72
    .catch Ljava/io/InvalidObjectException; {:try_start_4a .. :try_end_72} :catch_cb
    .catch Ljava/io/FileNotFoundException; {:try_start_4a .. :try_end_72} :catch_c7
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_72} :catch_c3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4a .. :try_end_72} :catch_c0
    .catchall {:try_start_4a .. :try_end_72} :catchall_bc

    :goto_72
    if-eqz v8, :cond_7d

    .line 135
    :try_start_74
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0, v8, v1}, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->loadFullSize(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 137
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 139
    :cond_7d
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_8a

    new-array v1, v7, [Ljava/lang/String;

    const-string v9, "Loading full size image finished"

    aput-object v9, v1, v6

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_8a
    .catch Ljava/io/InvalidObjectException; {:try_start_74 .. :try_end_8a} :catch_b7
    .catch Ljava/io/FileNotFoundException; {:try_start_74 .. :try_end_8a} :catch_b3
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_8a} :catch_af
    .catch Ljava/lang/IllegalArgumentException; {:try_start_74 .. :try_end_8a} :catch_ac
    .catchall {:try_start_74 .. :try_end_8a} :catchall_a8

    :cond_8a
    if-eqz v8, :cond_176

    .line 151
    :try_start_8c
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8f} :catch_91

    goto/16 :goto_176

    :catch_91
    move-exception p0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_176

    :catchall_a8
    move-exception p0

    move-object v5, v8

    goto/16 :goto_177

    :catch_ac
    move-object p0, v5

    move-object v5, v8

    goto :goto_d5

    :catch_af
    move-object v1, v5

    move-object v5, v8

    goto/16 :goto_fd

    :catch_b3
    move-object v1, v5

    move-object v5, v8

    goto/16 :goto_121

    :catch_b7
    move-exception p0

    move-object v1, v5

    move-object v5, v8

    goto/16 :goto_146

    :catchall_bc
    move-exception p0

    move-object v5, v1

    goto/16 :goto_177

    :catch_c0
    move-object p0, v5

    move-object v5, v1

    goto :goto_d5

    :catch_c3
    move-object v11, v5

    move-object v5, v1

    move-object v1, v11

    goto :goto_fd

    :catch_c7
    move-object v11, v5

    move-object v5, v1

    move-object v1, v11

    goto :goto_121

    :catch_cb
    move-exception p0

    move-object v11, v5

    move-object v5, v1

    move-object v1, v11

    goto/16 :goto_146

    :catchall_d1
    move-exception p0

    goto/16 :goto_177

    :catch_d4
    move-object p0, v5

    .line 147
    :goto_d5
    :try_start_d5
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "Maybe File access error."

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_de
    .catchall {:try_start_d5 .. :try_end_de} :catchall_d1

    if-eqz v5, :cond_f9

    .line 151
    :try_start_e0
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_e3} :catch_e4

    goto :goto_f9

    :catch_e4
    move-exception v1

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f9
    :goto_f9
    move-object v5, p0

    goto/16 :goto_176

    :catch_fc
    move-object v1, v5

    .line 145
    :goto_fd
    :try_start_fd
    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v6

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_113
    .catchall {:try_start_fd .. :try_end_113} :catchall_d1

    if-eqz v5, :cond_175

    .line 151
    :try_start_115
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_118} :catch_119

    goto :goto_175

    :catch_119
    move-exception p0

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_166

    :catch_120
    move-object v1, v5

    .line 143
    :goto_121
    :try_start_121
    new-array v2, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_137
    .catchall {:try_start_121 .. :try_end_137} :catchall_d1

    if-eqz v5, :cond_175

    .line 151
    :try_start_139
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_13c} :catch_13d

    goto :goto_175

    :catch_13d
    move-exception p0

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_166

    :catch_144
    move-exception p0

    move-object v1, v5

    .line 141
    :goto_146
    :try_start_146
    new-array v2, v7, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_15a
    .catchall {:try_start_146 .. :try_end_15a} :catchall_d1

    if-eqz v5, :cond_175

    .line 151
    :try_start_15c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_15f} :catch_160

    goto :goto_175

    :catch_160
    move-exception p0

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_166
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_175
    :goto_175
    move-object v5, v1

    :cond_176
    :goto_176
    return-object v5

    :goto_177
    if-eqz v5, :cond_192

    .line 151
    :try_start_179
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_17c
    .catch Ljava/lang/Exception; {:try_start_179 .. :try_end_17c} :catch_17d

    goto :goto_192

    :catch_17d
    move-exception v1

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    :cond_192
    :goto_192
    throw p0
.end method
