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
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 343
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 345
    iput-object p3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V
    .registers 5

    .line 338
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 350
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentStorage()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$400(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    .line 354
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getLaunchCondition()Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchCondition;->getExtraOperation()Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    move-result-object v1

    .line 356
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sonyericsson/cameracommon/storage/Storage;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v2

    .line 357
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    const/4 v4, 0x0

    if-ne v3, v0, :cond_44

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 358
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->isWritable()Z

    move-result v3

    if-nez v3, :cond_37

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->isWritable()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 362
    :cond_37
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_MOUNTED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto/16 :goto_123

    .line 363
    :cond_44
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v2, v3, :cond_66

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->CORRUPT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne v2, v3, :cond_66

    .line 365
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_ERROR:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    aput-object v3, v2, v4

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    aput-object p0, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void

    .line 368
    :cond_66
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v2, v3, :cond_83

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->UNGRANTED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne v2, v3, :cond_83

    .line 370
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v0, v1, :cond_123

    .line 371
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_UNGRANTED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto/16 :goto_123

    .line 373
    :cond_83
    sget-object v2, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->OPEN_SETTINGS_MENU:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    if-eq v1, v2, :cond_123

    .line 374
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v2, v0, :cond_123

    .line 376
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 377
    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->checkSaveDestinationCanBeChange(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    invoke-static {v2, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$700(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v2

    if-eqz v2, :cond_a5

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 378
    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v2

    if-nez v2, :cond_a5

    move v2, v6

    goto :goto_a6

    :cond_a5
    move v2, v4

    .line 380
    :goto_a6
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsSdPermissionFinished:Z
    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result v3

    if-eqz v3, :cond_b7

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-eq v0, v3, :cond_b7

    if-eqz v2, :cond_b7

    return-void

    .line 390
    :cond_b7
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->mOldStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->access$900(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v3

    if-eqz v3, :cond_123

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->mOldStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->access$900(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->isWritable()Z

    move-result v3

    if-eqz v3, :cond_123

    .line 392
    sget-object v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v0, v3, :cond_e2

    sget-object v3, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    if-ne v1, v3, :cond_e2

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 394
    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1000(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v1

    if-nez v1, :cond_e2

    if-eqz v2, :cond_e2

    goto :goto_123

    .line 398
    :cond_e2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_ERROR:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    aput-object v7, v5, v4

    iget-object v7, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    aput-object v7, v5, v6

    invoke-virtual {v1, v3, v5}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 401
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1100(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v1

    .line 402
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v1

    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_BURST_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-eq v1, v3, :cond_115

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 403
    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/controller/StateMachine$State;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1100(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object v1

    .line 404
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v1

    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_BURST_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-ne v1, v3, :cond_116

    :cond_115
    move v4, v6

    .line 406
    :cond_116
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-interface {v1, v0, v3, v2, v4}, Lcom/sonyericsson/android/camera/view/ViewFinder;->notifyStorageStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;ZZ)V

    .line 415
    :cond_123
    :goto_123
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageType:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v1, v0, :cond_155

    .line 416
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    # setter for: Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->mOldStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->access$902(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 418
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->isWritable()Z

    move-result v1

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->switchSceneRecognition(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1300(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 419
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->isWritable()Z

    move-result v0

    if-nez v0, :cond_14a

    .line 420
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine;->doStopObjectTracking()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1400(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 423
    :cond_14a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter$StorageStateChangeTask;->mStorageState:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->isWritable()Z

    move-result p0

    # invokes: Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->updateGestureShutterState(Z)V
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;->access$1500(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageStateAdapter;Z)V

    :cond_155
    return-void
.end method
