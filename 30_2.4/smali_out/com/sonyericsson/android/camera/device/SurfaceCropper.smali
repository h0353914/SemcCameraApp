.class public Lcom/sonyericsson/android/camera/device/SurfaceCropper;
.super Ljava/lang/Object;
.source "SurfaceCropper.java"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/SurfaceCropper$OnCropListener;
    }
.end annotation


# static fields
.field private static final FACE_RECT_EXTEND_RATIO_BOTTOM:F = 0.5f

.field private static final FACE_RECT_EXTEND_RATIO_LEFT:F = 0.4f

.field private static final FACE_RECT_EXTEND_RATIO_RIGHT:F = 0.4f

.field private static final FACE_RECT_EXTEND_RATIO_TOP:F = 0.3f


# instance fields
.field private mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

.field private mCropCount:I

.field private mCropListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;",
            ">;",
            "Lcom/sonyericsson/android/camera/device/SurfaceCropper$OnCropListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCropRegion:Landroid/graphics/Rect;

.field private mCropRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDetectionFaceNum:I

.field private mFaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFront:Z

.field private final mLock:Ljava/lang/Object;

.field private mPreviewSize:Landroid/util/Size;

.field private mPreviewSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mCropRequests:Ljava/util/LinkedList;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mCropListeners:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private convertToSurfaceRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 7

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 312
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v0, v2

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v4

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {v1, v2, v3, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 314
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mIsFront:Z

    if-eqz p1, :cond_31

    .line 315
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    .line 317
    new-instance v0, Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v3, p1, v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v1

    invoke-direct {v0, v2, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    :cond_31
    return-object v1
.end method

.method private fillOutOfPreviewArea(Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;)V
    .registers 12

    .line 350
    iget-object v0, p1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;->dest:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 351
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v2, -0x1000000

    .line 352
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 359
    iget-object v2, p1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;->rectOnSurface:Landroid/graphics/Rect;

    .line 360
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 361
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v5, v4

    .line 363
    iget v4, v2, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x0

    if-gez v4, :cond_39

    .line 364
    iget v4, v2, Landroid/graphics/Rect;->left:I

    rsub-int/lit8 v4, v4, 0x0

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    goto :goto_3a

    :cond_39
    move v4, v6

    .line 367
    :goto_3a
    iget v7, v2, Landroid/graphics/Rect;->top:I

    if-gez v7, :cond_46

    .line 368
    iget v7, v2, Landroid/graphics/Rect;->top:I

    rsub-int/lit8 v7, v7, 0x0

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    goto :goto_47

    :cond_46
    move v7, v6

    .line 371
    :goto_47
    iget v8, v2, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    if-le v8, v9, :cond_5e

    .line 372
    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v3, v8

    goto :goto_5f

    :cond_5e
    move v3, v6

    .line 375
    :goto_5f
    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v9

    if-le v8, v9, :cond_76

    .line 376
    iget-object v8, p0, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v2

    int-to-float v2, v8

    mul-float/2addr v2, v5

    float-to-int v2, v2

    goto :goto_77

    :cond_76
    move v2, v6

    .line 380
    :goto_77
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    add-int/2addr v8, v3

    .line 381
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v5, v4, v7, v8, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 382
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 384
    iget-object v3, p1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;->dest:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 385
    iput-object v0, p1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;->dest:Landroid/graphics/Bitmap;

    return-void
.end method

.method private getFaces()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;",
            ">;"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 325
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 326
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mFaces:Ljava/util/List;

    if-eqz v2, :cond_4f

    .line 327
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mFaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;

    .line 328
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 329
    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isAnimalEyeDetectionAvailable(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v4

    if-eqz v4, :cond_4b

    iget-boolean v4, v3, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->isAnimalFace:Z

    if-eqz v4, :cond_4b

    .line 330
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v4, :cond_12

    const/4 v4, 0x1

    .line 331
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Detect animal eyes. face id ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->id:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_12

    .line 335
    :cond_4b
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 338
    :cond_4f
    monitor-exit v0

    return-object v1

    :catchall_51
    move-exception v1

    .line 339
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw v1
.end method

.method private notifyPixelCopyFinished(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;",
            ">;)V"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mCropListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/device/SurfaceCropper$OnCropListener;

    if-eqz v0, :cond_d

    .line 345
    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/device/SurfaceCropper$OnCropListener;->onCrop(Ljava/util/List;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public calculateExtendedFaceRect(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .registers 16

    .line 252
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 253
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v1, v0, v1

    int-to-float v1, v1

    .line 254
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int v2, v0, v2

    int-to-float v2, v2

    .line 256
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-double v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v1, v6

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    sub-double/2addr v4, v9

    double-to-int v1, v4

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-double v4, v4

    div-float/2addr v2, v6

    float-to-double v9, v2

    .line 257
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    sub-double/2addr v4, v11

    double-to-int v2, v4

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-double v4, v4

    .line 258
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-int v4, v4

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-double v5, p1

    .line 259
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    double-to-int p1, v5

    invoke-direct {v3, v1, v2, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 p1, 0x3f000000    # 0.5f

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3ecccccd    # 0.4f

    if-eqz p2, :cond_71

    .line 261
    new-instance p2, Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    int-to-float v0, v0

    mul-float/2addr v1, v0

    sub-float/2addr v4, v1

    float-to-int v1, v4

    iget v4, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v2, v0

    sub-float/2addr v4, v2

    float-to-int v4, v4

    iget v5, v3, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    mul-float/2addr v0, p1

    add-float/2addr v5, v0

    float-to-int p1, v5

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-direct {p2, v1, v4, p1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_8e

    :cond_71
    new-instance p2, Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    int-to-float v0, v0

    mul-float/2addr v2, v0

    sub-float/2addr v4, v2

    float-to-int v4, v4

    iget v5, v3, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v1, v0

    sub-float/2addr v5, v1

    float-to-int v1, v5

    iget v5, v3, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    float-to-int v2, v5

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    mul-float/2addr v0, p1

    add-float/2addr v3, v0

    float-to-int p1, v3

    invoke-direct {p2, v4, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_8e
    return-object p2
.end method

.method public convertActiveArrayRectToTargetSize(Landroid/util/Size;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 9

    .line 199
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 200
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 202
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 203
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v3, v1, v2

    cmpl-float v0, v3, v0

    if-lez v0, :cond_26

    .line 209
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    goto :goto_2c

    .line 212
    :cond_26
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 215
    :goto_2c
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 216
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 218
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    mul-float/2addr v1, v0

    add-float/2addr v3, v1

    .line 219
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 221
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    .line 222
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    mul-float v0, v2, v4

    sub-float/2addr v3, v0

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    .line 226
    new-instance v0, Landroid/graphics/RectF;

    add-float/2addr v2, v3

    add-float/2addr v5, v1

    invoke-direct {v0, v3, v1, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 228
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 229
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 231
    iget v0, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-gt v0, v2, :cond_c2

    iget v0, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    if-gt v0, p1, :cond_c2

    iget p1, v1, Landroid/graphics/Rect;->right:I

    if-ltz p1, :cond_c2

    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    if-gez p1, :cond_8f

    goto :goto_c2

    .line 237
    :cond_8f
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_c1

    const/4 p1, 0x2

    .line 238
    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rect converted; Before:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    const/4 p2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " After:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_c1
    return-object v1

    .line 233
    :cond_c2
    :goto_c2
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_cf

    const-string p1, "Rect on active array is already out from target image."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_cf
    const/4 p1, 0x0

    return-object p1
.end method

.method public onPixelCopyFinished(I)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1c

    .line 276
    new-array v2, v0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute PixelCopy. code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 279
    :cond_1c
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mCropRequests:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_7a

    .line 280
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2d

    goto :goto_7a

    .line 284
    :cond_2d
    sget-object v2, Lcom/sonyericsson/android/camera/device/SurfaceCropper$1;->$SwitchMap$com$sonyericsson$android$camera$faultdetection$FaultDetector$CropInfo$Target:[I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;->target:Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;->ordinal()I

    move-result p1

    aget p1, v2, p1

    packed-switch p1, :pswitch_data_7c

    goto :goto_79

    .line 289
    :pswitch_41
    iget p1, p0, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mCropCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mCropCount:I

    .line 290
    iget p1, p0, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mCropCount:I

    iget v0, p0, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mDetectionFaceNum:I

    if-lt p1, v0, :cond_79

    .line 291
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mCropRequests:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 292
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_58
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;

    .line 293
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->fillOutOfPreviewArea(Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;)V

    goto :goto_58

    .line 295
    :cond_68
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->notifyPixelCopyFinished(Ljava/util/List;)V

    .line 296
    iput v1, p0, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mCropCount:I

    goto :goto_79

    .line 286
    :pswitch_6e
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mCropRequests:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->notifyPixelCopyFinished(Ljava/util/List;)V

    :cond_79
    :goto_79
    return-void

    :cond_7a
    :goto_7a
    return-void

    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_41
    .end packed-switch
.end method

.method public request(Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;ILcom/sonyericsson/android/camera/device/SurfaceCropper$OnCropListener;Landroid/os/Handler;)V
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 113
    iget-object v4, v1, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v4, :cond_11d

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-nez v4, :cond_14

    goto/16 :goto_11d

    .line 117
    :cond_14
    sget-object v4, Lcom/sonyericsson/android/camera/device/SurfaceCropper$1;->$SwitchMap$com$sonyericsson$android$camera$faultdetection$FaultDetector$CropInfo$Target:[I

    iget-object v5, v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;->target:Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_11e

    goto/16 :goto_11c

    .line 133
    :pswitch_23
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->getFaces()Ljava/util/List;

    move-result-object v4

    .line 134
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_37

    .line 137
    invoke-interface {v2, v5}, Lcom/sonyericsson/android/camera/device/SurfaceCropper$OnCropListener;->onCrop(Ljava/util/List;)V

    goto/16 :goto_11c

    .line 141
    :cond_37
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    iput v6, v1, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mDetectionFaceNum:I

    .line 142
    invoke-static/range {p2 .. p2}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getNormalizedRotation(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_4c

    const/16 v9, 0xb4

    if-ne v6, v9, :cond_4a

    goto :goto_4c

    :cond_4a
    move v6, v7

    goto :goto_4d

    :cond_4c
    :goto_4c
    move v6, v8

    .line 145
    :goto_4d
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_51
    :goto_51
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;

    .line 146
    iget-object v10, v1, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mPreviewSize:Landroid/util/Size;

    iget-object v11, v9, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v10, v11}, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->convertActiveArrayRectToTargetSize(Landroid/util/Size;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v10

    if-nez v10, :cond_8b

    .line 149
    sget-boolean v10, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v10, :cond_51

    .line 150
    new-array v10, v8, [Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Face"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v9, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->id:I

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " is in outside of surface."

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v10, v7

    invoke-static {v10}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    goto :goto_51

    .line 154
    :cond_8b
    invoke-virtual {v1, v10, v6}, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->calculateExtendedFaceRect(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v10

    .line 155
    invoke-direct {v1, v10}, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->convertToSurfaceRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v14

    .line 157
    new-instance v10, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;

    iget-object v12, v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;->target:Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;

    iget v13, v9, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->trackingId:I

    iget-object v15, v9, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->rect:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;->dest:Landroid/graphics/Bitmap;

    .line 158
    invoke-static {v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v16

    move-object v11, v10

    invoke-direct/range {v11 .. v16}, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;-><init>(Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo$Target;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V

    .line 159
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :try_start_a8
    iget-object v9, v1, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mPreviewSurface:Landroid/view/Surface;

    iget-object v11, v10, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;->rectOnSurface:Landroid/graphics/Rect;

    iget-object v10, v10, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;->dest:Landroid/graphics/Bitmap;

    invoke-static {v9, v11, v10, v1, v3}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    :try_end_b1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a8 .. :try_end_b1} :catch_b2

    goto :goto_51

    :catch_b2
    move-exception v0

    .line 164
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_bc

    const-string v3, "Surface became to be invalid during copy it."

    .line 165
    invoke-static {v3, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    :cond_bc
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c0
    :goto_c0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_de

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;

    .line 168
    iget-object v4, v3, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;->dest:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_c0

    iget-object v4, v3, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;->dest:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_c0

    .line 169
    iget-object v3, v3, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;->dest:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_c0

    .line 172
    :cond_de
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 177
    :cond_e1
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 178
    invoke-interface {v2, v5}, Lcom/sonyericsson/android/camera/device/SurfaceCropper$OnCropListener;->onCrop(Ljava/util/List;)V

    goto :goto_11c

    .line 180
    :cond_eb
    iget-object v0, v1, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mCropRequests:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 181
    iget-object v0, v1, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mCropListeners:Ljava/util/Map;

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11c

    .line 119
    :pswitch_f6
    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 120
    iget-object v5, v1, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mCropRequests:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 121
    iget-object v5, v1, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mCropListeners:Ljava/util/Map;

    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :try_start_104
    iget-object v2, v1, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mPreviewSurface:Landroid/view/Surface;

    iget-object v4, v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;->rectOnSurface:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;->dest:Landroid/graphics/Bitmap;

    invoke-static {v2, v4, v0, v1, v3}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    :try_end_10d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_104 .. :try_end_10d} :catch_10e

    goto :goto_11c

    :catch_10e
    move-exception v0

    .line 126
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_118

    const-string v2, "Surface became to be invalid during copy it."

    .line 127
    invoke-static {v2, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_118
    const/4 v0, 0x4

    .line 129
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->onPixelCopyFinished(I)V

    :goto_11c
    return-void

    :cond_11d
    :goto_11d
    return-void

    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_f6
        :pswitch_23
    .end packed-switch
.end method

.method public setCameraId(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-void
.end method

.method public setCropRegion(Landroid/graphics/Rect;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mCropRegion:Landroid/graphics/Rect;

    return-void
.end method

.method public setFaces(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;",
            ">;)V"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_3
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mFaces:Ljava/util/List;

    .line 101
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public setIsFront(Z)V
    .registers 2

    .line 61
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mIsFront:Z

    return-void
.end method

.method public setPreviewSurface(Landroid/view/Surface;Landroid/util/Size;)V
    .registers 3

    .line 80
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mPreviewSurface:Landroid/view/Surface;

    .line 81
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/SurfaceCropper;->mPreviewSize:Landroid/util/Size;

    return-void
.end method
