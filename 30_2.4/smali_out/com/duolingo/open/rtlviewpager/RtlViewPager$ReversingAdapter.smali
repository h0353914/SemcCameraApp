.class Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;
.super Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;
.source "RtlViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duolingo/open/rtlviewpager/RtlViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReversingAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duolingo/open/rtlviewpager/RtlViewPager;


# direct methods
.method constructor <init>(Lcom/duolingo/open/rtlviewpager/RtlViewPager;Landroidx/viewpager/widget/PagerAdapter;)V
    .registers 3
    .param p1    # Lcom/duolingo/open/rtlviewpager/RtlViewPager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 279
    iput-object p1, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->this$0:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    .line 280
    invoke-direct {p0, p2}, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;-><init>(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .registers 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->this$0:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    # invokes: Lcom/duolingo/open/rtlviewpager/RtlViewPager;->isRtl()Z
    invoke-static {v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->access$500(Lcom/duolingo/open/rtlviewpager/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 295
    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 297
    :cond_f
    invoke-super {p0, p1, p2, p3}, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 285
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->this$0:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    # invokes: Lcom/duolingo/open/rtlviewpager/RtlViewPager;->isRtl()Z
    invoke-static {v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->access$500(Lcom/duolingo/open/rtlviewpager/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 286
    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 288
    :cond_f
    invoke-super {p0, p1, p2, p3}, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 302
    invoke-super {p0, p1}, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result p1

    .line 303
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->this$0:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    # invokes: Lcom/duolingo/open/rtlviewpager/RtlViewPager;->isRtl()Z
    invoke-static {v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->access$500(Lcom/duolingo/open/rtlviewpager/RtlViewPager;)Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_1c

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1b

    if-ne p1, v1, :cond_13

    goto :goto_1b

    .line 310
    :cond_13
    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    goto :goto_1c

    :cond_1b
    :goto_1b
    move p1, v1

    :cond_1c
    :goto_1c
    return p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .registers 3

    .line 318
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->this$0:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    # invokes: Lcom/duolingo/open/rtlviewpager/RtlViewPager;->isRtl()Z
    invoke-static {v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->access$500(Lcom/duolingo/open/rtlviewpager/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 319
    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 321
    :cond_f
    invoke-super {p0, p1}, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getPageWidth(I)F
    .registers 3

    .line 326
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->this$0:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    # invokes: Lcom/duolingo/open/rtlviewpager/RtlViewPager;->isRtl()Z
    invoke-static {v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->access$500(Lcom/duolingo/open/rtlviewpager/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 327
    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 329
    :cond_f
    invoke-super {p0, p1}, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->getPageWidth(I)F

    move-result p1

    return p1
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .registers 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->this$0:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    # invokes: Lcom/duolingo/open/rtlviewpager/RtlViewPager;->isRtl()Z
    invoke-static {v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->access$500(Lcom/duolingo/open/rtlviewpager/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 346
    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 348
    :cond_f
    invoke-super {p0, p1, p2}, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->this$0:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    # invokes: Lcom/duolingo/open/rtlviewpager/RtlViewPager;->isRtl()Z
    invoke-static {v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->access$500(Lcom/duolingo/open/rtlviewpager/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 336
    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 338
    :cond_f
    invoke-super {p0, p1, p2}, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .registers 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->this$0:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    # invokes: Lcom/duolingo/open/rtlviewpager/RtlViewPager;->isRtl()Z
    invoke-static {v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->access$500(Lcom/duolingo/open/rtlviewpager/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 363
    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 365
    :cond_f
    invoke-super {p0, p1, p2, p3}, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 353
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->this$0:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    # invokes: Lcom/duolingo/open/rtlviewpager/RtlViewPager;->isRtl()Z
    invoke-static {v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->access$500(Lcom/duolingo/open/rtlviewpager/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 354
    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 356
    :cond_f
    invoke-super {p0, p1, p2, p3}, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method
