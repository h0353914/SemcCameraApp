.class public Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;
.super Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;
.source "PagingTutorialNormalNavigator.java"


# instance fields
.field protected mGotIt:Landroid/widget/TextView;

.field protected mNext:Landroid/widget/TextView;

.field protected mPageIcons:Landroid/widget/LinearLayout;

.field protected mPrevIcon:Landroid/widget/ImageView;

.field private mSkip:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private updateClickEventActivation()V
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mSkip:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->updateClickEventListener(Landroid/view/View;)V

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mNext:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->updateClickEventListener(Landroid/view/View;)V

    .line 211
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPrevIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->updateClickEventListener(Landroid/view/View;)V

    .line 212
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mGotIt:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->updateClickEventListener(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected doFirstPage()V
    .registers 4

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPrevIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_38

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mSkip:Landroid/widget/TextView;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mNext:Landroid/widget/TextView;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mGotIt:Landroid/widget/TextView;

    if-eqz v1, :cond_38

    .line 149
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-nez v0, :cond_22

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPrevIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mSkip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    :cond_22
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mGotIt:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_34

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mGotIt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mNext:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    :cond_34
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->updateClickEventActivation()V

    return-void

    .line 146
    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "called before inflation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected doLastPage()V
    .registers 4

    .line 191
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPrevIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mSkip:Landroid/widget/TextView;

    if-eqz v0, :cond_38

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mNext:Landroid/widget/TextView;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mGotIt:Landroid/widget/TextView;

    if-eqz v1, :cond_38

    .line 195
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-nez v0, :cond_22

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mSkip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPrevIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    :cond_22
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mNext:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_34

    .line 201
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mNext:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mGotIt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    :cond_34
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->updateClickEventActivation()V

    return-void

    .line 192
    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "called before inflation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected doMiddlePage()V
    .registers 4

    .line 168
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPrevIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mSkip:Landroid/widget/TextView;

    if-eqz v0, :cond_38

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mNext:Landroid/widget/TextView;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mGotIt:Landroid/widget/TextView;

    if-eqz v1, :cond_38

    .line 172
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-nez v0, :cond_22

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mSkip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPrevIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    :cond_22
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mGotIt:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_34

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mGotIt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mNext:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    :cond_34
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->updateClickEventActivation()V

    return-void

    .line 169
    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "called before inflation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected doSingleContent()V
    .registers 4

    .line 125
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPrevIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mSkip:Landroid/widget/TextView;

    if-eqz v0, :cond_2d

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mNext:Landroid/widget/TextView;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mGotIt:Landroid/widget/TextView;

    if-eqz v1, :cond_2d

    const/4 v1, 0x4

    .line 129
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mNext:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPrevIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mGotIt:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPageIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 136
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->updateClickEventActivation()V

    return-void

    .line 126
    :cond_2d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "called before inflation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected getPageCount()I
    .registers 2

    .line 96
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPageIcons:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_9

    .line 100
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p0

    return p0

    .line 97
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "called before inflation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected onFinishInflate()V
    .registers 2

    const v0, 0x7f090114

    .line 217
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mSkip:Landroid/widget/TextView;

    const v0, 0x7f090111

    .line 218
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mNext:Landroid/widget/TextView;

    const v0, 0x7f090110

    .line 219
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mGotIt:Landroid/widget/TextView;

    const v0, 0x7f090113

    .line 220
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPrevIcon:Landroid/widget/ImageView;

    const v0, 0x7f090112

    .line 222
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPageIcons:Landroid/widget/LinearLayout;

    .line 224
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->onFinishInflate()V

    return-void
.end method

.method protected setPageSize(I)V
    .registers 8

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPageIcons:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_45

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, p1, :cond_44

    .line 74
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 78
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070157

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 80
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 82
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x7f0803a2

    .line 83
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setForceDarkAllowed(Z)V

    .line 85
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPageIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_44
    return-void

    .line 70
    :cond_45
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "called before inflation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRotationY(F)V
    .registers 3

    .line 54
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->setRotationY(F)V

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mSkip:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 56
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotationY(F)V

    .line 58
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mNext:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotationY(F)V

    .line 59
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mGotIt:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setRotationY(F)V

    return-void
.end method

.method protected updatePageSelected(I)V
    .registers 5

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPageIcons:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    move v1, v0

    .line 109
    :goto_6
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->getPageCount()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 110
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPageIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 111
    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 115
    :cond_18
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;->mPageIcons:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x1

    .line 116
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    return-void

    .line 106
    :cond_23
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "called before inflation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
