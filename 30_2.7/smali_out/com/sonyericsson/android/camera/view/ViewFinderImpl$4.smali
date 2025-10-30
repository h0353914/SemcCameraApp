.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->notifyOnEvfPrepared(Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

.field final synthetic val$previewRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Landroid/graphics/Rect;)V
    .registers 3

    .line 1355
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;->val$previewRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1359
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;->val$previewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;->val$previewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 1360
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v1

    .line 1361
    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getSizeAccordingToLayoutOrientation(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    .line 1362
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 1363
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 1364
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$2700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 1365
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mFocusRectangles:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$2700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateDevicePreviewSize(II)V

    .line 1367
    :cond_32
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const/4 v3, 0x1

    # setter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mCanFocusRectanglesBeUpdated:Z
    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$2802(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)Z

    .line 1368
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->updateCaptureAreaSize()V

    .line 1369
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setupAutoReview()V
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$2900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 1372
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 1373
    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$3000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    move-result-object v2

    .line 1372
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getSurfaceViewRect(Landroid/content/Context;FLcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1374
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->updateCaptureProgressViewContainerSize(Landroid/graphics/Rect;)V
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$3100(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Landroid/graphics/Rect;)V

    return-void
.end method
