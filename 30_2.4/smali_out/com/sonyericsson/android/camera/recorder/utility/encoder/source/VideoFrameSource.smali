.class public Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/VideoFrameSource;
.super Ljava/lang/Object;
.source "VideoFrameSource.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;


# instance fields
.field private final mEncoder:Landroid/media/MediaCodec;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/VideoFrameSource;->mEncoder:Landroid/media/MediaCodec;

    return-void
.end method


# virtual methods
.method public createInputSurface()Landroid/view/Surface;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/VideoFrameSource;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .registers 1

    return-void
.end method

.method public start()V
    .registers 1

    return-void
.end method

.method public stop()V
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/VideoFrameSource;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    return-void
.end method
