.class Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;
.super Landroid/widget/FrameLayout;
.source "SettingDialogStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Background"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;Landroid/content/Context;)V
    .registers 3

    .line 501
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    .line 502
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 507
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_24

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 508
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 507
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 510
    :cond_24
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    # invokes: Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->getCurrentDialog()Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogInterface;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->access$000(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogInterface;

    move-result-object v0

    if-eqz v0, :cond_84

    .line 513
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_68

    if-eq v3, v2, :cond_35

    goto :goto_84

    .line 523
    :cond_35
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mIsCanceledOnTouchOutside:Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->access$300(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Z

    move-result v1

    if-nez v1, :cond_3e

    return v2

    .line 526
    :cond_3e
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 527
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBackground:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->access$200(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 528
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 529
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 530
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    add-int/2addr v1, p1

    .line 528
    invoke-interface {v0, v3, v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogInterface;->hitTest(II)Z

    move-result p1

    if-nez p1, :cond_67

    .line 531
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeCurrentDialog()Z

    :cond_67
    return v2

    .line 515
    :cond_68
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mExclusiveViewListener:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$ExclusiveViewListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->access$100(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$ExclusiveViewListener;

    move-result-object v0

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    .line 516
    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mExclusiveViewListener:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$ExclusiveViewListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->access$100(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$ExclusiveViewListener;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBackground:Landroid/view/ViewGroup;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->access$200(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$ExclusiveViewListener;->isExclusiveView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_83

    return v1

    :cond_83
    return v2

    :cond_84
    :goto_84
    return v1
.end method
