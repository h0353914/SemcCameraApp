.class Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;
.super Landroid/os/Handler;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/media/MediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackHandler"
.end annotation


# instance fields
.field private final mRecorder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonymobile/android/media/MediaRecorder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonymobile/android/media/MediaRecorder;


# direct methods
.method public constructor <init>(Lcom/sonymobile/android/media/MediaRecorder;Ljava/lang/ref/WeakReference;Landroid/os/Looper;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonymobile/android/media/MediaRecorder;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 1065
    iput-object p1, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    .line 1066
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1068
    iput-object p2, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->mRecorder:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12

    .line 1073
    iget v0, p1, Landroid/os/Message;->arg1:I

    const v1, 0xfffffff

    and-int/2addr v0, v1

    .line 1074
    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, " message:"

    const-string v3, "Message is rejected because recorder is already stopped. what:"

    const-string v4, "MediaRecorder"

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v1, v6, :cond_83

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eq v1, v8, :cond_6e

    const/4 v8, 0x3

    if-eq v1, v8, :cond_59

    if-eq v1, v5, :cond_1e

    goto/16 :goto_f4

    .line 1112
    :cond_1e
    iget-object v1, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    # getter for: Lcom/sonymobile/android/media/MediaRecorder;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;
    invoke-static {v1}, Lcom/sonymobile/android/media/MediaRecorder;->access$000(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;

    move-result-object v1

    if-eqz v1, :cond_f4

    .line 1113
    iget-object v1, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    # getter for: Lcom/sonymobile/android/media/MediaRecorder;->mIsAvailable:Z
    invoke-static {v1}, Lcom/sonymobile/android/media/MediaRecorder;->access$100(Lcom/sonymobile/android/media/MediaRecorder;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1114
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    # getter for: Lcom/sonymobile/android/media/MediaRecorder;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;
    invoke-static {p0}, Lcom/sonymobile/android/media/MediaRecorder;->access$000(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;

    move-result-object p0

    invoke-interface {p0, v7, v6, v9}, Landroid/media/MediaRecorder$OnErrorListener;->onError(Landroid/media/MediaRecorder;II)V

    goto/16 :goto_f4

    .line 1116
    :cond_39
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f4

    .line 1107
    :cond_59
    iget-object p1, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    # getter for: Lcom/sonymobile/android/media/MediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;
    invoke-static {p1}, Lcom/sonymobile/android/media/MediaRecorder;->access$200(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object p1

    if-eqz p1, :cond_f4

    .line 1108
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    # getter for: Lcom/sonymobile/android/media/MediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;
    invoke-static {p0}, Lcom/sonymobile/android/media/MediaRecorder;->access$200(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object p0

    const/16 p1, 0x321

    invoke-interface {p0, v7, p1, v9}, Landroid/media/MediaRecorder$OnInfoListener;->onInfo(Landroid/media/MediaRecorder;II)V

    goto/16 :goto_f4

    .line 1102
    :cond_6e
    iget-object p1, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    # getter for: Lcom/sonymobile/android/media/MediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;
    invoke-static {p1}, Lcom/sonymobile/android/media/MediaRecorder;->access$200(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object p1

    if-eqz p1, :cond_f4

    .line 1103
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    # getter for: Lcom/sonymobile/android/media/MediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;
    invoke-static {p0}, Lcom/sonymobile/android/media/MediaRecorder;->access$200(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object p0

    const/16 p1, 0x320

    invoke-interface {p0, v7, p1, v9}, Landroid/media/MediaRecorder$OnInfoListener;->onInfo(Landroid/media/MediaRecorder;II)V

    goto/16 :goto_f4

    :cond_83
    if-eq v0, v5, :cond_ba

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_a4

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_8e

    goto :goto_f4

    .line 1090
    :cond_8e
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    # getter for: Lcom/sonymobile/android/media/MediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;
    invoke-static {v0}, Lcom/sonymobile/android/media/MediaRecorder;->access$200(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_f4

    .line 1091
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    # getter for: Lcom/sonymobile/android/media/MediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;
    invoke-static {p0}, Lcom/sonymobile/android/media/MediaRecorder;->access$200(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v7, v0, p1}, Landroid/media/MediaRecorder$OnInfoListener;->onInfo(Landroid/media/MediaRecorder;II)V

    goto :goto_f4

    .line 1095
    :cond_a4
    iget-object v0, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    # getter for: Lcom/sonymobile/android/media/MediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;
    invoke-static {v0}, Lcom/sonymobile/android/media/MediaRecorder;->access$200(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_f4

    .line 1096
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    # getter for: Lcom/sonymobile/android/media/MediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;
    invoke-static {p0}, Lcom/sonymobile/android/media/MediaRecorder;->access$200(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v7, v0, p1}, Landroid/media/MediaRecorder$OnInfoListener;->onInfo(Landroid/media/MediaRecorder;II)V

    goto :goto_f4

    .line 1078
    :cond_ba
    iget-object v1, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    # getter for: Lcom/sonymobile/android/media/MediaRecorder;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;
    invoke-static {v1}, Lcom/sonymobile/android/media/MediaRecorder;->access$000(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;

    move-result-object v1

    if-eqz v1, :cond_f4

    .line 1079
    iget-object v1, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    # getter for: Lcom/sonymobile/android/media/MediaRecorder;->mIsAvailable:Z
    invoke-static {v1}, Lcom/sonymobile/android/media/MediaRecorder;->access$100(Lcom/sonymobile/android/media/MediaRecorder;)Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 1080
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorder$CallbackHandler;->this$0:Lcom/sonymobile/android/media/MediaRecorder;

    # getter for: Lcom/sonymobile/android/media/MediaRecorder;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;
    invoke-static {p0}, Lcom/sonymobile/android/media/MediaRecorder;->access$000(Lcom/sonymobile/android/media/MediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v7, v6, p1}, Landroid/media/MediaRecorder$OnErrorListener;->onError(Landroid/media/MediaRecorder;II)V

    goto :goto_f4

    .line 1083
    :cond_d6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f4
    :goto_f4
    return-void
.end method
