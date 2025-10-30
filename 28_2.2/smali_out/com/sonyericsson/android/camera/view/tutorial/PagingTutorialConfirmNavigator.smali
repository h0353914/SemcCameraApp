.class public Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;
.super Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;
.source "PagingTutorialConfirmNavigator.java"


# instance fields
.field private mConfirm:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mNext:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPageSize:I

.field private mPrevIcon:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private updateClickEventActivation()V
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mNext:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->updateClickEventListener(Landroid/view/View;)V

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mPrevIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->updateClickEventListener(Landroid/view/View;)V

    const v0, 0x7f0901a4

    .line 163
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->updateClickEventListener(Landroid/view/View;)V

    const v0, 0x7f0901ac

    .line 164
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->updateClickEventListener(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected doFirstPage()V
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mPrevIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mNext:Landroid/widget/TextView;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mConfirm:Landroid/view/View;

    if-nez v0, :cond_d

    goto :goto_32

    .line 104
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mPrevIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_1b

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mPrevIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    :cond_1b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mConfirm:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2e

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mConfirm:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mNext:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    :cond_2e
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->updateClickEventActivation()V

    return-void

    .line 101
    :cond_32
    :goto_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "called before inflation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected doLastPage()V
    .registers 4

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mPrevIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mNext:Landroid/widget/TextView;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mConfirm:Landroid/view/View;

    if-nez v0, :cond_d

    goto :goto_32

    .line 148
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mPrevIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1c

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mPrevIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    :cond_1c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mNext:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2e

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mNext:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mConfirm:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    :cond_2e
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->updateClickEventActivation()V

    return-void

    .line 145
    :cond_32
    :goto_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "called before inflation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected doMiddlePage()V
    .registers 4

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mPrevIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mNext:Landroid/widget/TextView;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mConfirm:Landroid/view/View;

    if-nez v0, :cond_d

    goto :goto_32

    .line 126
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mPrevIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1c

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mPrevIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    :cond_1c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mConfirm:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2e

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mConfirm:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mNext:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    :cond_2e
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->updateClickEventActivation()V

    return-void

    .line 123
    :cond_32
    :goto_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "called before inflation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected doSingleContent()V
    .registers 4

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mPrevIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mNext:Landroid/widget/TextView;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mConfirm:Landroid/view/View;

    if-nez v0, :cond_d

    goto :goto_22

    .line 87
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mNext:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mConfirm:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mPrevIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->updateClickEventActivation()V

    return-void

    .line 84
    :cond_22
    :goto_22
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "called before inflation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected getPageCount()I
    .registers 1

    .line 74
    iget p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mPageSize:I

    return p0
.end method

.method protected onFinishInflate()V
    .registers 2

    const v0, 0x7f0900e8

    .line 169
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mNext:Landroid/widget/TextView;

    const v0, 0x7f090047

    .line 170
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mConfirm:Landroid/view/View;

    const v0, 0x7f0900ea

    .line 171
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mPrevIcon:Landroid/widget/ImageView;

    .line 173
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->onFinishInflate()V

    return-void
.end method

.method protected setPageSize(I)V
    .registers 2

    .line 64
    iput p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mPageSize:I

    return-void
.end method

.method public setRotationY(F)V
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mNext:Landroid/widget/TextView;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mConfirm:Landroid/view/View;

    if-nez v0, :cond_9

    goto :goto_17

    .line 52
    :cond_9
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->setRotationY(F)V

    .line 53
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mNext:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotationY(F)V

    .line 54
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;->mConfirm:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationY(F)V

    return-void

    .line 49
    :cond_17
    :goto_17
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "called before inflation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
