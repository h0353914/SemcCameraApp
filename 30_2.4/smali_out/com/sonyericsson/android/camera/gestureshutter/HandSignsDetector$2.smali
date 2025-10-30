.class Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$2;
.super Ljava/lang/Object;
.source "HandSignsDetector.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/PreviewFrameProvider$OnPreviewFrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)V
    .registers 2

    .line 209
    iput-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$2;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Ljava/nio/ByteBuffer;ILandroid/graphics/Rect;)V
    .registers 6

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$2;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    # getter for: Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mDetectContext:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$100(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectContext;

    move-result-object v0

    monitor-enter v0

    .line 214
    :try_start_7
    iget-object v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$2;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    # getter for: Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mIsStarted:Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$200(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 215
    monitor-exit v0

    return-void

    :cond_11
    if-eqz p1, :cond_2d

    const/16 v1, 0x11

    if-ne p2, v1, :cond_2d

    .line 218
    iget-object p2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$2;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    # getter for: Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->mPreviewFrameProvider:Lcom/sonyericsson/android/camera/device/PreviewFrameProvider;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$500(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;)Lcom/sonyericsson/android/camera/device/PreviewFrameProvider;

    move-result-object p2

    invoke-interface {p2, p0}, Lcom/sonyericsson/android/camera/device/PreviewFrameProvider;->unregisterPreviewFrameCallback(Lcom/sonyericsson/android/camera/device/PreviewFrameProvider$OnPreviewFrameCallback;)V

    .line 219
    iget-object p2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$2;->this$0:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    # invokes: Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->postDetect(IILjava/nio/ByteBuffer;)V
    invoke-static {p2, v1, p3, p1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;->access$600(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;IILjava/nio/ByteBuffer;)V

    .line 221
    :cond_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw p1
.end method
