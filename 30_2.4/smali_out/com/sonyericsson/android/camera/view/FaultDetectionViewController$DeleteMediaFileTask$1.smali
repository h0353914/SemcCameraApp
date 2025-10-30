.class Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$DeleteMediaFileTask$1;
.super Ljava/lang/Object;
.source "FaultDetectionViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$DeleteMediaFileTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$DeleteMediaFileTask;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$DeleteMediaFileTask;)V
    .registers 2

    .line 788
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$DeleteMediaFileTask$1;->this$1:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$DeleteMediaFileTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 791
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$DeleteMediaFileTask$1;->this$1:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$DeleteMediaFileTask;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$DeleteMediaFileTask;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    # getter for: Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->mBaseLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;->access$000(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reloadPreviousContent()V

    return-void
.end method
