.class Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageStateChangeTask"
.end annotation


# instance fields
.field private final mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

.field private final mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

.field final synthetic this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;)V
    .registers 4

    .line 462
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 464
    iput-object p3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 469
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetCurrentStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    .line 471
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 472
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcheckSaveDestinationCanBeChange(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmLaunchCondition(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v1

    .line 473
    invoke-interface {v1}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v1

    if-nez v1, :cond_24

    move v1, v2

    goto :goto_25

    :cond_24
    move v1, v3

    .line 474
    :goto_25
    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v4, v4, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v4}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentState(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v4

    .line 475
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_BURST_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-eq v4, v5, :cond_48

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v4, v4, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v4}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentState(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v4

    .line 477
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_BURST_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-ne v4, v5, :cond_46

    goto :goto_48

    :cond_46
    move v4, v3

    goto :goto_49

    :cond_48
    :goto_48
    move v4, v2

    .line 480
    :goto_49
    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v5, v5, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/sonyericsson/cameracommon/storage/Storage;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v5

    .line 481
    iget-object v6, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v6, v0, :cond_81

    iget-object v6, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 482
    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->isWritable()Z

    move-result v6

    if-nez v6, :cond_67

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->isWritable()Z

    move-result v5

    if-eqz v5, :cond_81

    .line 486
    :cond_67
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v5, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_MOUNTED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 487
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v2

    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-interface {v2, v0, v5, v1, v4}, Lcom/sonyericsson/android/camera/view/ViewFinder;->notifyStorageStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;ZZ)V

    goto/16 :goto_104

    .line 489
    :cond_81
    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    sget-object v6, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v5, v6, :cond_9f

    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    sget-object v6, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->CORRUPT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne v5, v6, :cond_9f

    .line 491
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_ERROR:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void

    .line 495
    :cond_9f
    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v5, v0, :cond_104

    .line 500
    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->-$$Nest$fgetmOldStorageState(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v5

    if-eqz v5, :cond_104

    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->-$$Nest$fgetmOldStorageState(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->isWritable()Z

    move-result v5

    if-eqz v5, :cond_104

    .line 501
    sget-object v5, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v0, v5, :cond_da

    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v5, v5, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v6, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 502
    invoke-static {v5, v6}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$misStorageWritable(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v5

    if-nez v5, :cond_da

    if-eqz v1, :cond_da

    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v5, v5, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentState(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v5

    .line 504
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_RESUME_AND_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-ne v5, v6, :cond_da

    goto :goto_104

    .line 509
    :cond_da
    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v5, v5, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v6, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_ERROR:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 512
    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    sget-object v6, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne v5, v6, :cond_f7

    .line 515
    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    invoke-static {v5, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->-$$Nest$fputmIsCurrentStorageFull(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;Z)V

    goto :goto_104

    .line 517
    :cond_f7
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v2

    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-interface {v2, v0, v5, v1, v4}, Lcom/sonyericsson/android/camera/view/ViewFinder;->notifyStorageStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;ZZ)V

    .line 527
    :cond_104
    :goto_104
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v2, v0, :cond_136

    .line 528
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-static {v2, v5}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->-$$Nest$fputmOldStorageState(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;)V

    .line 530
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->isWritable()Z

    move-result v5

    invoke-static {v2, v5}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mswitchSceneRecognition(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 531
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->isWritable()Z

    move-result v2

    if-nez v2, :cond_12b

    .line 532
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoStopObjectTracking(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 535
    :cond_12b
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->isWritable()Z

    move-result v5

    invoke-static {v2, v5}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->-$$Nest$mupdateGestureShutterState(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;Z)V

    .line 538
    :cond_136
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/storage/Storage;->isStorageActivated()Z

    move-result v2

    if-eqz v2, :cond_162

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->-$$Nest$fgetmIsCurrentStorageFull(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;)Z

    move-result v2

    if-eqz v2, :cond_162

    .line 540
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v2

    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->-$$Nest$fgetmOldStorageState(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v5

    invoke-interface {v2, v0, v5, v1, v4}, Lcom/sonyericsson/android/camera/view/ViewFinder;->notifyStorageStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;ZZ)V

    .line 543
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    invoke-static {p0, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->-$$Nest$fputmIsCurrentStorageFull(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;Z)V

    :cond_162
    return-void
.end method
