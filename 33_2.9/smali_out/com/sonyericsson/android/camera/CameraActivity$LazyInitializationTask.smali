.class Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LazyInitializationTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .registers 2

    .line 1805
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private retry()V
    .registers 4

    .line 1842
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->postDelayedEvent(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1809
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 1810
    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$200(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 1811
    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$2900(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 1812
    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$2900(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isHeadUpDisplayReady()Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_64

    .line 1820
    :cond_23
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->canHandleAsynchronizedTask()Z

    move-result v0

    if-nez v0, :cond_31

    .line 1822
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;->retry()V

    return-void

    .line 1829
    :cond_31
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # invokes: Lcom/sonyericsson/android/camera/CameraActivity;->requestFinishCameraActivity()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$3000(Lcom/sonyericsson/android/camera/CameraActivity;)V

    .line 1831
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_LAZY_INITIALIZATION_TASK_RUN:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    .line 1834
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # setter for: Lcom/sonyericsson/android/camera/CameraActivity;->mIsLazyInitializationRunning:Z
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->access$3102(Lcom/sonyericsson/android/camera/CameraActivity;Z)Z

    .line 1835
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraActivity;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$2900(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_SETTING_CHANGE_ACCEPTABILITY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1837
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isSettingChangeAcceptable()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v3, v2

    .line 1835
    invoke-interface {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void

    .line 1814
    :cond_64
    :goto_64
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;->retry()V

    return-void
.end method
