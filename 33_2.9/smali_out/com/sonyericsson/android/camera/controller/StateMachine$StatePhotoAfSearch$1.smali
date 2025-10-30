.class Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch$1;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->handleCaptureBurst([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;)V
    .registers 2

    .line 5847
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 5850
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->startAutoFocus([Ljava/lang/Object;)Z
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$8800(Lcom/sonyericsson/android/camera/controller/StateMachine;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 5851
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoCaptureWaitForAfDone;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array v1, v1, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v2, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4100(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 5852
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x1

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->showCannotBurstInDarkCondition(Z)V
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$9500(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    goto :goto_38

    .line 5854
    :cond_29
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfSearch;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_CAPTURE_FINISH:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :goto_38
    return-void
.end method
