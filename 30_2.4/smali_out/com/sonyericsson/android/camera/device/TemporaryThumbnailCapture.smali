.class public Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;
.super Ljava/lang/Object;
.source "TemporaryThumbnailCapture.java"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture$CopyTask;,
        Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture$ResultCallback;
    }
.end annotation


# static fields
.field private static final TEMPORARY_THUMBNAIL_SIZE:I = 0x30

.field private static final WORKER_THREAD_NAME:Ljava/lang/String; = "PixelCopyWorker"

.field private static final WORKER_THREAD_PRIORITY:I = 0xa


# instance fields
.field private mCallback:Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture$ResultCallback;

.field private mCopiedBitmap:Landroid/graphics/Bitmap;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsFront:Z

.field private mSensorOrientation:I

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceCenterRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;)Landroid/graphics/Bitmap;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mCopiedBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$102(Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mCopiedBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;)Landroid/view/Surface;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;)Landroid/graphics/Rect;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mSurfaceCenterRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;)Landroid/os/Handler;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private static calculateSurfaceCenterRect(II)Landroid/graphics/Rect;
    .registers 5

    if-le p0, p1, :cond_5

    move v2, p1

    move p1, p0

    move p0, v2

    .line 121
    :cond_5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    .line 122
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 123
    iput p0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p0

    .line 124
    div-int/lit8 p1, p1, 0x2

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 125
    iget p1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method


# virtual methods
.method public createThumbnail(ILcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture$ResultCallback;)V
    .registers 4
    .param p2    # Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture$ResultCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 72
    iput p1, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mSensorOrientation:I

    .line 73
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mCallback:Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture$ResultCallback;

    .line 74
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture$CopyTask;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture$CopyTask;-><init>(Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public initialize()V
    .registers 4

    .line 47
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_21

    .line 48
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PixelCopyWorker"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mHandlerThread:Landroid/os/HandlerThread;

    .line 49
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mHandler:Landroid/os/Handler;

    :cond_21
    return-void
.end method

.method public onPixelCopyFinished(I)V
    .registers 10

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mCallback:Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture$ResultCallback;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    if-eqz p1, :cond_27

    const/4 v1, 0x1

    .line 84
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in PixelCopy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mCallback:Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture$ResultCallback;

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture$ResultCallback;->onPreviewThumbnailCreated(Landroid/graphics/Bitmap;)V

    .line 88
    :cond_27
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 89
    iget p1, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mSensorOrientation:I

    const/4 v1, 0x2

    if-ne v1, p1, :cond_36

    const/high16 p1, -0x3d4c0000    # -90.0f

    .line 90
    invoke-virtual {v6, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 92
    :cond_36
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mIsFront:Z

    if-eqz p1, :cond_51

    .line 94
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mCopiedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    div-int/2addr p1, v1

    .line 95
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mCopiedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/2addr v2, v1

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float p1, p1

    int-to-float v2, v2

    .line 96
    invoke-virtual {v6, v1, v3, p1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 99
    :cond_51
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mCopiedBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 101
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mCopiedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    .line 100
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 104
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mCallback:Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture$ResultCallback;

    invoke-interface {v1, p1}, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture$ResultCallback;->onPreviewThumbnailCreated(Landroid/graphics/Bitmap;)V

    .line 105
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mCopiedBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setSurface(Landroid/view/Surface;IIZ)V
    .registers 5

    .line 65
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mSurface:Landroid/view/Surface;

    .line 66
    invoke-static {p2, p3}, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->calculateSurfaceCenterRect(II)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mSurfaceCenterRect:Landroid/graphics/Rect;

    .line 67
    iput-boolean p4, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mIsFront:Z

    return-void
.end method

.method public terminate()V
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_c

    .line 58
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mHandlerThread:Landroid/os/HandlerThread;

    .line 60
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mHandler:Landroid/os/Handler;

    :cond_c
    return-void
.end method
