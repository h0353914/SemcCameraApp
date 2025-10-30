.class public Lcom/sonyericsson/android/camera/view/AutoReviewController;
.super Ljava/lang/Object;
.source "AutoReviewController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/AutoReviewContent$ContentReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/AutoReviewController$OnAutoReviewEventListener;,
        Lcom/sonyericsson/android/camera/view/AutoReviewController$PreviewTimerHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoReviewController"


# instance fields
.field private final mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

.field private final mBaseLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mImageView:Landroid/widget/ImageView;

.field private mListener:Lcom/sonyericsson/android/camera/view/AutoReviewController$OnAutoReviewEventListener;

.field private mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    check-cast p1, Lcom/sonyericsson/android/camera/CameraActivity;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 55
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mBaseLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/AutoReviewController;)Lcom/sonyericsson/android/camera/view/AutoReviewController$OnAutoReviewEventListener;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mListener:Lcom/sonyericsson/android/camera/view/AutoReviewController$OnAutoReviewEventListener;

    return-object p0
.end method

.method public static convertBitmap(Landroid/content/Context;Landroid/net/Uri;[BZ)Landroid/graphics/Bitmap;
    .registers 12

    if-nez p2, :cond_90

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 234
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_c} :catch_77
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_5d

    const/4 v2, 0x0

    .line 235
    :try_start_d
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_12} :catch_4a
    .catchall {:try_start_d .. :try_end_12} :catchall_48

    if-eqz p1, :cond_23

    const/16 v4, 0x400

    .line 237
    :try_start_16
    new-array v4, v4, [B

    .line 239
    :goto_18
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_23

    .line 240
    invoke-virtual {v3, v4, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_18

    .line 243
    :cond_23
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_27} :catch_33
    .catchall {:try_start_16 .. :try_end_27} :catchall_30

    .line 244
    :try_start_27
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2a} :catch_4a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_48

    if-eqz p1, :cond_90

    :try_start_2c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_2f} :catch_77
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_5d

    goto :goto_90

    :catchall_30
    move-exception v4

    move-object v5, v2

    goto :goto_39

    :catch_33
    move-exception v4

    .line 234
    :try_start_34
    throw v4
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_35

    :catchall_35
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_39
    if-eqz v5, :cond_44

    .line 244
    :try_start_3b
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3e} :catch_3f
    .catchall {:try_start_3b .. :try_end_3e} :catchall_48

    goto :goto_47

    :catch_3f
    move-exception v3

    :try_start_40
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_47

    :cond_44
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    :goto_47
    throw v4
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_48} :catch_4a
    .catchall {:try_start_40 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception v3

    goto :goto_4c

    :catch_4a
    move-exception v2

    .line 234
    :try_start_4b
    throw v2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_48

    :goto_4c
    if-eqz p1, :cond_5c

    if-eqz v2, :cond_59

    .line 244
    :try_start_50
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_53} :catch_54
    .catch Ljava/io/FileNotFoundException; {:try_start_50 .. :try_end_53} :catch_77
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_5d

    goto :goto_5c

    :catch_54
    move-exception p1

    :try_start_55
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5c

    :cond_59
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_5c
    :goto_5c
    throw v3
    :try_end_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_55 .. :try_end_5d} :catch_77
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5d} :catch_5d

    :catch_5d
    move-exception p1

    .line 247
    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load of auto review image is failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_90

    :catch_77
    move-exception p1

    .line 245
    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load of auto review image is failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 250
    :cond_90
    :goto_90
    invoke-static {p0, p2, p3}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->getPreviewBmp(Landroid/content/Context;[BZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static getPreviewBmp(Landroid/content/Context;[BZ)Landroid/graphics/Bitmap;
    .registers 13

    if-eqz p1, :cond_125

    .line 263
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 265
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 266
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 267
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 268
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 276
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isTablet(Landroid/content/Context;)Z

    move-result p0

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/16 v8, 0x9

    const/16 v9, 0x15

    if-eqz p0, :cond_73

    .line 277
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result p0

    if-eqz p0, :cond_39

    const p0, 0x7f070058

    .line 278
    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const v6, 0x7f07005a

    .line 280
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto/16 :goto_c0

    .line 282
    :cond_39
    invoke-static {v1, v1}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result p0

    if-eqz p0, :cond_4f

    const p0, 0x7f070054

    .line 283
    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const v6, 0x7f070056

    .line 285
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto/16 :goto_c0

    .line 287
    :cond_4f
    invoke-static {v7, v6}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result p0

    if-eqz p0, :cond_64

    const p0, 0x7f07005c

    .line 288
    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const v6, 0x7f07005e

    .line 290
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_c0

    :cond_64
    const p0, 0x7f070050

    .line 293
    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const v6, 0x7f070052

    .line 295
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_c0

    .line 299
    :cond_73
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result p0

    if-eqz p0, :cond_88

    const p0, 0x7f070057

    .line 300
    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const v6, 0x7f070059

    .line 302
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_c0

    .line 304
    :cond_88
    invoke-static {v1, v1}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result p0

    if-eqz p0, :cond_9d

    const p0, 0x7f070053

    .line 305
    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const v6, 0x7f070055

    .line 307
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_c0

    .line 309
    :cond_9d
    invoke-static {v7, v6}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result p0

    if-eqz p0, :cond_b2

    const p0, 0x7f07005b

    .line 310
    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const v6, 0x7f07005d

    .line 312
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_c0

    :cond_b2
    const p0, 0x7f07004f

    .line 315
    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const v6, 0x7f070051

    .line 317
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    :goto_c0
    if-ge v2, v4, :cond_cc

    int-to-float v2, v2

    int-to-float p0, p0

    div-float/2addr v2, p0

    .line 324
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_d7

    :cond_cc
    if-ge v4, v2, :cond_d7

    int-to-float p0, v4

    int-to-float v2, v5

    div-float/2addr p0, v2

    .line 326
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 330
    :cond_d7
    :goto_d7
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 331
    sget-object p0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object p0, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 332
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 333
    array-length p0, p1

    invoke-static {p1, v3, p0, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_ed

    if-eqz p2, :cond_126

    .line 337
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->reversePreviewBmp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_126

    .line 340
    :cond_ed
    new-array p2, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decodeByteArray failed. mImageData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", outSize: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", inSampleSize: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v3

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_126

    :cond_125
    const/4 p0, 0x0

    :cond_126
    :goto_126
    return-object p0
.end method

.method private static isPreviewAspectRatio(II)Z
    .registers 7

    .line 374
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v0

    .line 376
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_25

    .line 378
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/2addr v1, p0

    .line 379
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p0

    mul-int/2addr p0, p1

    if-ne v1, p0, :cond_23

    goto :goto_33

    :cond_23
    move v3, v4

    goto :goto_33

    .line 381
    :cond_25
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/2addr v1, p1

    .line 382
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    mul-int/2addr p1, p0

    if-ne v1, p1, :cond_32

    goto :goto_33

    :cond_32
    move v3, v4

    :goto_33
    return v3
.end method

.method private static isTablet(Landroid/content/Context;)Z
    .registers 1

    .line 388
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->isTablet(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static reversePreviewBmp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 8

    .line 355
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 356
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 358
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 359
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 361
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 362
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method private startTimer(J)V
    .registers 13

    .line 161
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->stopTimer()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_22

    .line 163
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    new-instance v6, Lcom/sonyericsson/android/camera/view/AutoReviewController$PreviewTimerHandler;

    const/4 v1, 0x0

    invoke-direct {v6, p0, v1}, Lcom/sonyericsson/android/camera/view/AutoReviewController$PreviewTimerHandler;-><init>(Lcom/sonyericsson/android/camera/view/AutoReviewController;Lcom/sonyericsson/android/camera/view/AutoReviewController$1;)V

    const-string v7, "AutoReviewController"

    const-wide/16 v8, 0x0

    move-object v1, v0

    move-wide v2, p1

    move-wide v4, p1

    invoke-direct/range {v1 .. v9}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;-><init>(JJLandroid/os/Handler;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    .line 164
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->start()V

    :cond_22
    return-void
.end method

.method private stopTimer()V
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    if-eqz v0, :cond_a

    .line 170
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->cancel()V

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    :cond_a
    return-void
.end method

.method private update(Landroid/net/Uri;[BZ)V
    .registers 5

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->convertBitmap(Landroid/content/Context;Landroid/net/Uri;[BZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 223
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    if-eqz p2, :cond_16

    .line 224
    sget-object p3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 225
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_16
    return-void
.end method


# virtual methods
.method public hide()V
    .registers 3

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_12

    const/16 v1, 0x8

    .line 154
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 156
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->stopTimer()V

    :cond_12
    return-void
.end method

.method public isShowing()Z
    .registers 3

    .line 396
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 397
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1

    :cond_d
    return v1
.end method

.method public onReceive(Lcom/sonyericsson/android/camera/view/AutoReviewContent;)V
    .registers 10

    .line 177
    iget-object v0, p1, Lcom/sonyericsson/android/camera/view/AutoReviewContent;->mEventListener:Lcom/sonyericsson/android/camera/view/AutoReviewController$OnAutoReviewEventListener;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mListener:Lcom/sonyericsson/android/camera/view/AutoReviewController$OnAutoReviewEventListener;

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/view/AutoReviewContent;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v3, p1, Lcom/sonyericsson/android/camera/view/AutoReviewContent;->mUri:Landroid/net/Uri;

    iget-object v4, p1, Lcom/sonyericsson/android/camera/view/AutoReviewContent;->mData:[B

    iget-boolean v5, p1, Lcom/sonyericsson/android/camera/view/AutoReviewContent;->mIsReverse:Z

    iget-wide v6, p1, Lcom/sonyericsson/android/camera/view/AutoReviewContent;->mDuration:J

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->show(Landroid/net/Uri;[BZJ)V

    return-void
.end method

.method public setup()V
    .registers 13

    .line 63
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isTablet(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/16 v3, 0x15

    const/16 v4, 0x9

    const/4 v5, 0x1

    if-eqz v0, :cond_91

    .line 64
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v6, 0x7f090037

    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v6, 0x7f09002f

    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    goto/16 :goto_10e

    .line 67
    :cond_31
    invoke-static {v5, v5}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v6, 0x7f090035

    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v6, 0x7f09002d

    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    goto/16 :goto_10e

    .line 70
    :cond_53
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 71
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v6, 0x7f090039

    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v6, 0x7f090031

    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    goto/16 :goto_10e

    .line 74
    :cond_75
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v6, 0x7f090033

    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v6, 0x7f09002b

    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    goto/16 :goto_10e

    .line 78
    :cond_91
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v6, 0x7f090036

    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v6, 0x7f09002e

    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    goto :goto_10e

    .line 81
    :cond_b2
    invoke-static {v5, v5}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v6, 0x7f090034

    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v6, 0x7f09002c

    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    goto :goto_10e

    .line 84
    :cond_d3
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v6, 0x7f090038

    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v6, 0x7f090030

    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    goto :goto_10e

    .line 88
    :cond_f4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v6, 0x7f090032

    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v6, 0x7f09002a

    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    .line 93
    :goto_10e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 96
    iget v7, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    sget v8, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    if-le v7, v8, :cond_182

    .line 97
    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 100
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v8

    sget-object v9, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    const v10, 0x7f070060

    const v11, 0x7f070067

    if-ne v8, v9, :cond_147

    .line 102
    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 103
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sub-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    .line 105
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v6, v8

    goto :goto_157

    .line 107
    :cond_147
    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 108
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sub-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    .line 110
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v6, v8

    .line 113
    :goto_157
    iput v6, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 114
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result v8

    if-eqz v8, :cond_164

    mul-int/2addr v6, v3

    .line 115
    div-int/2addr v6, v4

    iput v6, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_17d

    .line 116
    :cond_164
    invoke-static {v5, v5}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result v3

    if-eqz v3, :cond_16d

    .line 117
    iput v6, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_17d

    .line 118
    :cond_16d
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result v3

    if-eqz v3, :cond_178

    mul-int/2addr v6, v2

    .line 119
    div-int/2addr v6, v1

    iput v6, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_17d

    :cond_178
    mul-int/lit8 v6, v6, 0x10

    .line 121
    div-int/2addr v6, v4

    iput v6, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 123
    :goto_17d
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_182
    const v1, 0x7f0e005a

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 130
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mBaseLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->addViewFinderGestureDetectorExclusiveView(Landroid/view/View;)V

    return-void
.end method

.method public show(Landroid/net/Uri;[BZJ)V
    .registers 7

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_16

    .line 142
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->update(Landroid/net/Uri;[BZ)V

    .line 143
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 144
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 145
    invoke-direct {p0, p4, p5}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->startTimer(J)V

    :cond_16
    return-void
.end method
