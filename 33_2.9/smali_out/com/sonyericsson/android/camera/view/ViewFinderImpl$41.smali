.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$41;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "ViewFinderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->hidePredictiveLaunchCover(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .registers 2

    .line 11582
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$41;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 11585
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$41;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mBaseLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->releasePredictiveLaunchCover()V

    .line 11586
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$41;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isZooming()Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$4400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result p1

    if-nez p1, :cond_23

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$41;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isFocusing()Z
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$12500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result p1

    if-nez p1, :cond_23

    .line 11587
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$41;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mBaseLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setViewFinderGestureDetectorEnabled(ZZ)V

    :cond_23
    return-void
.end method
