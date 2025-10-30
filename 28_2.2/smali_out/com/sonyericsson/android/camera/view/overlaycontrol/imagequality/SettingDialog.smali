.class abstract Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;
.super Landroid/widget/RelativeLayout;
.source "SettingDialog.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogInterface;


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingDialog"


# instance fields
.field private mLayoutCoordinator:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/LayoutCoordinator;

.field protected mOrientation:I

.field private mParentView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 28
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;->mOrientation:I

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;)Landroid/view/ViewGroup;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;->mParentView:Landroid/view/ViewGroup;

    return-object p0
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 88
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 90
    new-instance v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog$1;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method public hitTest(II)Z
    .registers 4

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 106
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 107
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 115
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 116
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x1

    return p0
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 37
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 38
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;->mLayoutCoordinator:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/LayoutCoordinator;

    if-eqz p1, :cond_e

    .line 39
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;->mLayoutCoordinator:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/LayoutCoordinator;

    iget p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;->mOrientation:I

    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/LayoutCoordinator;->coordinatePosition(I)V

    :cond_e
    return-void
.end method

.method public open(Landroid/view/ViewGroup;)V
    .registers 3

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;->open(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public open(Landroid/view/ViewGroup;Z)V
    .registers 3

    if-nez p1, :cond_a

    .line 76
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parent view shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 79
    :cond_a
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;->mParentView:Landroid/view/ViewGroup;

    .line 80
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public abstract setAdapter(Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;)V
.end method

.method public setLayoutCoordinator(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/LayoutCoordinator;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;->mLayoutCoordinator:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/LayoutCoordinator;

    return-void
.end method

.method public setSensorOrientation(I)V
    .registers 3

    .line 48
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;->mOrientation:I

    .line 50
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;->mLayoutCoordinator:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/LayoutCoordinator;

    if-eqz v0, :cond_b

    .line 51
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;->mLayoutCoordinator:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/LayoutCoordinator;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/LayoutCoordinator;->coordinateSize(I)V

    :cond_b
    return-void
.end method
