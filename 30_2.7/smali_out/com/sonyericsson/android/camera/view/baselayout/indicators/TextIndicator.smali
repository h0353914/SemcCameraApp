.class public Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;
.super Ljava/lang/Object;
.source "TextIndicator.java"


# instance fields
.field protected mOn:Z

.field private final mText:Landroid/widget/TextView;

.field protected mVisible:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;->mText:Landroid/widget/TextView;

    .line 23
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;->update()V

    return-void
.end method


# virtual methods
.method public hide()V
    .registers 2

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;->mVisible:Z

    .line 37
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;->update()V

    return-void
.end method

.method public set(Z)V
    .registers 2

    .line 41
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;->mOn:Z

    .line 42
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;->update()V

    return-void
.end method

.method public setSensorOrientation(I)V
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;->mText:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotation(F)V

    .line 47
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;->update()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3

    .line 27
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .registers 2

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;->mVisible:Z

    .line 32
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;->update()V

    return-void
.end method

.method protected update()V
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_18

    .line 53
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;->mOn:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;->mVisible:Z

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_18

    .line 56
    :cond_11
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;->mText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_18
    :goto_18
    return-void
.end method
