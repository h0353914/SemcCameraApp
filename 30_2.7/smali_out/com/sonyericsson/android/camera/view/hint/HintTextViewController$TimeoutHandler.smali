.class Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;
.super Landroid/os/Handler;
.source "HintTextViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutHandler"
.end annotation


# static fields
.field private static final MSG_START_FADE_OUT:I = 0x2

.field private static final MSG_TIMEOUT:I = 0x1


# instance fields
.field public attachedContent:Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)V
    .registers 2

    .line 557
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$1;)V
    .registers 3

    .line 557
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)V

    return-void
.end method


# virtual methods
.method public cancelCount()V
    .registers 2

    const/4 v0, 0x1

    .line 579
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->removeMessages(I)V

    const/4 v0, 0x2

    .line 580
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->removeMessages(I)V

    .line 581
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    # getter for: Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextFadeOutAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->access$700(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 582
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    # getter for: Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mListener:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextContentListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->access$100(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextContentListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextContentListener;->onStateChanged()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 587
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_30

    goto :goto_2e

    .line 594
    :pswitch_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    # getter for: Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextFadeOutAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->access$700(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 595
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    # getter for: Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextFadeOutAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->access$700(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 596
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    # getter for: Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mHintTextFadeOutAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->access$700(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_2e

    .line 589
    :pswitch_25
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->attachedContent:Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    if-eqz p1, :cond_2e

    .line 590
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    # invokes: Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->cancelFromContentStack(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->access$400(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z

    :cond_2e
    :goto_2e
    return-void

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_25
        :pswitch_6
    .end packed-switch
.end method

.method public startFadeOut(JILcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .registers 7

    .line 570
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->cancelCount()V

    .line 571
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 572
    iput v1, v0, Landroid/os/Message;->what:I

    .line 573
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 574
    invoke-virtual {p0, v0, p1, p2}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 575
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->attachedContent:Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    return-void
.end method

.method public startTimeoutCount(JLcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .registers 5

    const/4 v0, 0x1

    .line 564
    invoke-virtual {p0, v0, p1, p2}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 565
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->attachedContent:Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    return-void
.end method
