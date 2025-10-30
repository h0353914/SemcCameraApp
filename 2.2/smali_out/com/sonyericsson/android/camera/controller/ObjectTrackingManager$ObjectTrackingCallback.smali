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

    .line 34
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$1;)V
    .registers 3

    .line 34
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;-><init>(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)V

    return-void
.end method


# virtual methods
.method public onObjectTracked(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V
    .registers 6

    .line 39
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    # getter for: Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mObjectTrackingCallback:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->access$000(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;

    move-result-object v0

    if-eq p0, v0, :cond_9

    return-void

    :cond_9
    if-nez p1, :cond_19

    .line 44
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_18

    const-string p0, "onObjectTracked: result is null."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_18
    return-void

    .line 49
    :cond_19
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onObjectTracked: lost: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mIsLost:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", rect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mRectOfTrackedObject:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 52
    :cond_43
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$1;->$SwitchMap$com$sonyericsson$android$camera$controller$ObjectTrackingManager$State:[I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    # getter for: Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mCurrentState:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->access$100(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_d0

    goto :goto_90

    .line 73
    :pswitch_55
    iget-boolean v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mIsLost:Z

    if-eqz v0, :cond_90

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->LOST:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    # setter for: Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mCurrentState:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->access$102(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    goto :goto_90

    .line 63
    :pswitch_61
    iget-boolean v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mIsLost:Z

    if-eqz v0, :cond_73

    .line 65
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_72

    const-string p0, "onObjectTracked: ignore lost"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_72
    return-void

    .line 69
    :cond_73
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->TRACKING:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    # setter for: Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mCurrentState:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->access$102(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    goto :goto_90

    .line 56
    :pswitch_7b
    iget-boolean v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mIsLost:Z

    if-eqz v0, :cond_87

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->LOST:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    # setter for: Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mCurrentState:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->access$102(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    goto :goto_90

    .line 59
    :cond_87
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->TRACKING:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    # setter for: Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mCurrentState:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->access$102(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    goto :goto_90

    :pswitch_8f
    return-void

    .line 82
    :cond_90
    :goto_90
    iget-boolean v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mIsLost:Z

    if-eqz v0, :cond_a7

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    # getter for: Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mHandler:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->access$200(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;->startTimeoutCount()V

    .line 84
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    # getter for: Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->access$300(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onObjectLost(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V

    goto :goto_cf

    .line 86
    :cond_a7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    # getter for: Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mHandler:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->access$200(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;->stopTimeoutCount()V

    .line 87
    iget-object v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mRectOfTrackedObject:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 88
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    # getter for: Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->access$400(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_cf

    .line 92
    :cond_c6
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    # getter for: Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->access$300(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onObjectTracked(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V

    :goto_cf
    return-void

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_8f
        :pswitch_7b
        :pswitch_61
        :pswitch_55
    .end packed-switch
.end method
