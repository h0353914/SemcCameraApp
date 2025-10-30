.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$TemporaryThumbnailResultCallback$1;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$TemporaryThumbnailResultCallback;->onPreviewThumbnailCreated(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$TemporaryThumbnailResultCallback;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$TemporaryThumbnailResultCallback;Landroid/graphics/Bitmap;)V
    .registers 3

    .line 5291
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$TemporaryThumbnailResultCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$TemporaryThumbnailResultCallback;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$TemporaryThumbnailResultCallback$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 5294
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$TemporaryThumbnailResultCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$TemporaryThumbnailResultCallback;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$TemporaryThumbnailResultCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$3400(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 5295
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$TemporaryThumbnailResultCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$TemporaryThumbnailResultCallback;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$TemporaryThumbnailResultCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$3400(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_TEMPORARY_THUMBNAIL_CREATED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$TemporaryThumbnailResultCallback$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$TemporaryThumbnailResultCallback;

    iget v4, v4, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$TemporaryThumbnailResultCallback;->requestId:I

    .line 5298
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$TemporaryThumbnailResultCallback$1;->val$bitmap:Landroid/graphics/Bitmap;

    aput-object v4, v2, v3

    .line 5295
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    :cond_2a
    return-void
.end method
