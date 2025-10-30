.class Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;
.super Landroid/os/Handler;
.source "ObjectTrackingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObjectTrackingHandler"
.end annotation


# static fields
.field private static final MSG_TIMEOUT_INVISIBLE:I = 0x2

.field private static final MSG_TIMEOUT_LOST:I = 0x1

.field private static final TIMEOUT_INVISIBLE_MILLIS:I = 0x1f4

.field private static final TIMEOUT_LOST_MILLIS:I = 0xbb8


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$1;)V
    .registers 3

    .line 170
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;-><init>(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 189
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    # getter for: Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->access$700(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isObjectTrackingRunning()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 194
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    # getter for: Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->access$300(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1f

    move v0, v3

    goto :goto_20

    :cond_1f
    move v0, v2

    .line 201
    :goto_20
    iget p1, p1, Landroid/os/Message;->what:I

    if-eq p1, v2, :cond_38

    const/4 v1, 0x2

    if-eq p1, v1, :cond_28

    goto :goto_59

    :cond_28
    if-eqz v0, :cond_59

    .line 213
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    # getter for: Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->access$400(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_OBJECT_TRACKING_TIMEOUT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_59

    .line 203
    :cond_38
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->stop()V

    if-eqz v0, :cond_4c

    .line 205
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    # getter for: Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->access$400(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED_EXCEPT_FACE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 208
    :cond_4c
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    # getter for: Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->access$300(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CLEAR_FOCUS:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_59
    :goto_59
    return-void
.end method

.method public startTimeoutCount()V
    .registers 4

    const/4 v0, 0x1

    const-wide/16 v1, 0xbb8

    .line 178
    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x2

    const-wide/16 v1, 0x1f4

    .line 179
    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public stopTimeoutCount()V
    .registers 2

    const/4 v0, 0x1

    .line 183
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;->removeMessages(I)V

    const/4 v0, 0x2

    .line 184
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;->removeMessages(I)V

    return-void
.end method
