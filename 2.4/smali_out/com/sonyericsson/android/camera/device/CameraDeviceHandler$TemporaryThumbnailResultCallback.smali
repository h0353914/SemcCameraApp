.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$TemporaryThumbnailResultCallback;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/TemporaryThumbnailCapture$ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TemporaryThumbnailResultCallback"
.end annotation


# instance fields
.field final requestId:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;I)V
    .registers 3

    .line 5283
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$TemporaryThumbnailResultCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5284
    iput p2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$TemporaryThumbnailResultCallback;->requestId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;ILcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V
    .registers 4

    .line 5279
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$TemporaryThumbnailResultCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;I)V

    return-void
.end method


# virtual methods
.method public onPreviewThumbnailCreated(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_10

    .line 5290
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$TemporaryThumbnailResultCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1300(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$TemporaryThumbnailResultCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$TemporaryThumbnailResultCallback$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$TemporaryThumbnailResultCallback;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_10
    return-void
.end method
