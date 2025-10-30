.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureShutterListener"
.end annotation


# instance fields
.field private mGestureShutterView:Lcom/sonyericsson/android/camera/view/GestureShutterView;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .registers 2

    .line 8554
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 8556
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->mGestureShutterView:Lcom/sonyericsson/android/camera/view/GestureShutterView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;)V
    .registers 3

    .line 8554
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    return-void
.end method

.method private setupGestureShutterView()V
    .registers 4

    .line 8610
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->mGestureShutterView:Lcom/sonyericsson/android/camera/view/GestureShutterView;

    if-nez v0, :cond_1c

    .line 8611
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 8613
    new-instance v1, Lcom/sonyericsson/android/camera/view/GestureShutterView;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getActivity()Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$9400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/view/GestureShutterView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->mGestureShutterView:Lcom/sonyericsson/android/camera/view/GestureShutterView;

    .line 8614
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->mGestureShutterView:Lcom/sonyericsson/android/camera/view/GestureShutterView;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/GestureShutterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1c
    return-void
.end method


# virtual methods
.method public getGestureShutterView()Lcom/sonyericsson/android/camera/view/GestureShutterView;
    .registers 2

    .line 8560
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->setupGestureShutterView()V

    .line 8561
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->mGestureShutterView:Lcom/sonyericsson/android/camera/view/GestureShutterView;

    return-object v0
.end method

.method public getLeftIconAreaHeight()I
    .registers 4

    .line 8605
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 8606
    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07010a

    .line 8605
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPreviewOffset()Landroid/graphics/Point;
    .registers 4

    .line 8590
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mEvf:Lcom/sonymobile/cameracommon/evf/Evf;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$2600(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonymobile/cameracommon/evf/Evf;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/cameracommon/evf/Evf;->asView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getPreviewSize()Landroid/graphics/Point;
    .registers 5

    .line 8583
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 8584
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getBaseLayout()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPreview()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 8585
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getBaseLayout()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPreview()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 8583
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getPointAccordingToLayoutOrientation(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getScreenAspect()Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;
    .registers 2

    .line 8595
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$3000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    move-result-object v0

    return-object v0
.end method

.method public getViewFinderSize()Landroid/graphics/Rect;
    .registers 2

    .line 8600
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public hideGestureShutterView()V
    .registers 3

    .line 8575
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->mGestureShutterView:Lcom/sonyericsson/android/camera/view/GestureShutterView;

    if-eqz v0, :cond_13

    .line 8576
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getBaseLayout()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getLazyInflatedUiComponentContainerBack()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->mGestureShutterView:Lcom/sonyericsson/android/camera/view/GestureShutterView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_13
    return-void
.end method

.method public showGestureShutterView()V
    .registers 3

    .line 8566
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->hideGestureShutterView()V

    .line 8567
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->setupGestureShutterView()V

    .line 8568
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getBaseLayout()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getLazyInflatedUiComponentContainerBack()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->mGestureShutterView:Lcom/sonyericsson/android/camera/view/GestureShutterView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 8569
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getBaseLayout()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getLazyInflatedUiComponentContainerBack()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->mGestureShutterView:Lcom/sonyericsson/android/camera/view/GestureShutterView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method
