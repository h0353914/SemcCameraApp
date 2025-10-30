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

    .line 236
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_c} :catch_77
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_5d

    const/4 v2, 0x0

    .line 237
    :try_start_d
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_12} :catch_4a
    .catchall {:try_start_d .. :try_end_12} :catchall_48

    if-eqz p1, :cond_23

    const/16 v4, 0x400

    .line 239
    :try_start_16
    new-array v4, v4, [B

    .line 241
    :goto_18
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_23

    .line 242
    invoke-virtual {v3, v4, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_18

    .line 245
    :cond_23
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_27} :catch_33
    .catchall {:try_start_16 .. :try_end_27} :catchall_30

    .line 246
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

    .line 236
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

    .line 246
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

    .line 236
    :try_start_4b
    throw v2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_48

    :goto_4c
    if-eqz p1, :cond_5c

    if-eqz v2, :cond_59

    .line 246
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

    .line 249
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

    .line 252
    :cond_90
    :goto_90
    invoke-static {p0, p2, p3}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->getPreviewBmp(Landroid/content/Context;[BZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static getPreviewBmp(Landroid/content/Context;[BZ)Landroid/graphics/Bitmap;
    .registers 11

    if-eqz p1, :cond_127

    .line 265
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 267
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 268
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 269
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 270
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 278
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isTablet(Landroid/content/Context;)Z

    move-result p0

    const/4 v6, 0x3

    const/4 v7, 0x4

    if-eqz p0, :cond_5a

    .line 279
    invoke-static {v1, v1}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result p0

    if-eqz p0, :cond_35

    const p0, 0x7f07005e

    .line 280
    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const v6, 0x7f070060

    .line 282
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto/16 :goto_c2

    .line 284
    :cond_35
    invoke-static {v7, v6}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result p0

    if-eqz p0, :cond_4b

    const p0, 0x7f070064

    .line 285
    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const v6, 0x7f070066

    .line 287
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto/16 :goto_c2

    :cond_4b
    const p0, 0x7f070058

    .line 290
    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const v6, 0x7f07005a

    .line 292
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_c2

    .line 296
    :cond_5a
    invoke-static {v1, v1}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result p0

    if-eqz p0, :cond_6f

    const p0, 0x7f07005d

    .line 297
    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const v6, 0x7f07005f

    .line 299
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_c2

    .line 301
    :cond_6f
    invoke-static {v7, v6}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result p0

    if-eqz p0, :cond_84

    const p0, 0x7f070063

    .line 302
    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const v6, 0x7f070065

    .line 304
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_c2

    :cond_84
    const/16 p0, 0x10

    const/16 v6, 0x9

    .line 306
    invoke-static {p0, v6}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result p0

    if-eqz p0, :cond_9d

    const p0, 0x7f070057

    .line 307
    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const v6, 0x7f070059

    .line 309
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_c2

    :cond_9d
    const/16 p0, 0x12

    .line 311
    invoke-static {p0, v6}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result p0

    if-eqz p0, :cond_b4

    const p0, 0x7f07005b

    .line 312
    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const v6, 0x7f07005c

    .line 314
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_c2

    :cond_b4
    const p0, 0x7f070061

    .line 317
    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const v6, 0x7f070062

    .line 319
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    :goto_c2
    if-ge v2, v4, :cond_ce

    int-to-float v2, v2

    int-to-float p0, p0

    div-float/2addr v2, p0

    .line 326
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_d9

    :cond_ce
    if-ge v4, v2, :cond_d9

    int-to-float p0, v4

    int-to-float v2, v5

    div-float/2addr p0, v2

    .line 328
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 332
    :cond_d9
    :goto_d9
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 333
    sget-object p0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object p0, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 334
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 335
    array-length p0, p1

    invoke-static {p1, v3, p0, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_ef

    if-eqz p2, :cond_128

    .line 339
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->reversePreviewBmp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_128

    .line 342
    :cond_ef
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

    goto :goto_128

    :cond_127
    const/4 p0, 0x0

    :cond_128
    :goto_128
    return-object p0
.end method

.method private static isPreviewAspectRatio(II)Z
    .registers 7

    .line 376
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v0

    .line 378
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_25

    .line 380
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/2addr v1, p0

    .line 381
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p0

    mul-int/2addr p0, p1

    if-ne v1, p0, :cond_23

    goto :goto_33

    :cond_23
    move v3, v4

    goto :goto_33

    .line 383
    :cond_25
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/2addr v1, p1

    .line 384
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

    .line 390
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->isTablet(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static reversePreviewBmp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 8

    .line 357
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 358
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 360
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 361
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 363
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 364
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method private startTimer(J)V
    .registers 13

    .line 163
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->stopTimer()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_22

    .line 165
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

    .line 166
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->start()V

    :cond_22
    return-void
.end method

.method private stopTimer()V
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    if-eqz v0, :cond_a

    .line 172
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->cancel()V

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    :cond_a
    return-void
.end method

.method private update(Landroid/net/Uri;[BZ)V
    .registers 5

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->convertBitmap(Landroid/content/Context;Landroid/net/Uri;[BZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 225
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    if-eqz p2, :cond_16

    .line 226
    sget-object p3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 227
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_16
    return-void
.end method


# virtual methods
.method public hide()V
    .registers 3

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_12

    const/16 v1, 0x8

    .line 156
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 158
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->stopTimer()V

    :cond_12
    return-void
.end method

.method public isShowing()Z
    .registers 3

    .line 398
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 399
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

    .line 179
    iget-object v0, p1, Lcom/sonyericsson/android/camera/view/AutoReviewContent;->mEventListener:Lcom/sonyericsson/android/camera/view/AutoReviewController$OnAutoReviewEventListener;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mListener:Lcom/sonyericsson/android/camera/view/AutoReviewController$OnAutoReviewEventListener;

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/view/AutoReviewContent;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v3, p1, Lcom/sonyericsson/android/camera/view/AutoReviewContent;->mUri:Landroid/net/Uri;

    iget-object v4, p1, Lcom/sonyericsson/android/camera/view/AutoReviewContent;->mData:[B

    iget-boolean v5, p1, Lcom/sonyericsson/android/camera/view/AutoReviewContent;->mIsReverse:Z

    iget-wide v6, p1, Lcom/sonyericsson/android/camera/view/AutoReviewContent;->mDuration:J

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->show(Landroid/net/Uri;[BZJ)V

    return-void
.end method

.method public setup()V
    .registers 14

    .line 63
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isTablet(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x12

    const/16 v2, 0x10

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/16 v6, 0x9

    if-eqz v0, :cond_71

    .line 64
    invoke-static {v5, v5}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v7, 0x7f090038

    invoke-virtual {v0, v7}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v7, 0x7f090030

    invoke-virtual {v0, v7}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    goto/16 :goto_110

    .line 67
    :cond_33
    invoke-static {v4, v3}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v7, 0x7f09003b

    invoke-virtual {v0, v7}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v7, 0x7f090033

    invoke-virtual {v0, v7}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    goto/16 :goto_110

    .line 71
    :cond_55
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v7, 0x7f090035

    invoke-virtual {v0, v7}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v7, 0x7f09002d

    invoke-virtual {v0, v7}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    goto/16 :goto_110

    .line 75
    :cond_71
    invoke-static {v5, v5}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v7, 0x7f090037

    invoke-virtual {v0, v7}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v7, 0x7f09002f

    invoke-virtual {v0, v7}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    goto/16 :goto_110

    .line 78
    :cond_93
    invoke-static {v4, v3}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v7, 0x7f09003a

    invoke-virtual {v0, v7}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v7, 0x7f090032

    invoke-virtual {v0, v7}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    goto :goto_110

    .line 81
    :cond_b4
    invoke-static {v2, v6}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v7, 0x7f090034

    invoke-virtual {v0, v7}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v7, 0x7f09002c

    invoke-virtual {v0, v7}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    goto :goto_110

    .line 84
    :cond_d5
    invoke-static {v1, v6}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v7, 0x7f090036

    invoke-virtual {v0, v7}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v7, 0x7f09002e

    invoke-virtual {v0, v7}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    goto :goto_110

    .line 88
    :cond_f6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v7, 0x7f090039

    invoke-virtual {v0, v7}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v7, 0x7f090031

    invoke-virtual {v0, v7}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    .line 93
    :goto_110
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 96
    iget v8, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    sget v9, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    if-le v8, v9, :cond_18f

    .line 97
    iget-object v8, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 100
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v9

    sget-object v10, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    const v11, 0x7f070068

    const v12, 0x7f070070

    if-ne v9, v10, :cond_149

    .line 102
    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 103
    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    sub-int/2addr v7, v9

    div-int/lit8 v7, v7, 0x2

    .line 105
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v7, v9

    goto :goto_159

    .line 107
    :cond_149
    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 108
    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    sub-int/2addr v7, v9

    div-int/lit8 v7, v7, 0x2

    .line 110
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v7, v9

    .line 113
    :goto_159
    iput v7, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 114
    invoke-static {v5, v5}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result v5

    if-eqz v5, :cond_164

    .line 115
    iput v7, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_18a

    .line 116
    :cond_164
    invoke-static {v4, v3}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result v5

    if-eqz v5, :cond_16f

    mul-int/2addr v7, v4

    .line 117
    div-int/2addr v7, v3

    iput v7, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_18a

    .line 118
    :cond_16f
    invoke-static {v2, v6}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result v3

    if-eqz v3, :cond_17a

    mul-int/2addr v7, v2

    .line 119
    div-int/2addr v7, v6

    iput v7, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_18a

    .line 120
    :cond_17a
    invoke-static {v1, v6}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result v2

    if-eqz v2, :cond_185

    mul-int/2addr v7, v1

    .line 121
    div-int/2addr v7, v6

    iput v7, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_18a

    :cond_185
    mul-int/lit8 v7, v7, 0x15

    .line 123
    div-int/2addr v7, v6

    iput v7, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 125
    :goto_18a
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_18f
    const v1, 0x7f0f005a

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mBaseLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->addViewFinderGestureDetectorExclusiveView(Landroid/view/View;)V

    return-void
.end method

.method public show(Landroid/net/Uri;[BZJ)V
    .registers 7

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_16

    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->update(Landroid/net/Uri;[BZ)V

    .line 145
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 146
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 147
    invoke-direct {p0, p4, p5}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->startTimer(J)V

    :cond_16
    return-void
.end method
