.class Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$StartSuperSlowRecordingCallbackImpl;
.super Ljava/lang/Object;
.source "SuperSlowShotRecorderController.java"

# interfaces
.implements Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartSuperSlowRecordingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StartSuperSlowRecordingCallbackImpl"
.end annotation


# instance fields
.field private final mLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;)V
    .registers 2

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$StartSuperSlowRecordingCallbackImpl;->mLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    return-void
.end method


# virtual methods
.method public onStartSuperSlowRecordingDone()V
    .registers 2

    const-string v0, "onStartSuperSlowRecordingDone() E"

    .line 360
    # invokes: Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->trace(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->access$100(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$StartSuperSlowRecordingCallbackImpl;->mLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;->unlock()V

    const-string v0, "onStartSuperSlowRecordingDone() X"

    .line 363
    # invokes: Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->trace(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->access$100(Ljava/lang/String;)V

    return-void
.end method
