.class Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$DeleteMediaFileTask;
.super Ljava/lang/Object;
.source "FaultDetectionViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMediaFileTask"
.end annotation


# instance fields
.field private mStoreUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;Landroid/net/Uri;)V
    .registers 3

    .line 780
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$DeleteMediaFileTask;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 781
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$DeleteMediaFileTask;->mStoreUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 786
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$DeleteMediaFileTask;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    # getter for: Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->access$600(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getStorage()Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$DeleteMediaFileTask;->mStoreUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/storage/Storage;->deleteFile(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 787
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$DeleteMediaFileTask;->mStoreUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 788
    :cond_32
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$DeleteMediaFileTask$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$DeleteMediaFileTask$1;-><init>(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$DeleteMediaFileTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4b

    .line 795
    :cond_3f
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$DeleteMediaFileTask$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$DeleteMediaFileTask$2;-><init>(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$DeleteMediaFileTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_4b
    return-void
.end method
