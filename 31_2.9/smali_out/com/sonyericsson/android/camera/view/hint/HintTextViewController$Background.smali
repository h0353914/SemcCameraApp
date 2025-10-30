.class Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$Background;
.super Landroid/widget/FrameLayout;
.source "HintTextViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Background"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;Landroid/content/Context;)V
    .registers 3

    .line 774
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$Background;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    .line 775
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 3

    .line 780
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 785
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 787
    :cond_22
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$Background;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    # getter for: Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mContentPrioritizedStack:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->access$800(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_75

    .line 788
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_76

    goto :goto_75

    :pswitch_36
    return v2

    .line 790
    :pswitch_37
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$Background;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    const-class v3, Lcom/sonyericsson/android/camera/view/hint/HintTextAutoPowerOff;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->isHintTextDisplayed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 791
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$Background;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    # getter for: Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mAutoPowerOffExclusiveView:Landroid/view/View;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->access$900(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 792
    new-instance v0, Landroid/graphics/Point;

    .line 793
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$Background;->getTop()I

    move-result v4

    add-int/2addr v3, v4

    .line 794
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$Background;->getLeft()I

    move-result v4

    add-int/2addr p1, v4

    invoke-direct {v0, v3, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 795
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$Background;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    .line 796
    # getter for: Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->mAutoPowerOffExclusiveView:Landroid/view/View;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->access$900(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Landroid/view/View;

    move-result-object p1

    .line 795
    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isEventContainedInView(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result p1

    if-eqz p1, :cond_73

    return v2

    :cond_73
    return v1

    :cond_74
    return v2

    :cond_75
    :goto_75
    return v2

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_37
        :pswitch_36
    .end packed-switch
.end method
