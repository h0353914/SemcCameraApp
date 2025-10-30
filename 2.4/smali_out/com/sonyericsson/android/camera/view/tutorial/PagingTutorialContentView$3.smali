.class Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$3;
.super Ljava/lang/Object;
.source "PagingTutorialContentView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->createMediaPlayer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V
    .registers 2

    .line 423
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$3;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 2

    .line 427
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$3;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    # getter for: Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mVideo:Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$200(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;->updateScale()V

    .line 428
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$3;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    # getter for: Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$1000(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
