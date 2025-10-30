.class Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;
.super Ljava/lang/Object;
.source "CameraSettingsActivity.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageReadyStateAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V
    .registers 2

    .line 1072
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/CameraSettingsActivity$1;)V
    .registers 3

    .line 1072
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    return-void
.end method


# virtual methods
.method public onStorageReadyStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;)V
    .registers 4

    .line 1076
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->COMPLETED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    if-ne p2, v0, :cond_12

    .line 1077
    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    # getter for: Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->access$1600(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter$1;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_12
    return-void
.end method
