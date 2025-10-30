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

    if-eqz v0, :cond_22

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 507
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 510
    :cond_22
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    # invokes: Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->getCurrentDialog()Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogInterface;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->access$000(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogInterface;

    move-result-object v0

    if-eqz v0, :cond_81

    .line 513
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_82

    goto :goto_81

    .line 523
    :pswitch_32
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mIsCanceledOnTouchOutside:Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->access$300(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Z

    move-result v1

    if-nez v1, :cond_3b

    return v2

    .line 526
    :cond_3b
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

    if-nez p1, :cond_64

    .line 531
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeCurrentDialog()Z

    :cond_64
    return v2

    .line 515
    :pswitch_65
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mExclusiveViewListener:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$ExclusiveViewListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->access$100(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$ExclusiveViewListener;

    move-result-object v0

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    .line 516
    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mExclusiveViewListener:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$ExclusiveViewListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->access$100(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$ExclusiveViewListener;

    move-result-object v0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    # getter for: Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBackground:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->access$200(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$ExclusiveViewListener;->isExclusiveView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_80

    return v1

    :cond_80
    return v2

    :cond_81
    :goto_81
    return v1

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_65
        :pswitch_32
    .end packed-switch
.end method
