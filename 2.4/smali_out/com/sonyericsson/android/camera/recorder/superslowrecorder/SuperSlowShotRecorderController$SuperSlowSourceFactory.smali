.class Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$SuperSlowSourceFactory;
.super Ljava/lang/Object;
.source "SuperSlowShotRecorderController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$InputDataSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuperSlowSourceFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$1;)V
    .registers 2

    .line 375
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$SuperSlowSourceFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createAudioSource(Landroid/media/MediaCodec;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;
    .registers 3

    .line 385
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This recorder doesn\'t support audio track."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createVideoSource(Landroid/media/MediaCodec;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/VideoFrameSource;
    .registers 3

    .line 380
    new-instance p2, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/VideoFrameSource;

    invoke-direct {p2, p1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/VideoFrameSource;-><init>(Landroid/media/MediaCodec;)V

    return-object p2
.end method
