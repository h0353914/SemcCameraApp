.class public abstract Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;
.super Ljava/lang/Object;
.source "AbsSelectableDialog.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogInterface;
.implements Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;,
        Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;,
        Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;,
        Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;
    }
.end annotation


# instance fields
.field private mAnimation:Landroid/animation/Animator;

.field protected mBottomMarginHint:I

.field protected final mContext:Landroid/content/Context;

.field protected mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

.field protected mDialogType:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

.field protected mIsExpandedWhenOpened:Z

.field protected mOrientation:I

.field protected final mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

.field protected mParent:Landroid/widget/FrameLayout;

.field protected mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Z)V
    .registers 5

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    .line 115
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mContext:Landroid/content/Context;

    .line 116
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    const/4 p1, 0x0

    .line 117
    iput p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mBottomMarginHint:I

    .line 118
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mIsExpandedWhenOpened:Z

    return-void
.end method

.method static synthetic access$002(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;Landroid/animation/Animator;)Landroid/animation/Animator;
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mAnimation:Landroid/animation/Animator;

    return-object p1
.end method

.method private computeContentsHeight()I
    .registers 3

    .line 297
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mIsExpandedWhenOpened:Z

    if-eqz v0, :cond_b

    .line 298
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getTotalArrangeHeight()I

    move-result v0

    return v0

    .line 300
    :cond_b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getArrangeHeightAtIndex(I)I

    move-result v0

    return v0
.end method

.method private getSideEdgeMargin()I
    .registers 2

    .line 293
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v0, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->dropShadowSpace:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private updateRotatableLayout()V
    .registers 5

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mParent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_5

    return-void

    .line 195
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->computeWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->computeHeight()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->updateRotatableLayout(Landroid/view/ViewGroup;II)V

    return-void
.end method


# virtual methods
.method public addPanel(Landroid/widget/ArrayAdapter;)V
    .registers 3

    const/4 v0, 0x0

    .line 207
    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->addPanel(Ljava/lang/String;Landroid/widget/ArrayAdapter;)V

    return-void
.end method

.method public addPanel(Ljava/lang/String;Landroid/widget/ArrayAdapter;)V
    .registers 4

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->addContent(Ljava/lang/String;Landroid/widget/ArrayAdapter;)V

    return-void
.end method

.method protected adjustLayout()V
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->updateDefaultScrollPosition()V

    .line 188
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->updateRotatableLayout()V

    return-void
.end method

.method public close()V
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mParent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_5

    return-void

    .line 129
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getScrollStatus()Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->EXIT:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    if-ne v0, v1, :cond_13

    .line 130
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->closeImmediate()V

    goto :goto_16

    .line 132
    :cond_13
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->startCloseAnimation()V

    :goto_16
    return-void
.end method

.method public closeImmediate()V
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mParent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_5

    return-void

    .line 143
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mParent:Landroid/widget/FrameLayout;

    .line 145
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mAnimation:Landroid/animation/Animator;

    if-eqz v1, :cond_14

    .line 148
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 150
    :cond_14
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    .line 151
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    return-void
.end method

.method protected computeHeight()I
    .registers 3

    .line 288
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->computeContentsHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->getSideEdgeMargin()I

    move-result v1

    add-int/2addr v0, v1

    .line 289
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v1, v1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightPortrait:I

    goto :goto_18

    :cond_14
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v1, v1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightLandscape:I

    .line 287
    :goto_18
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method protected computeWidth()I
    .registers 3

    .line 283
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v0, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemWidth:I

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->getSideEdgeMargin()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public hitTest(II)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public isExpanded()Z
    .registers 2

    .line 305
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mIsExpandedWhenOpened:Z

    return v0
.end method

.method public isOperationAcceptable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected isPortrait()Z
    .registers 3

    .line 178
    iget v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method protected onOrientationChanged(I)V
    .registers 3

    .line 182
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->setUiOrientation(I)V

    .line 183
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->updateRotatableLayout()V

    return-void
.end method

.method public onScrollFinished(Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;)V
    .registers 2

    return-void
.end method

.method public onScrollProgressChanged(F)V
    .registers 7

    .line 314
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scrollcontainer currentProgress:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1e
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_27

    .line 317
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mIsExpandedWhenOpened:Z

    goto :goto_29

    .line 319
    :cond_27
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mIsExpandedWhenOpened:Z

    :goto_29
    return-void
.end method

.method public setBottomMarginHint(I)V
    .registers 3

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->setBottomMarginHint(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    if-eqz v0, :cond_7

    .line 173
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->setEnabled(Z)V

    :cond_7
    return-void
.end method

.method public setSensorOrientation(I)V
    .registers 3

    .line 156
    iget v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mOrientation:I

    if-eq v0, p1, :cond_d

    .line 157
    iput p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mOrientation:I

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    if-eqz v0, :cond_d

    .line 160
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->onOrientationChanged(I)V

    :cond_d
    return-void
.end method

.method public setSettingDialogStack(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    return-void
.end method

.method public setTopMarginHint(I)V
    .registers 3

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->setTopMarginHint(I)V

    return-void
.end method

.method protected startCloseAnimation()V
    .registers 5

    const/4 v0, 0x0

    .line 249
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->setEnabled(Z)V

    .line 250
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->computeWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->computeHeight()I

    move-result v2

    new-instance v3, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$2;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$2;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->startCloseAnimation(IILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method protected startOpenAnimation()V
    .registers 5

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->computeWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->computeHeight()I

    move-result v2

    new-instance v3, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$1;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->startOpenAnimation(IILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
