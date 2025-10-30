.class public final Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$TransparentCoverIcon;
.super Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;
.source "SideTouchUiIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "TransparentCoverIcon"
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 154
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected attachView(Landroid/view/ViewGroup;)V
    .registers 2

    return-void
.end method

.method protected getIconView()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public onFocusChanged(Z)V
    .registers 2

    return-void
.end method

.method public setUiOrientation(I)V
    .registers 2

    return-void
.end method

.method public show()V
    .registers 1

    return-void
.end method
