.class Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;
.super Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper$HoverEventInterceptView;
.source "BaseLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RootView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Landroid/app/Activity;)V
    .registers 3

    .line 320
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    .line 321
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper$HoverEventInterceptView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 326
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->access$000(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 329
    :cond_a
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->access$000(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 342
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper$HoverEventInterceptView;->onMeasure(II)V

    .line 345
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->access$100(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    .line 346
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->access$100(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    .line 347
    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsTalkbackEffective:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;
    invoke-static {}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->access$200()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;->UNKNOWN:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    if-ne v0, v1, :cond_42

    if-le p1, p2, :cond_49

    .line 349
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->access$300(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/cameracommon/utility/ViewUtility;->getRealSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p2

    .line 350
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    if-ge p1, p2, :cond_37

    .line 351
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;->TALKBACK_ON:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    # setter for: Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsTalkbackEffective:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->access$202(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    goto :goto_3c

    .line 353
    :cond_37
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;->TALKBACK_OFF:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    # setter for: Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsTalkbackEffective:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->access$202(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    .line 355
    :goto_3c
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->updateAppsUiMarginsForTalkBack()V

    goto :goto_49

    :cond_42
    if-ge p1, p2, :cond_49

    .line 359
    sget-object p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;->UNKNOWN:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    # setter for: Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsTalkbackEffective:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->access$202(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    :cond_49
    :goto_49
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 334
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->access$000(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 337
    :cond_a
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->access$000(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
