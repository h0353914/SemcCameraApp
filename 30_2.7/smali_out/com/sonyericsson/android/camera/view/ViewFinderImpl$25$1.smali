.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$25$1;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/animation/TransitionAnimationController$TransitionAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl$25;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$25;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$25;)V
    .registers 2

    .line 3669
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$25$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished()V
    .registers 3

    .line 3672
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$25$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$25;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$25;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->resetAnimationProperty()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$6300(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    .line 3673
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$25$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$25;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$25;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const/4 v1, 0x0

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setIsSwitchingAnimationProgress(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    .line 3674
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$25$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$25;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$25;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$25$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$25;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$25;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->shouldShowFrontAngleSwitchButton()Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$6600(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v1

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setFrontAngleSwitchButtonVisibility(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$6700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    .line 3675
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$25$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$25;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$25;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$25$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$25;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$25;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->canShowZoomSwitchButton()Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$6800(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v1

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setZoomSwitchButtonVisibility(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$6900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    return-void
.end method
