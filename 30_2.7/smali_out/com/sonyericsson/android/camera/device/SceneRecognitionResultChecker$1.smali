.class Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker$1;
.super Ljava/lang/Object;
.source "SceneRecognitionResultChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;

.field final synthetic val$sceneRecognitionResult:Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;)V
    .registers 3

    .line 110
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker$1;->val$sceneRecognitionResult:Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;

    # getter for: Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mSceneRecognitionCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->access$000(Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker$1;->this$0:Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;

    # getter for: Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mSceneRecognitionCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionCallback;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->access$000(Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker$1;->val$sceneRecognitionResult:Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionCallback;->onSceneModeChanged(Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;)V

    :cond_13
    return-void
.end method
