.class public Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;
.super Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;
.source "IconTextIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TEXT_VISIBLE_DURATION:J = 0x7d0L


# instance fields
.field private mOrientation:I

.field private final mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .registers 3

    .line 26
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;-><init>(Landroid/widget/ImageView;)V

    .line 27
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mText:Landroid/widget/TextView;

    .line 29
    invoke-virtual {p2}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator$1;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator$1;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 54
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->update()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;)Landroid/widget/TextView;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;)I
    .registers 1

    .line 19
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mOrientation:I

    return p0
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    .line 90
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_11

    .line 91
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mText:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_11
    return-void
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .registers 2

    .line 62
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSensorOrientation(I)V
    .registers 2

    .line 66
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    .line 67
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mOrientation:I

    .line 68
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->update()V

    return-void
.end method

.method public setTextResource(I)V
    .registers 2

    .line 58
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method protected update()V
    .registers 4

    .line 73
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->update()V

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_27

    .line 76
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 78
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mOn:Z

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mVisible:Z

    if-eqz v0, :cond_20

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mText:Landroid/widget/TextView;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_27

    .line 82
    :cond_20
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mText:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_27
    :goto_27
    return-void
.end method
