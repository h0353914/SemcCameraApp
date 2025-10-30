.class Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$PrepareSuperSlowRecordingCallbackImpl;
.super Ljava/lang/Object;
.source "SuperSlowRecorderController.java"

# interfaces
.implements Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareSuperSlowRecordingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrepareSuperSlowRecordingCallbackImpl"
.end annotation


# instance fields
.field private final mLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;)V
    .registers 2

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$PrepareSuperSlowRecordingCallbackImpl;->mLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    return-void
.end method


# virtual methods
.method public onPrepareSuperSlowRecordingDone()V
    .registers 2

    const-string v0, "onPrepareSuperSlowRecordingDone() E"

    .line 433
    # invokes: Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->access$900(Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$PrepareSuperSlowRecordingCallbackImpl;->mLock:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BypassCameraRecorderController$CallbackLock;->unlock()V

    const-string v0, "onPrepareSuperSlowRecordingDone() X"

    .line 435
    # invokes: Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->trace(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->access$900(Ljava/lang/String;)V

    return-void
.end method
