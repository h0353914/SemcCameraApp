.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomDisplayChangedListenerImpl;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomDisplayChangedListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .registers 2

    .line 9245
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomDisplayChangedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;)V
    .registers 3

    .line 9245
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomDisplayChangedListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    return-void
.end method


# virtual methods
.method public onHiddenZoom()V
    .registers 7

    .line 9262
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomDisplayChangedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getBaseLayout()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$800(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getTopIndicator()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9263
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomDisplayChangedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mSideTouchUi:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$10200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->COVERING:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->detachTo(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 9264
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomDisplayChangedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mSideTouchUi:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$10200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;

    move-result-object v0

    const/4 v2, 0x2

    new-array v3, v2, [Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    sget-object v4, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->RECORDING:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    aput-object v4, v3, v1

    sget-object v4, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->RECORDING_HDR:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 9265
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->containsIn([Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 9266
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomDisplayChangedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object v3, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;Z)V
    invoke-static {v0, v3, v5}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$10300(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;Z)V

    .line 9268
    :cond_3b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomDisplayChangedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mSideTouchUi:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$10200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;

    move-result-object v0

    new-array v2, v2, [Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    sget-object v3, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->RECORDING_PAUSE:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    aput-object v3, v2, v1

    sget-object v1, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->RECORDING_HDR_PAUSE:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    aput-object v1, v2, v5

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->containsIn([Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 9270
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomDisplayChangedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;Z)V
    invoke-static {p0, v0, v5}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$10300(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;Z)V

    :cond_58
    return-void
.end method

.method public onHiddenZoomBar()V
    .registers 1

    return-void
.end method

.method public onShowSimpleView()V
    .registers 2

    .line 9256
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomDisplayChangedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mSideTouchUi:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$10200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->COVERING:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->detachTo(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;)Z

    return-void
.end method

.method public onShowZoom(Z)V
    .registers 2

    if-nez p1, :cond_10

    .line 9250
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomDisplayChangedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getBaseLayout()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$800(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getTopIndicator()Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    return-void
.end method

.method public onShowZoomBar()V
    .registers 1

    return-void
.end method

.method public onValueClick(I)Z
    .registers 4

    .line 9277
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomDisplayChangedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v1, :cond_1a

    .line 9278
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomDisplayChangedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mZoomEventDispatcher:Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$10400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;

    move-result-object p0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->zoomRatioDesignation(F)Z

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method
