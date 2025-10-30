.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$12;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->requestModeSwipeAnimation(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

.field final synthetic val$request:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)V
    .registers 3

    .line 3395
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$12;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$12;->val$request:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished()V
    .registers 7

    .line 3399
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->SWIPE_ANIMATION_END:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 3400
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$12;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$12;->val$request:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mFrom:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$12;->val$request:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mTarget:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->needChangeCameraId(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$6500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3b

    .line 3401
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$12;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setIsCameraSwitching(Z)V

    .line 3402
    new-instance v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    sget-object v2, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MODE_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    sget-object v3, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->FINISH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$12;->val$request:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v4, v4, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mFrom:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$12;->val$request:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v5, v5, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mTarget:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;-><init>(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 3407
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$12;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$6600(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$12$1;

    invoke-direct {v3, p0, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$12$1;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$12;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5a

    .line 3417
    :cond_3b
    new-instance v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    sget-object v2, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MODE_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    sget-object v3, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->FINISH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$12;->val$request:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v4, v4, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mFrom:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$12;->val$request:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v5, v5, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mTarget:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;-><init>(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 3422
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$12;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$6600(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$12$2;

    invoke-direct {v3, p0, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$12$2;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$12;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3432
    :goto_5a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$12;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_FINISH_TRANSITION_OPERATION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$12;->val$request:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    aput-object v4, v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 3436
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$12;->val$request:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mFrom:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$12;->val$request:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;->mTarget:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendEventInternalModeChange(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void
.end method
