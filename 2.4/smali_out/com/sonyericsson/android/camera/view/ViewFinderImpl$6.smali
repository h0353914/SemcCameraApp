.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setupFocusRectangles(Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .registers 2

    .line 1977
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1981
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_a2

    return v0

    .line 1993
    :pswitch_a
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_17

    const-string p1, "onTouch ACTION_MOVE"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1994
    :cond_17
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isTouchCaptureEnabled()Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$4500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result p1

    if-nez p1, :cond_2d

    .line 1995
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CLEAR_FOCUS:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return p2

    :cond_2d
    return v0

    .line 2003
    :pswitch_2e
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_3b

    const-string p1, "onTouch ACTION_UP"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2004
    :cond_3b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isTouchCaptureEnabled()Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$4500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result p1

    if-nez p1, :cond_7c

    .line 2005
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CLEAR_FOCUS:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 2009
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$2700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isObjectTrackingRunning()Z

    move-result p1

    if-eqz p1, :cond_71

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 2010
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isZooming()Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$4600(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result p1

    if-nez p1, :cond_71

    .line 2011
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_DESELECT_OBJECT_POSITION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 2016
    :cond_71
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->hideAutoReview()V

    .line 2019
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->switchSemiAutoStateByTouch(Z)V

    return p2

    :cond_7c
    return v0

    .line 1983
    :pswitch_7d
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_8a

    const-string p1, "onTouch ACTION_DOWN"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1984
    :cond_8a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isTouchCaptureEnabled()Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$4500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result p1

    if-nez p1, :cond_a0

    .line 1985
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CLEAR_FOCUS:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return p2

    :cond_a0
    return v0

    nop

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_2e
        :pswitch_a
    .end packed-switch
.end method
