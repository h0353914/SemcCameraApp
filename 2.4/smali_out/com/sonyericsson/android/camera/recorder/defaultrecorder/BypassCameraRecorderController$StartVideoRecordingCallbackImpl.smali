.class Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$StartVideoRecordingCallbackImpl;
.super Ljava/lang/Object;
.source "BypassCameraRecorderController.java"

# interfaces
.implements Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartVideoRecordingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StartVideoRecordingCallbackImpl"
.end annotation


# instance fields
.field private final mLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;)V
    .registers 2

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$StartVideoRecordingCallbackImpl;->mLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    return-void
.end method


# virtual methods
.method public onStartVideoRecordingDone()V
    .registers 2

    const-string v0, "onStartVideoRecordingDone() E"

    .line 379
    # invokes: Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->trace(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->access$000(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$StartVideoRecordingCallbackImpl;->mLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;->unlock()V

    const-string v0, "onStartVideoRecordingDone() X"

    .line 381
    # invokes: Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->trace(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController;->access$000(Ljava/lang/String;)V

    return-void
.end method
