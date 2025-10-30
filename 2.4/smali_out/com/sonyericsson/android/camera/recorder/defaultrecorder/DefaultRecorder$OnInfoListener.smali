.class Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;
.super Ljava/lang/Object;
.source "DefaultRecorder.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnInfoListener"
.end annotation


# static fields
.field private static final MEDIA_RECORDER_INFO_KIND_MASK:I = 0xf

.field private static final MEDIA_RECORDER_INFO_KIND_SHIFT:I = 0x1c

.field private static final MEDIA_RECORDER_INFO_KIND_VIDEO:I = 0x1

.field private static final MEDIA_RECORDER_INFO_KIND_VIDEO_AUDIO:I = 0x2

.field private static final MEDIA_RECORDER_INFO_MASK:I = 0xfffffff


# instance fields
.field private final mAudioTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

.field private mIsAudioTrackStarted:Z

.field private mIsVideoTrackStarted:Z

.field private final mOnMaxReachedListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;

.field private final mVideoTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;)V
    .registers 5

    .line 574
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 575
    iput-object p2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mAudioTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    .line 576
    iput-object p3, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mVideoTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    .line 577
    iput-object p4, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mOnMaxReachedListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;

    const/4 p1, 0x0

    .line 578
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mIsAudioTrackStarted:Z

    .line 579
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mIsVideoTrackStarted:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$1;)V
    .registers 6

    .line 558
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;)V

    return-void
.end method

.method private onCompleted(I)V
    .registers 3

    .line 622
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;

    # getter for: Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mIsMicrophoneEnabled:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->access$400(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x2

    if-ne p1, v0, :cond_11

    .line 624
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mAudioTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;->onCompleted()V

    goto :goto_21

    .line 625
    :cond_11
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;

    # getter for: Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mIsMicrophoneEnabled:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->access$400(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;)Z

    move-result v0

    if-nez v0, :cond_21

    const/4 v0, 0x1

    if-ne p1, v0, :cond_21

    .line 627
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mVideoTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;->onCompleted()V

    :cond_21
    :goto_21
    return-void
.end method

.method private onInfo(Lcom/sonymobile/android/media/MediaRecorder;II)V
    .registers 4

    const p1, 0xfffffff

    and-int/2addr p1, p2

    shr-int/lit8 p2, p2, 0x1c

    and-int/lit8 p2, p2, 0xf

    sparse-switch p1, :sswitch_data_20

    goto :goto_1f

    .line 597
    :sswitch_c
    invoke-direct {p0, p3, p2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->onProgress(II)V

    goto :goto_1f

    .line 592
    :sswitch_10
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->onCompleted(I)V

    goto :goto_1f

    .line 607
    :sswitch_14
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mOnMaxReachedListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;->onMaxFileSizeReached()V

    goto :goto_1f

    .line 602
    :sswitch_1a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mOnMaxReachedListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;->onMaxDurationReached()V

    :goto_1f
    return-void

    :sswitch_data_20
    .sparse-switch
        0x320 -> :sswitch_1a
        0x321 -> :sswitch_14
        0x3e8 -> :sswitch_10
        0x3e9 -> :sswitch_c
    .end sparse-switch
.end method

.method private onProgress(II)V
    .registers 7

    .line 632
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;

    # getter for: Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mIsMicrophoneEnabled:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->access$400(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3c

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2e

    .line 636
    iget-boolean p2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mIsAudioTrackStarted:Z

    if-nez p2, :cond_17

    .line 637
    iget-object p2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mAudioTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    invoke-interface {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;->onStarted()V

    .line 638
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mIsAudioTrackStarted:Z

    .line 640
    :cond_17
    iget-object p2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;

    # getter for: Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mLastProgressMillis:J
    invoke-static {p2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->access$500(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;)J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    # setter for: Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mLastProgressMillis:J
    invoke-static {p2, v0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->access$502(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;J)J

    .line 641
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mAudioTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;

    # getter for: Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mLastProgressMillis:J
    invoke-static {p2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->access$500(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;->onProgress(J)V

    goto :goto_5f

    :cond_2e
    if-ne p2, v1, :cond_5f

    .line 645
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mIsVideoTrackStarted:Z

    if-nez p1, :cond_5f

    .line 646
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mVideoTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;->onStarted()V

    .line 647
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mIsVideoTrackStarted:Z

    goto :goto_5f

    :cond_3c
    if-ne p2, v1, :cond_5f

    .line 654
    iget-boolean p2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mIsVideoTrackStarted:Z

    if-nez p2, :cond_49

    .line 655
    iget-object p2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mVideoTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    invoke-interface {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;->onStarted()V

    .line 656
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mIsVideoTrackStarted:Z

    .line 658
    :cond_49
    iget-object p2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;

    # getter for: Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mLastProgressMillis:J
    invoke-static {p2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->access$500(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;)J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    # setter for: Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mLastProgressMillis:J
    invoke-static {p2, v0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->access$502(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;J)J

    .line 659
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mVideoTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;

    # getter for: Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->mLastProgressMillis:J
    invoke-static {p2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->access$500(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;->onProgress(J)V

    :cond_5f
    :goto_5f
    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .registers 4

    const/4 p1, 0x0

    .line 618
    check-cast p1, Lcom/sonymobile/android/media/MediaRecorder;

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->onInfo(Lcom/sonymobile/android/media/MediaRecorder;II)V

    return-void
.end method
