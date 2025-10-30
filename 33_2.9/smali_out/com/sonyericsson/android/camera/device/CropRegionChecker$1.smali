.class Lcom/sonyericsson/android/camera/device/CropRegionChecker$1;
.super Ljava/lang/Object;
.source "CropRegionChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CropRegionChecker;->check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CropRegionChecker;

.field final synthetic val$isChanged:Z

.field final synthetic val$newRect:Landroid/graphics/Rect;

.field final synthetic val$shouldNotifyCropRegionReady:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CropRegionChecker;ZZLandroid/graphics/Rect;)V
    .registers 5

    .line 94
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker$1;->val$shouldNotifyCropRegionReady:Z

    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker$1;->val$isChanged:Z

    iput-object p4, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker$1;->val$newRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 97
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker$1;->val$shouldNotifyCropRegionReady:Z

    if-eqz v0, :cond_d

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    # getter for: Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CropRegionCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->access$000(Lcom/sonyericsson/android/camera/device/CropRegionChecker;)Lcom/sonyericsson/android/camera/device/CameraController$CropRegionCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/device/CameraController$CropRegionCallback;->onCropRegionReady()V

    .line 101
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    # getter for: Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mIsRequestApplied:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->access$100(Lcom/sonyericsson/android/camera/device/CropRegionChecker;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker$1;->val$isChanged:Z

    if-eqz v0, :cond_37

    .line 106
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker$1;->val$newRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->setCropRegion(Landroid/graphics/Rect;)V

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/CropRegionChecker;

    # getter for: Lcom/sonyericsson/android/camera/device/CropRegionChecker;->mCallback:Lcom/sonyericsson/android/camera/device/CameraController$CropRegionCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CropRegionChecker;->access$000(Lcom/sonyericsson/android/camera/device/CropRegionChecker;)Lcom/sonyericsson/android/camera/device/CameraController$CropRegionCallback;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CropRegionChecker$1;->val$newRect:Landroid/graphics/Rect;

    invoke-direct {v1, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraController$CropRegionCallback;->onCropRegionChanged(Landroid/graphics/Rect;)V

    :cond_37
    return-void
.end method
