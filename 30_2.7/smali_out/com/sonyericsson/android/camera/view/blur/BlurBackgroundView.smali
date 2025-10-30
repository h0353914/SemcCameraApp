.class Lcom/sonyericsson/android/camera/view/blur/BlurBackgroundView;
.super Lcom/sonyericsson/android/camera/view/blur/BlurView;
.source "BlurBackgroundView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 19
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/blur/BlurView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/blur/BlurView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method
