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

    if-nez p2, :cond_a6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 226
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_c} :catch_8d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_73

    const/4 v2, 0x0

    .line 227
    :try_start_d
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_12} :catch_60
    .catchall {:try_start_d .. :try_end_12} :catchall_5e

    if-eqz p1, :cond_28

    const/16 v4, 0x400

    .line 229
    :try_start_16
    new-array v4, v4, [B

    .line 231
    :goto_18
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_28

    .line 232
    invoke-virtual {v3, v4, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_18

    :catchall_23
    move-exception v4

    move-object v5, v2

    goto :goto_4d

    :catch_26
    move-exception v4

    goto :goto_48

    .line 235
    :cond_28
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_2c} :catch_26
    .catchall {:try_start_16 .. :try_end_2c} :catchall_23

    if-eqz v3, :cond_3a

    .line 236
    :try_start_2e
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_31} :catch_36
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_3a

    :catchall_32
    move-exception p2

    move-object v3, p2

    move-object p2, v4

    goto :goto_62

    :catch_36
    move-exception p2

    move-object v2, p2

    move-object p2, v4

    goto :goto_61

    :cond_3a
    :goto_3a
    if-eqz p1, :cond_46

    :try_start_3c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_3c .. :try_end_3f} :catch_43
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_46

    :catch_40
    move-exception p1

    move-object p2, v4

    goto :goto_74

    :catch_43
    move-exception p1

    move-object p2, v4

    goto :goto_8e

    :cond_46
    :goto_46
    move-object p2, v4

    goto :goto_a6

    .line 226
    :goto_48
    :try_start_48
    throw v4
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_4d
    if-eqz v3, :cond_5d

    if-eqz v5, :cond_5a

    .line 236
    :try_start_51
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_54} :catch_55
    .catchall {:try_start_51 .. :try_end_54} :catchall_5e

    goto :goto_5d

    :catch_55
    move-exception v3

    :try_start_56
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5d

    :cond_5a
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_5d
    :goto_5d
    throw v4
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_5e} :catch_60
    .catchall {:try_start_56 .. :try_end_5e} :catchall_5e

    :catchall_5e
    move-exception v3

    goto :goto_62

    :catch_60
    move-exception v2

    .line 226
    :goto_61
    :try_start_61
    throw v2
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_5e

    :goto_62
    if-eqz p1, :cond_72

    if-eqz v2, :cond_6f

    .line 236
    :try_start_66
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_69} :catch_6a
    .catch Ljava/io/FileNotFoundException; {:try_start_66 .. :try_end_69} :catch_8d
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_73

    goto :goto_72

    :catch_6a
    move-exception p1

    :try_start_6b
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_72

    :cond_6f
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_72
    :goto_72
    throw v3
    :try_end_73
    .catch Ljava/io/FileNotFoundException; {:try_start_6b .. :try_end_73} :catch_8d
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_73} :catch_73

    :catch_73
    move-exception p1

    .line 239
    :goto_74
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

    goto :goto_a6

    :catch_8d
    move-exception p1

    .line 237
    :goto_8e
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

    .line 242
    :cond_a6
    :goto_a6
    invoke-static {p0, p2, p3}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->getPreviewBmp(Landroid/content/Context;[BZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static getPreviewBmp(Landroid/content/Context;[BZ)Landroid/graphics/Bitmap;
    .registers 11

    if-eqz p1, :cond_f5

    .line 255
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 257
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 258
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 259
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 260
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 265
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 268
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isTablet(Landroid/content/Context;)Z

    move-result p0

    const/4 v6, 0x3

    const/4 v7, 0x4

    if-eqz p0, :cond_58

    .line 269
    invoke-static {v1, v1}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result p0

    if-eqz p0, :cond_34

    const p0, 0x7f070056

    .line 270
    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const v6, 0x7f070058

    .line 272
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_90

    .line 274
    :cond_34
    invoke-static {v7, v6}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result p0

    if-eqz p0, :cond_49

    const p0, 0x7f07005a

    .line 275
    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const v6, 0x7f07005c

    .line 277
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_90

    :cond_49
    const p0, 0x7f070052

    .line 280
    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const v6, 0x7f070054

    .line 282
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_90

    .line 286
    :cond_58
    invoke-static {v1, v1}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result p0

    if-eqz p0, :cond_6d

    const p0, 0x7f070055

    .line 287
    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const v6, 0x7f070057

    .line 289
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_90

    .line 291
    :cond_6d
    invoke-static {v7, v6}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result p0

    if-eqz p0, :cond_82

    const p0, 0x7f070059

    .line 292
    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const v6, 0x7f07005b

    .line 294
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_90

    :cond_82
    const p0, 0x7f070051

    .line 297
    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const v6, 0x7f070053

    .line 299
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    :goto_90
    if-ge v2, v4, :cond_9c

    int-to-float v2, v2

    int-to-float p0, p0

    div-float/2addr v2, p0

    .line 306
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_a7

    :cond_9c
    if-ge v4, v2, :cond_a7

    int-to-float p0, v4

    int-to-float v2, v5

    div-float/2addr p0, v2

    .line 308
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 312
    :cond_a7
    :goto_a7
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 313
    sget-object p0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object p0, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 314
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 315
    array-length p0, p1

    invoke-static {p1, v3, p0, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_bd

    if-eqz p2, :cond_f6

    .line 319
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->reversePreviewBmp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_f6

    .line 322
    :cond_bd
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

    goto :goto_f6

    :cond_f5
    const/4 p0, 0x0

    :cond_f6
    :goto_f6
    return-object p0
.end method

.method private static isPreviewAspectRatio(II)Z
    .registers 7

    .line 356
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v0

    .line 358
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_24

    .line 360
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/2addr v1, p0

    .line 361
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p0

    mul-int/2addr p0, p1

    if-ne v1, p0, :cond_31

    :goto_22
    move v3, v4

    goto :goto_31

    .line 363
    :cond_24
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/2addr v1, p1

    .line 364
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    mul-int/2addr p1, p0

    if-ne v1, p1, :cond_31

    goto :goto_22

    :cond_31
    :goto_31
    return v3
.end method

.method private static isTablet(Landroid/content/Context;)Z
    .registers 1

    .line 370
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->isTablet(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static reversePreviewBmp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 8

    .line 337
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 338
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 340
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 341
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 343
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 344
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method private startTimer(J)V
    .registers 13

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->stopTimer()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_22

    .line 155
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

    .line 156
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->start()V

    :cond_22
    return-void
.end method

.method private stopTimer()V
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    if-eqz v0, :cond_c

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->cancel()V

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    :cond_c
    return-void
.end method

.method private update(Landroid/net/Uri;[BZ)V
    .registers 5

    .line 212
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->convertBitmap(Landroid/content/Context;Landroid/net/Uri;[BZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 215
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    if-eqz p2, :cond_18

    .line 216
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    sget-object p3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 217
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_18
    return-void
.end method


# virtual methods
.method public hide()V
    .registers 3

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_14

    .line 146
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 148
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->stopTimer()V

    :cond_14
    return-void
.end method

.method public isShowing()Z
    .registers 3

    .line 378
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 379
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1

    :cond_f
    return v1
.end method

.method public onReceive(Lcom/sonyericsson/android/camera/view/AutoReviewContent;)V
    .registers 10

    .line 169
    iget-object v0, p1, Lcom/sonyericsson/android/camera/view/AutoReviewContent;->mEventListener:Lcom/sonyericsson/android/camera/view/AutoReviewController$OnAutoReviewEventListener;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mListener:Lcom/sonyericsson/android/camera/view/AutoReviewController$OnAutoReviewEventListener;

    .line 170
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/view/AutoReviewContent;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v3, p1, Lcom/sonyericsson/android/camera/view/AutoReviewContent;->mUri:Landroid/net/Uri;

    iget-object v4, p1, Lcom/sonyericsson/android/camera/view/AutoReviewContent;->mData:[B

    iget-boolean v5, p1, Lcom/sonyericsson/android/camera/view/AutoReviewContent;->mIsReverse:Z

    iget-wide v6, p1, Lcom/sonyericsson/android/camera/view/AutoReviewContent;->mDuration:J

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->show(Landroid/net/Uri;[BZJ)V

    return-void
.end method

.method public setup()V
    .registers 11

    .line 63
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isTablet(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v0, :cond_6a

    .line 64
    invoke-static {v3, v3}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v4, 0x7f090036

    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v4, 0x7f090030

    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    goto/16 :goto_c6

    .line 67
    :cond_2d
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v4, 0x7f090038

    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v4, 0x7f090032

    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    goto/16 :goto_c6

    .line 71
    :cond_4f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v4, 0x7f090034

    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v4, 0x7f09002e

    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    goto :goto_c6

    .line 75
    :cond_6a
    invoke-static {v3, v3}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v4, 0x7f090035

    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v4, 0x7f09002f

    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    goto :goto_c6

    .line 78
    :cond_8b
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v4, 0x7f090037

    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v4, 0x7f090031

    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    goto :goto_c6

    .line 82
    :cond_ac
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v4, 0x7f090033

    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v4, 0x7f09002d

    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    .line 87
    :goto_c6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 90
    iget v5, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    sget v6, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    if-le v5, v6, :cond_131

    .line 91
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 94
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v6

    sget-object v7, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    const v8, 0x7f07005e

    const v9, 0x7f070065

    if-ne v6, v7, :cond_ff

    .line 96
    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 97
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    .line 99
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v4, v6

    goto :goto_10f

    .line 101
    :cond_ff
    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 102
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    .line 104
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v4, v6

    .line 107
    :goto_10f
    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 108
    invoke-static {v3, v3}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result v3

    if-eqz v3, :cond_11a

    .line 109
    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_12c

    .line 110
    :cond_11a
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isPreviewAspectRatio(II)Z

    move-result v3

    if-eqz v3, :cond_125

    mul-int/2addr v2, v4

    .line 111
    div-int/2addr v2, v1

    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_12c

    :cond_125
    const/16 v1, 0x10

    mul-int/2addr v1, v4

    .line 113
    div-int/lit8 v1, v1, 0x9

    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 115
    :goto_12c
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_131
    const v1, 0x7f0f005a

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mBaseLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->addViewFinderGestureDetectorExclusiveView(Landroid/view/View;)V

    return-void
.end method

.method public show(Landroid/net/Uri;[BZJ)V
    .registers 7

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_16

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->update(Landroid/net/Uri;[BZ)V

    .line 135
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mContainer:Landroid/widget/RelativeLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 136
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController;->mImageView:Landroid/widget/ImageView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 137
    invoke-direct {p0, p4, p5}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->startTimer(J)V

    :cond_16
    return-void
.end method
