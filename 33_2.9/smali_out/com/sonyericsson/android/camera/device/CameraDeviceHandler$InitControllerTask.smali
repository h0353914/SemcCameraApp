.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "CameraDeviceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitControllerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .registers 2

    .line 826
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V
    .registers 3

    .line 826
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    return-void
.end method


# virtual methods
.method protected doCameraDeviceAccess()V
    .registers 8

    .line 835
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    new-instance v1, Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mApplicationContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$600(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V

    new-instance v4, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {v4, v6}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/device/BypassCameraController;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V

    # setter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mBypassCameraController:Lcom/sonyericsson/android/camera/device/BypassCameraController;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$502(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 838
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mApplicationContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$600(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {v3, v4, v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V

    new-instance v4, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {v4, v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 841
    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1000(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sonyericsson/android/camera/device/CameraController;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;Landroid/os/Handler;)V

    .line 838
    # setter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mCameraController:Lcom/sonyericsson/android/camera/device/CameraController;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$802(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController;

    .line 842
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    new-instance v1, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mApplicationContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$600(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1000(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    # setter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVirtualCameraController:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraController;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1102(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraController;)Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraController;

    .line 843
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVirtualCameraController:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1100(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraController;

    move-result-object v0

    invoke-static {}, Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;->getFinalImageSaver()Lcom/sonyericsson/android/camera/device/virtual/FinalImageSaver;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraController;->addListener(Lcom/sonyericsson/android/camera/device/virtual/VirtualTakePictureListener;)V

    .line 844
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVirtualCameraController:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1100(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraController;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->mVirtualTakePictureListener:Lcom/sonyericsson/android/camera/device/virtual/VirtualTakePictureListener;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1200(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/virtual/VirtualTakePictureListener;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraController;->addListener(Lcom/sonyericsson/android/camera/device/virtual/VirtualTakePictureListener;)V

    return-void
.end method

.method public postCameraDeviceAccess()V
    .registers 1

    .line 849
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
