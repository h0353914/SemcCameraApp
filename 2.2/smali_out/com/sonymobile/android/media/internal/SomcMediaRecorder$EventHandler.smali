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

    .line 926
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 928
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$EventHandler;->mRecorder:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 933
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$EventHandler;->mRecorder:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;

    .line 935
    iget v0, p1, Landroid/os/Message;->arg1:I

    const v1, 0xfffffff

    and-int/2addr v0, v1

    .line 936
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_25

    const/16 p1, 0x65

    if-eq v1, p1, :cond_21

    const/16 p1, 0x67

    if-eq v1, p1, :cond_1d

    goto :goto_39

    .line 959
    :cond_1d
    # invokes: Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->muxerTrackStopped(Z)V
    invoke-static {p0, v2}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->access$200(Lcom/sonymobile/android/media/internal/SomcMediaRecorder;Z)V

    goto :goto_39

    .line 955
    :cond_21
    # invokes: Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->muxerTrackStopped(Z)V
    invoke-static {p0, v3}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->access$200(Lcom/sonymobile/android/media/internal/SomcMediaRecorder;Z)V

    goto :goto_39

    :cond_25
    const/4 v1, 0x4

    if-eq v0, v1, :cond_34

    packed-switch v0, :pswitch_data_3a

    goto :goto_39

    .line 949
    :pswitch_2c
    # invokes: Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->muxerTrackSet(Z)V
    invoke-static {p0, v2}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->access$100(Lcom/sonymobile/android/media/internal/SomcMediaRecorder;Z)V

    goto :goto_39

    .line 945
    :pswitch_30
    # invokes: Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->muxerTrackSet(Z)V
    invoke-static {p0, v3}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->access$100(Lcom/sonymobile/android/media/internal/SomcMediaRecorder;Z)V

    goto :goto_39

    .line 941
    :cond_34
    iget p1, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->reportError(I)V
    invoke-static {p0, p1}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder;->access$000(Lcom/sonymobile/android/media/internal/SomcMediaRecorder;I)V

    :goto_39
    return-void

    :pswitch_data_3a
    .packed-switch 0xa
        :pswitch_30
        :pswitch_2c
    .end packed-switch
.end method
