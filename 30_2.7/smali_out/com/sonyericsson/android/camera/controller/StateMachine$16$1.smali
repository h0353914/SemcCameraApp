.class Lcom/sonyericsson/android/camera/controller/StateMachine$16$1;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$16;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$16;)V
    .registers 2

    .line 10257
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$16$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 10260
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$16$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$16;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$16;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$16$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$16;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$16;->val$requestMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->setCurrentCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$10400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 10261
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$16$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$16;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$16;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1700(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$16$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$16;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/StateMachine$16;->val$requestMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$16$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$16;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/controller/StateMachine$16;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 10262
    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v3

    .line 10261
    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/CameraActivity;->prepareCameraDeviceHandler(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object v0

    .line 10263
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$16$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$16;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$16;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFrontCameraSwitching;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$16$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$16;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/controller/StateMachine$16;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-direct {v2, v3, v0, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFrontCameraSwitching;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;)V

    const/4 v0, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 10264
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$16$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$16;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$16;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->setIsCameraSwitching(Z)V

    .line 10265
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$16$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$16;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$16;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->notifyOnEvfPrepared()V

    .line 10266
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$16$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$16;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$16;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$16$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$16;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/controller/StateMachine$16;->val$requestMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->requestResizeEvf(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V
    invoke-static {v1, v3, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    .line 10267
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$16$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$16;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$16;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v1

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_CAPTURING_MODE_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$16$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$16;

    iget-object v5, v5, Lcom/sonyericsson/android/camera/controller/StateMachine$16;->val$requestMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    aput-object v5, v4, v0

    .line 10268
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v2

    sget-object v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->NONE:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    const/4 v2, 0x2

    aput-object v0, v4, v2

    .line 10267
    invoke-interface {v1, v3, v4}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method
