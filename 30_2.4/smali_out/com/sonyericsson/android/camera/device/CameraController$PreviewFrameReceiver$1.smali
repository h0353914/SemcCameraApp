.class Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$1;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;->onImageAvailable(Landroid/media/ImageReader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

.field final synthetic val$request:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$PreviewFrameRequest;

.field final synthetic val$result:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$PreviewFrameRequest;Landroid/util/Pair;)V
    .registers 4

    .line 2845
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$1;->this$0:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$1;->val$request:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$PreviewFrameRequest;

    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$1;->val$result:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 2848
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$1;->val$request:Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$PreviewFrameRequest;

    if-eqz v0, :cond_17

    .line 2849
    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$PreviewFrameRequest;->callback:Lcom/sonyericsson/android/camera/device/PreviewFrameProvider$OnPreviewFrameCallback;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$1;->val$result:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewFrameReceiver$1;->val$result:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-interface {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/device/PreviewFrameProvider$OnPreviewFrameCallback;->onReceived(Ljava/nio/ByteBuffer;ILandroid/graphics/Rect;)V

    :cond_17
    return-void
.end method
