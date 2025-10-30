.class Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;
.super Ljava/lang/Object;
.source "ObjectTrackingManager.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObjectTrackingCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$1;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;-><init>(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)V

    return-void
.end method


# virtual methods
.method public onObjectTracked(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V
    .registers 7

    .line 40
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    # getter for: Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mObjectTrackingCallback:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->access$000(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;

    move-result-object v0

    if-eq p0, v0, :cond_9

    return-void

    :cond_9
    if-nez p1, :cond_19

    .line 45
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_18

    const-string p0, "onObjectTracked: result is null."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_18
    return-void

    .line 50
    :cond_19
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_47

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onObjectTracked: lost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mIsLost:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", rect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mRectOfTrackedObject:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 53
    :cond_47
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$1;->$SwitchMap$com$sonyericsson$android$camera$controller$ObjectTrackingManager$State:[I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    # getter for: Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mCurrentState:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->access$100(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_d9

    const/4 v2, 0x2

    if-eq v0, v2, :cond_87

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6d

    const/4 v2, 0x4

    if-eq v0, v2, :cond_61

    goto :goto_9a

    .line 74
    :cond_61
    iget-boolean v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mIsLost:Z

    if-eqz v0, :cond_9a

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->LOST:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    # setter for: Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mCurrentState:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->access$102(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    goto :goto_9a

    .line 64
    :cond_6d
    iget-boolean v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mIsLost:Z

    if-eqz v0, :cond_7f

    .line 66
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_7e

    const-string p0, "onObjectTracked: ignore lost"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_7e
    return-void

    .line 70
    :cond_7f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->TRACKING:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    # setter for: Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mCurrentState:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->access$102(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    goto :goto_9a

    .line 57
    :cond_87
    iget-boolean v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mIsLost:Z

    if-eqz v0, :cond_93

    .line 58
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->LOST:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    # setter for: Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mCurrentState:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->access$102(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    goto :goto_9a

    .line 60
    :cond_93
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->TRACKING:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    # setter for: Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mCurrentState:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->access$102(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    .line 83
    :cond_9a
    :goto_9a
    iget-boolean v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mIsLost:Z

    if-eqz v0, :cond_b1

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    # getter for: Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mHandler:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->access$200(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;->startTimeoutCount()V

    .line 85
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    # getter for: Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->access$300(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onObjectLost(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V

    goto :goto_d9

    .line 87
    :cond_b1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    # getter for: Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mHandler:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->access$200(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;->stopTimeoutCount()V

    .line 88
    iget-object v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mRectOfTrackedObject:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 89
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    # getter for: Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->access$400(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_d9

    .line 93
    :cond_d0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    # getter for: Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->access$300(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onObjectTracked(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V

    :cond_d9
    :goto_d9
    return-void
.end method
