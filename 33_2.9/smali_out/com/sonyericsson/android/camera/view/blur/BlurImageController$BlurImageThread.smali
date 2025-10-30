.class Lcom/sonyericsson/android/camera/view/blur/BlurImageController$BlurImageThread;
.super Ljava/lang/Thread;
.source "BlurImageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/blur/BlurImageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BlurImageThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/blur/BlurImageController;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$BlurImageThread;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 136
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$BlurImageThread;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    # getter for: Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mRunning:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->access$000(Lcom/sonyericsson/android/camera/view/blur/BlurImageController;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$BlurImageThread;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    # invokes: Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->pauseThread()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->access$100(Lcom/sonyericsson/android/camera/view/blur/BlurImageController;)V

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$BlurImageThread;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    # getter for: Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mIsProcessing:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->access$200(Lcom/sonyericsson/android/camera/view/blur/BlurImageController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$BlurImageThread;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    # invokes: Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->generateBlurImage()[Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->access$300(Lcom/sonyericsson/android/camera/view/blur/BlurImageController;)[Landroid/graphics/Bitmap;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$BlurImageThread;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    # invokes: Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->pauseThread()V
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->access$100(Lcom/sonyericsson/android/camera/view/blur/BlurImageController;)V

    .line 141
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$BlurImageThread;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    # invokes: Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->isBlurViewShowing()Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->access$400(Lcom/sonyericsson/android/camera/view/blur/BlurImageController;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 142
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$BlurImageThread;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    # getter for: Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mPreviewData:Lcom/sonyericsson/android/camera/view/blur/BlurImageController$PreviewData;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->access$500(Lcom/sonyericsson/android/camera/view/blur/BlurImageController;)Lcom/sonyericsson/android/camera/view/blur/BlurImageController$PreviewData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$PreviewData;->getAspect()I

    move-result v2

    # invokes: Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->setBlurImageData([Landroid/graphics/Bitmap;I)V
    invoke-static {v1, v0, v2}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->access$600(Lcom/sonyericsson/android/camera/view/blur/BlurImageController;[Landroid/graphics/Bitmap;I)V

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$BlurImageThread;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->setFirstBlurBitmapReady(Z)V

    goto :goto_41

    .line 145
    :cond_3c
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$BlurImageThread;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    # invokes: Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->recycleBitmap([Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->access$700(Lcom/sonyericsson/android/camera/view/blur/BlurImageController;[Landroid/graphics/Bitmap;)V

    .line 147
    :goto_41
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$BlurImageThread;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->mIsProcessing:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->access$202(Lcom/sonyericsson/android/camera/view/blur/BlurImageController;Z)Z

    goto :goto_0

    :cond_48
    const-string p0, "BlurImageController"

    const-string v0, "BlurImageThread.run x"

    .line 150
    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/utility/BlurLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
