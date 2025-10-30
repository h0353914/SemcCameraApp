.class Lcom/sonymobile/android/media/internal/SomcMediaRecorder$EventHandler;
.super Landroid/os/Handler;
.source "SomcMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/media/internal/SomcMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EventHandler"
.end annotation


# instance fields
.field private final mRecorder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonymobile/android/media/internal/SomcMediaRecorder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Landroid/os/Looper;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonymobile/android/media/internal/SomcMediaRecorder;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 899
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 901
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$EventHandler;->mRecorder:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 906
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$EventHandler;->mRecorder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    .line 908
    iget v1, p1, Landroid/os/Message;->arg1:I

    const v2, 0xfffffff

    and-int/2addr v1, v2

    .line 909
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4a

    const/16 v1, 0x65

    if-eq v2, v1, :cond_46

    const/16 v1, 0x67

    if-eq v2, v1, :cond_42

    packed-switch v2, :pswitch_data_60

    goto :goto_5e

    .line 942
    :pswitch_20
    # getter for: Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;
    invoke-static {v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->access$300(Lcom/sonymobile/android/media/internal/SomcMediaRecorder;)Lcom/sonymobile/android/media/internal/AudioTrack;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->updateFirstVideoFrameTimeUs(J)V

    goto :goto_5e

    .line 938
    :pswitch_30
    # getter for: Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->mAudioTrack:Lcom/sonymobile/android/media/internal/AudioTrack;
    invoke-static {v0}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->access$300(Lcom/sonymobile/android/media/internal/SomcMediaRecorder;)Lcom/sonymobile/android/media/internal/AudioTrack;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/sonymobile/android/media/internal/AudioTrack;->updateVideoInformation(JI)V

    goto :goto_5e

    .line 932
    :cond_42
    # invokes: Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->muxerTrackStopped(Z)V
    invoke-static {v0, v3}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->access$200(Lcom/sonymobile/android/media/internal/SomcMediaRecorder;Z)V

    goto :goto_5e

    .line 928
    :cond_46
    # invokes: Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->muxerTrackStopped(Z)V
    invoke-static {v0, v4}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->access$200(Lcom/sonymobile/android/media/internal/SomcMediaRecorder;Z)V

    goto :goto_5e

    :cond_4a
    const/4 v2, 0x4

    if-eq v1, v2, :cond_59

    packed-switch v1, :pswitch_data_68

    goto :goto_5e

    .line 922
    :pswitch_51
    # invokes: Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->muxerTrackSet(Z)V
    invoke-static {v0, v3}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->access$100(Lcom/sonymobile/android/media/internal/SomcMediaRecorder;Z)V

    goto :goto_5e

    .line 918
    :pswitch_55
    # invokes: Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->muxerTrackSet(Z)V
    invoke-static {v0, v4}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->access$100(Lcom/sonymobile/android/media/internal/SomcMediaRecorder;Z)V

    goto :goto_5e

    .line 914
    :cond_59
    iget p1, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->reportError(I)V
    invoke-static {v0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->access$000(Lcom/sonymobile/android/media/internal/SomcMediaRecorder;I)V

    :goto_5e
    return-void

    nop

    :pswitch_data_60
    .packed-switch 0xc
        :pswitch_30
        :pswitch_20
    .end packed-switch

    :pswitch_data_68
    .packed-switch 0xa
        :pswitch_55
        :pswitch_51
    .end packed-switch
.end method
