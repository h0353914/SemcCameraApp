.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OrientationDegreeChangedListenerImpl;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/CameraActivity$OrientationDegreeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrientationDegreeChangedListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .registers 2

    .line 9111
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OrientationDegreeChangedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;)V
    .registers 3

    .line 9111
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OrientationDegreeChangedListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    return-void
.end method


# virtual methods
.method public onOrientationDegreeChanged(I)V
    .registers 3

    .line 9116
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OrientationDegreeChangedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mBaseLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$800(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OrientationDegreeChangedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mBaseLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$800(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getHorizontalLevelMeterView()Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OrientationDegreeChangedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 9117
    # invokes: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isHorizontalLevelMeterEnabled()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$10100(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 9118
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OrientationDegreeChangedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    # getter for: Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->mBaseLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$800(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getHorizontalLevelMeterView()Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->setOrientationDegree(I)V

    :cond_29
    return-void
.end method
