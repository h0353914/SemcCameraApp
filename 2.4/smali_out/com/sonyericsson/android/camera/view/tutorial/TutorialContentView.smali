.class public abstract Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;
.super Landroid/widget/RelativeLayout;
.source "TutorialContentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;,
        Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;,
        Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;
    }
.end annotation


# instance fields
.field protected mContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

.field private mOnClickCloseButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected notifyOnDoneClicked(Landroid/view/View;)V
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->mOnClickCloseButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;

    if-eqz v0, :cond_7

    .line 106
    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;->onClickCloseButton(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 96
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->notifyOnDoneClicked(Landroid/view/View;)V

    return-void
.end method

.method protected onLayoutToLandscape()V
    .registers 1

    .line 77
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->onUpdateViewContent()V

    return-void
.end method

.method protected onLayoutToPortrait()V
    .registers 1

    .line 85
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->onUpdateViewContent()V

    return-void
.end method

.method protected abstract onUpdateViewContent()V
.end method

.method protected final setContent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->mContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    .line 55
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->mContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->isPortrait()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 56
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->onLayoutToPortrait()V

    goto :goto_11

    .line 58
    :cond_e
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->onLayoutToLandscape()V

    :goto_11
    return-void
.end method

.method protected final setOnClickCloseButtonListener(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->mOnClickCloseButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;

    return-void
.end method
