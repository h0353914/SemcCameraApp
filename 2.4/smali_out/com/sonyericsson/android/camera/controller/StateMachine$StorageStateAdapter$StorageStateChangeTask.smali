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
    .param p1    # Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 361
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 363
    iput-object p3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V
    .registers 5

    .line 356
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 368
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$400(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    .line 370
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonyericsson/cameracommon/storage/Storage;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v1

    .line 371
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v0, :cond_35

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 372
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->isWritable()Z

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 376
    :cond_28
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_MOUNTED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v5}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto/16 :goto_fc

    .line 377
    :cond_35
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    const/4 v5, 0x2

    if-ne v1, v2, :cond_56

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->CORRUPT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne v1, v2, :cond_56

    .line 379
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_ERROR:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    aput-object v5, v2, v4

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void

    .line 383
    :cond_56
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v1, v0, :cond_fc

    .line 388
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->mOldStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->access$600(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v1

    if-eqz v1, :cond_fc

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->mOldStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->access$600(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_fc

    .line 389
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 390
    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->checkSaveDestinationCanBeChange(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$700(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v1

    if-eqz v1, :cond_88

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 391
    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v1

    if-nez v1, :cond_88

    move v1, v3

    goto :goto_89

    :cond_88
    move v1, v4

    .line 392
    :goto_89
    sget-object v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v0, v2, :cond_ac

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v6, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 393
    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    invoke-static {v2, v6}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$900(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v2

    if-nez v2, :cond_ac

    if-eqz v1, :cond_ac

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 395
    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v2

    sget-object v6, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_RESUME_AND_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-ne v2, v6, :cond_ac

    goto :goto_fc

    .line 400
    :cond_ac
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v6, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_ERROR:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    aput-object v7, v5, v4

    iget-object v7, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    aput-object v7, v5, v3

    invoke-virtual {v2, v6, v5}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 403
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    sget-object v5, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne v2, v5, :cond_cb

    .line 406
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    # setter for: Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->mIsCurrentStorageFull:Z
    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->access$1102(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;Z)Z

    goto :goto_fc

    .line 408
    :cond_cb
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v2

    .line 409
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v2

    sget-object v5, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_BURST_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-eq v2, v5, :cond_ee

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 410
    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v2

    .line 411
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v2

    sget-object v5, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_BURST_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-ne v2, v5, :cond_ec

    goto :goto_ee

    :cond_ec
    move v2, v4

    goto :goto_ef

    :cond_ee
    :goto_ee
    move v2, v3

    .line 413
    :goto_ef
    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v5, v5, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {v5}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-interface {v5, v0, v6, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->notifyStorageStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;ZZ)V

    .line 423
    :cond_fc
    :goto_fc
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v1, v0, :cond_12e

    .line 424
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    # setter for: Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->mOldStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->access$602(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 426
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->isWritable()Z

    move-result v2

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->switchSceneRecognition(Z)V
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1300(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 427
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->isWritable()Z

    move-result v1

    if-nez v1, :cond_123

    .line 428
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->doStopObjectTracking()V
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1400(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 431
    :cond_123
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->isWritable()Z

    move-result v2

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->updateGestureShutterState(Z)V
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->access$1500(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;Z)V

    .line 434
    :cond_12e
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/storage/Storage;->isStorageActivated()Z

    move-result v1

    if-eqz v1, :cond_197

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->mIsCurrentStorageFull:Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->access$1100(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;)Z

    move-result v1

    if-eqz v1, :cond_197

    .line 436
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 437
    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->checkSaveDestinationCanBeChange(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$700(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v1

    if-eqz v1, :cond_15e

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 438
    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mLaunchCondition:Lcom/sonyericsson/android/camera/LaunchCondition;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v1

    if-nez v1, :cond_15e

    move v1, v3

    goto :goto_15f

    :cond_15e
    move v1, v4

    .line 439
    :goto_15f
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v2

    .line 440
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v2

    sget-object v5, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_BURST_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-eq v2, v5, :cond_181

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 441
    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v2

    .line 442
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v2

    sget-object v5, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_BURST_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-ne v2, v5, :cond_180

    goto :goto_181

    :cond_180
    move v3, v4

    .line 444
    :cond_181
    :goto_181
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v2

    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->mOldStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;
    invoke-static {v5}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->access$600(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v5

    invoke-interface {v2, v0, v5, v1, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->notifyStorageStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;ZZ)V

    .line 447
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    # setter for: Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->mIsCurrentStorageFull:Z
    invoke-static {v0, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->access$1102(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;Z)Z

    :cond_197
    return-void
.end method
