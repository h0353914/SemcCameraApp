.class Lcom/sonyericsson/android/camera/view/blur/BlurViewController$1;
.super Ljava/lang/Object;
.source "BlurViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/blur/BlurViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/blur/BlurViewController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/blur/BlurViewController;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController$1;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 42
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController$1;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurViewController;

    # getter for: Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->access$200(Lcom/sonyericsson/android/camera/view/blur/BlurViewController;)Lcom/sonyericsson/android/camera/device/ImageRetriever;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController$1;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurViewController;

    .line 43
    # getter for: Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mImageCallback:Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->access$000(Lcom/sonyericsson/android/camera/view/blur/BlurViewController;)Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController$1;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurViewController;

    # getter for: Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->access$100(Lcom/sonyericsson/android/camera/view/blur/BlurViewController;)Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 42
    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/ImageRetriever;->registerBlurPreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;Landroid/os/Handler;)V

    const-string v0, "BlurViewController"

    const-string v1, "Get frame requested"

    .line 44
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/BlurLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
