.class public Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;
.super Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;
.source "ModeSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GridArrange"
.end annotation


# instance fields
.field private mItemMargin:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;


# direct methods
.method protected constructor <init>(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;Landroid/widget/ArrayAdapter;)V
    .registers 3

    .line 172
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    .line 173
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;-><init>(Landroid/widget/ArrayAdapter;)V

    .line 174
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->setup()V

    .line 175
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->fetchItems()V

    return-void
.end method

.method private getLastRowContainer()Landroid/widget/LinearLayout;
    .registers 2

    .line 339
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->getRowContainer(I)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private getPositionItemsColumnNum(I)I
    .registers 3

    add-int/lit8 v0, p1, 0x1

    .line 330
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->getPositionItemsRowCount(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p1, p1, 0x3

    sub-int/2addr v0, p1

    return v0
.end method

.method private getPositionItemsRowCount(I)I
    .registers 6

    add-int/lit8 p1, p1, 0x1

    int-to-double v0, p1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    div-double/2addr v0, v2

    .line 325
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method private getRowContainer(I)Landroid/widget/LinearLayout;
    .registers 3

    .line 335
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    return-object p1
.end method


# virtual methods
.method protected addItemView(Landroid/view/View;I)V
    .registers 6

    .line 268
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const p2, 0x7f080388

    .line 269
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 270
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    # getter for: Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mOnItemClickListener:Landroid/view/View$OnClickListener;
    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->access$100(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;)Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-lez p2, :cond_2e

    .line 273
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->getLastRowContainer()Landroid/widget/LinearLayout;

    move-result-object p2

    .line 274
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-gt v0, v2, :cond_2d

    goto :goto_2e

    :cond_2d
    move-object v1, p2

    :cond_2e
    :goto_2e
    if-nez v1, :cond_55

    .line 279
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 280
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setMotionEventSplittingEnabled(Z)V

    .line 281
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 282
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 283
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/4 v0, -0x1

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 284
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/4 v0, -0x2

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 288
    :cond_55
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 289
    iget v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mItemMargin:I

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 291
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected computeArrangeHeight()I
    .registers 8

    .line 232
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    const v1, 0x7f070110

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->dimenToPixel(I)I

    move-result v0

    .line 233
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    iget-boolean v1, v1, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mIsNewFeatureBarNeeded:Z

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    const v2, 0x7f070119

    .line 234
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->dimenToPixel(I)I

    move-result v1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    .line 235
    :goto_1a
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v2, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemHeight:I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->getItemCount()I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    mul-int/2addr v2, v3

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2
.end method

.method protected computeHeight()I
    .registers 2

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mIsExpandedWhenOpened:Z

    if-nez v0, :cond_d

    .line 224
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->getScrolledHeight()I

    move-result v0

    return v0

    .line 226
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->getScrollableContentLength()I

    move-result v0

    return v0
.end method

.method protected fetchItems()V
    .registers 6

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    move v1, v0

    .line 244
    :goto_7
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_43

    .line 245
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mAdapter:Landroid/widget/ArrayAdapter;

    const/4 v3, 0x0

    .line 248
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->getPositionItemContainerView(I)Landroid/view/ViewGroup;

    move-result-object v4

    .line 245
    invoke-virtual {v2, v1, v3, v4}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 249
    invoke-virtual {p0, v2, v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->addItemView(Landroid/view/View;I)V

    .line 251
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_40

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add new item, size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mRowItems:Landroid/widget/LinearLayout;

    .line 252
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 251
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 255
    :cond_43
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    .line 256
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->getLastRowContainer()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 257
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 258
    rem-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_5d

    if-le v2, v0, :cond_5d

    sub-int v0, v2, v0

    neg-int v0, v0

    .line 260
    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->removeViews(II)V

    :cond_5d
    return-void
.end method

.method protected findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    .line 303
    :goto_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 304
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->getRowContainer(I)Landroid/widget/LinearLayout;

    move-result-object v2

    move v3, v0

    .line 305
    :goto_f
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_35

    .line 306
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 307
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;

    if-eqz v5, :cond_32

    .line 309
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;

    .line 310
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->getModeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    return-object v4

    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_38
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getPositionItemContainerView(I)Landroid/view/ViewGroup;
    .registers 2

    .line 321
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->getPositionItemsRowCount(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->getRowContainer(I)Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method protected getPositionItemView(I)Landroid/view/View;
    .registers 3

    .line 296
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->getPositionItemContainerView(I)Landroid/view/ViewGroup;

    move-result-object v0

    .line 297
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->getPositionItemsColumnNum(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 298
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected setup()V
    .registers 8

    .line 180
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->container:Landroid/view/ViewGroup;

    .line 181
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->container:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 182
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 183
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 184
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->container:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 185
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    iget-boolean v2, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mIsNewFeatureBarNeeded:Z

    if-eqz v2, :cond_66

    .line 186
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f0b005f

    const/4 v4, 0x0

    .line 188
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mNewFeatureBar:Landroid/widget/LinearLayout;

    .line 189
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mNewFeatureBar:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    # getter for: Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mOnNewFeatureBarClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->access$000(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mNewFeatureBar:Landroid/widget/LinearLayout;

    const v3, 0x7f0901cb

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 191
    sget-object v3, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->REGULAR:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-static {v2, v3}, Lcom/sonymobile/cameracommon/font/FontUtil;->setRobotoFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z

    .line 192
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mNewFeatureBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 195
    :cond_66
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 196
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    const v4, 0x7f070110

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->dimenToPixel(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 197
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v3, -0x1

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 199
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v5, -0x2

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 201
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v0, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->panelBackgroundColor:I

    if-eqz v0, :cond_a2

    .line 202
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->container:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    iget-object v6, v6, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v6, v6, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->panelBackgroundColor:I

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 204
    :cond_a2
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 206
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mRowItems:Landroid/widget/LinearLayout;

    .line 207
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setMotionEventSplittingEnabled(Z)V

    .line 208
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 209
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 211
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 214
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->isPortrait()Z

    move-result v1

    if-nez v1, :cond_ec

    .line 215
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 217
    :cond_ec
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v1, v1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemWidth:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    .line 218
    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mItemMargin:I

    return-void
.end method
