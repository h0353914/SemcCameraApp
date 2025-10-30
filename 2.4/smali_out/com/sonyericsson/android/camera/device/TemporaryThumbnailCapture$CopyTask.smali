.class Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture$CopyTask;
.super Ljava/lang/Object;
.source "TemporaryThumbnailCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CopyTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture$CopyTask;->this$0:Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture$1;)V
    .registers 3

    .line 134
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture$CopyTask;-><init>(Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture$CopyTask;->this$0:Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x30

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    # setter for: Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mCopiedBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->access$102(Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture$CopyTask;->this$0:Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;

    # getter for: Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mSurface:Landroid/view/Surface;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->access$200(Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture$CopyTask;->this$0:Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;

    # getter for: Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mSurface:Landroid/view/Surface;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->access$200(Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_3e

    .line 150
    :cond_22
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture$CopyTask;->this$0:Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;

    .line 151
    # getter for: Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mSurface:Landroid/view/Surface;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->access$200(Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;)Landroid/view/Surface;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture$CopyTask;->this$0:Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;

    .line 152
    # getter for: Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mSurfaceCenterRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->access$300(Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture$CopyTask;->this$0:Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;

    .line 153
    # getter for: Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mCopiedBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->access$100(Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture$CopyTask;->this$0:Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;

    .line 155
    # getter for: Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;->access$400(Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture;)Landroid/os/Handler;

    move-result-object v4

    .line 150
    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    return-void

    :cond_3e
    :goto_3e
    const-string v0, "PixelCopy source Surface is not valid"

    .line 146
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method
