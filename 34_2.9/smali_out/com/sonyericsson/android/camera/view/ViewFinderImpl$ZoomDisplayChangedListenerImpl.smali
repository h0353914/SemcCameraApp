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

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomDisplayChangedListenerImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomDisplayChangedListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    return-void
.end method


# virtual methods
.method public onHiddenZoom()V
    .registers 5

    .line 9262
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomDisplayChangedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mgetBaseLayout(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getTopIndicator()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9263
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomDisplayChangedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmSideTouchUi(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->COVERING:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->detachTo(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 9264
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomDisplayChangedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmSideTouchUi(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->RECORDING:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    sget-object v2, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->RECORDING_HDR:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    filled-new-array {v1, v2}, [Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    move-result-object v1

    .line 9265
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->containsIn([Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_38

    .line 9266
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomDisplayChangedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object v2, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-static {v0, v2, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mchangeLayoutTo(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;Z)V

    .line 9268
    :cond_38
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomDisplayChangedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmSideTouchUi(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->RECORDING_PAUSE:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    sget-object v3, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->RECORDING_HDR_PAUSE:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    filled-new-array {v2, v3}, [Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->containsIn([Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 9270
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomDisplayChangedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mchangeLayoutTo(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;Z)V

    :cond_53
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

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmSideTouchUi(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;

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

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mgetBaseLayout(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

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

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v1, :cond_1a

    .line 9278
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomDisplayChangedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmZoomEventDispatcher(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;

    move-result-object p0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->zoomRatioDesignation(F)Z

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method
