.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$24$1;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$24;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$24;)V
    .registers 2

    .line 3713
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$24$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished()V
    .registers 4

    .line 3716
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$24$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$24;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$24;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->resetAnimationProperty()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$6500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    .line 3717
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$24$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$24;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$24;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const/4 v1, 0x0

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setIsSwitchingAnimationProgress(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    .line 3718
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$24$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$24;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$24;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->is16_9Device()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$6800(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 3719
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$24$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$24;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$24;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$24$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$24;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$24;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isFront()Z
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$6900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$24$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$24;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$24;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 3720
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isManualIqControlEnabled()Z
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$7000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v2

    if-nez v2, :cond_3c

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$24$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$24;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$24;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 3721
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isSimpleIqControlEnabled()Z

    move-result v2

    if-nez v2, :cond_3c

    const/4 v1, 0x1

    .line 3719
    :cond_3c
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setFrontAngleSwitchButtonVisibility(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$7100(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    :cond_3f
    return-void
.end method
