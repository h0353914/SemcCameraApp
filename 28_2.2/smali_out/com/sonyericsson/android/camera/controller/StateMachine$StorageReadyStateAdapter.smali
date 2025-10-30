.class Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageReadyStateAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .registers 2

    .line 469
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V
    .registers 3

    .line 469
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method


# virtual methods
.method public onStorageReadyStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;)V
    .registers 4

    .line 473
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->COMPLETED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-ne p2, v0, :cond_24

    sget-object p2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne p1, p2, :cond_24

    .line 474
    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsSdPermissionFinished:Z
    invoke-static {p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result p2

    if-eqz p2, :cond_24

    .line 475
    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    # setter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mIsSdPermissionFinished:Z
    invoke-static {p2, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$802(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)Z

    .line 476
    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1700(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter$1;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StorageReadyStateAdapter;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_24
    return-void
.end method
