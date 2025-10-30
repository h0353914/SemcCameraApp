.class Lcom/sonyericsson/android/camera/view/AutoReviewController$PreviewTimerHandler;
.super Landroid/os/Handler;
.source "AutoReviewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/AutoReviewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewTimerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/AutoReviewController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/AutoReviewController;)V
    .registers 2

    .line 182
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController$PreviewTimerHandler;->this$0:Lcom/sonyericsson/android/camera/view/AutoReviewController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/AutoReviewController;Lcom/sonyericsson/android/camera/view/AutoReviewController$1;)V
    .registers 3

    .line 182
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/AutoReviewController$PreviewTimerHandler;-><init>(Lcom/sonyericsson/android/camera/view/AutoReviewController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 186
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_1e

    goto :goto_1c

    .line 192
    :pswitch_6
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController$PreviewTimerHandler;->this$0:Lcom/sonyericsson/android/camera/view/AutoReviewController;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->hide()V

    .line 193
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController$PreviewTimerHandler;->this$0:Lcom/sonyericsson/android/camera/view/AutoReviewController;

    # getter for: Lcom/sonyericsson/android/camera/view/AutoReviewController;->mListener:Lcom/sonyericsson/android/camera/view/AutoReviewController$OnAutoReviewEventListener;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->access$100(Lcom/sonyericsson/android/camera/view/AutoReviewController;)Lcom/sonyericsson/android/camera/view/AutoReviewController$OnAutoReviewEventListener;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 194
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController$PreviewTimerHandler;->this$0:Lcom/sonyericsson/android/camera/view/AutoReviewController;

    # getter for: Lcom/sonyericsson/android/camera/view/AutoReviewController;->mListener:Lcom/sonyericsson/android/camera/view/AutoReviewController$OnAutoReviewEventListener;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->access$100(Lcom/sonyericsson/android/camera/view/AutoReviewController;)Lcom/sonyericsson/android/camera/view/AutoReviewController$OnAutoReviewEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/AutoReviewController$OnAutoReviewEventListener;->onAutoReviewClosed()V

    :cond_1c
    :goto_1c
    :pswitch_1c
    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_6
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method
