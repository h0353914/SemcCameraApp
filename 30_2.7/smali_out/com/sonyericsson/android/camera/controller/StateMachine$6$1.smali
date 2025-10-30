.class Lcom/sonyericsson/android/camera/controller/StateMachine$6$1;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine$6;->notifyResult(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$6;

.field final synthetic val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$6;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .registers 3

    .line 583
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$6$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$6;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$6$1;->val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 586
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$6$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$6;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$6;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->calculateRemainStorage()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 587
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$6$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$6;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$6;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_STORE_COMPLETED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$6$1;->val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method
