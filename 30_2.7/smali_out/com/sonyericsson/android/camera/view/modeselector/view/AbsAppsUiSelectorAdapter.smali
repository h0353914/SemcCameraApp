.class public abstract Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AbsAppsUiSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter$IconCacheManager;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView$PanelAttributes;",
        ">;"
    }
.end annotation


# static fields
.field public static final DRAWABLE_RESOURCE_LOADING:I = 0x7f0800e6


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsItemClickEnabled:Z

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView$PanelAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView$PanelAttributes;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 p2, 0x0

    .line 29
    iput p2, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;->mOrientation:I

    const/4 p2, 0x1

    .line 30
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;->mIsItemClickEnabled:Z

    .line 34
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;->mList:Ljava/util/List;

    const-string p2, "layout_inflater"

    .line 35
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter$IconCacheManager;->registerClient(Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0
.end method

.method public getImageLoader()Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;
    .registers 2

    .line 119
    invoke-static {}, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter$IconCacheManager;->getImageLoader()Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView$PanelAttributes;
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_14

    :cond_b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView$PanelAttributes;

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p1, 0x0

    :goto_15
    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 23
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;->getItem(I)Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView$PanelAttributes;

    move-result-object p1

    return-object p1
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getUiOrientation()I
    .registers 2

    .line 101
    iget v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;->mOrientation:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    if-nez p2, :cond_6

    .line 73
    invoke-virtual {p0, p1, p3}, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;->onCreateItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 76
    :cond_6
    check-cast p2, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView;

    .line 77
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;->onPrepareItemView(ILcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public isEnabled(I)Z
    .registers 2

    .line 67
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;->mIsItemClickEnabled:Z

    return p1
.end method

.method protected abstract onCreateItemView(ILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected onPrepareItemView(ILcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 83
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;->getItem(I)Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView$PanelAttributes;

    move-result-object p1

    .line 84
    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView;->setItem(Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView$PanelAttributes;)V

    .line 85
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;->getUiOrientation()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView;->setUiOrientation(I)V

    const-string p3, ""

    .line 86
    invoke-virtual {p2, p3}, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 88
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView$PanelAttributes;->getIconUri()Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_26

    .line 90
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;->getImageLoader()Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;

    move-result-object p3

    if-eqz p3, :cond_26

    .line 93
    invoke-virtual {p3, p1, p2}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->requestLoad(Ljava/lang/String;Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView;)V

    :cond_26
    return-object p2
.end method

.method public release()V
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;->mList:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter$IconCacheManager;->unregisterClient(Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;Ljava/util/List;)V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;->mList:Ljava/util/List;

    return-void
.end method

.method public releaseToUntil()V
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;->mList:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter$IconCacheManager;->unregisterToUntilClient(Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;Ljava/util/List;)V

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;->mList:Ljava/util/List;

    return-void
.end method

.method public setItemClickEnabled(Z)V
    .registers 2

    .line 52
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;->mIsItemClickEnabled:Z

    return-void
.end method

.method public setUiOrientation(I)V
    .registers 2

    .line 47
    iput p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;->mOrientation:I

    .line 48
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView$PanelAttributes;",
            ">;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;->mList:Ljava/util/List;

    .line 43
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;->notifyDataSetChanged()V

    return-void
.end method
