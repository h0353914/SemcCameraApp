.class Lcom/sonyericsson/android/camera/controller/StateMachine$1$1;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine$1;->notifyResult(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$1;

.field final synthetic val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$1;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .registers 3

    .line 474
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$1$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$1;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$1$1;->val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 477
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$1$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$1;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$1;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->calculateRemainStorage()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1600(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 478
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$1$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$1;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$1;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$1$1;->val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_32

    .line 479
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$1$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$1;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$1;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v3, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$1$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$1;

    iget-object v4, v4, Lcom/sonyericsson/android/camera/controller/StateMachine$1;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v1, v2, v5}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    new-array v4, v2, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v3, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 481
    :cond_32
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$1$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$1;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$1;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_STORE_COMPLETED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$1$1;->val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    aput-object v4, v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method
