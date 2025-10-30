.class public Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final INVALID_VALUE:I = -0x1

.field public static final TAG:Ljava/lang/String; = "SettingAdapter"


# instance fields
.field private final mDialogItemFactory:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;

.field private mItemHeight:I

.field private mSetRoundBackgroundTop:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;)V
    .registers 4

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;",
            ">;",
            "Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 43
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->mDialogItemFactory:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;

    .line 44
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->mSetRoundBackgroundTop:Z

    const/4 p1, -0x1

    .line 45
    iput p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->mItemHeight:I

    return-void
.end method

.method private generateItemLayoutParams(Landroid/view/ViewGroup;I)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;
    .registers 13

    .line 203
    instance-of v0, p1, Landroid/widget/GridView;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 204
    check-cast p1, Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->getNumColumns()I

    move-result p1

    goto :goto_d

    :cond_c
    move p1, v1

    .line 207
    :goto_d
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getCount()I

    move-result v0

    div-int/2addr v0, p1

    sub-int/2addr v0, v1

    .line 208
    div-int v2, p2, p1

    add-int/lit8 v3, p1, -0x1

    .line 210
    rem-int/2addr p2, p1

    .line 212
    new-instance p1, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->mItemHeight:I

    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->mSetRoundBackgroundTop:Z

    const/4 v6, 0x0

    if-eqz v4, :cond_25

    if-nez v2, :cond_25

    move v7, v1

    goto :goto_26

    :cond_25
    move v7, v6

    :goto_26
    if-ne v2, v0, :cond_2a

    move v0, v1

    goto :goto_2b

    :cond_2a
    move v0, v6

    :goto_2b
    if-nez p2, :cond_2f

    move v8, v1

    goto :goto_30

    :cond_2f
    move v8, v6

    :goto_30
    if-ne p2, v3, :cond_34

    move v9, v1

    goto :goto_35

    :cond_34
    move v9, v6

    :goto_35
    move-object v4, p1

    move v6, v7

    move v7, v0

    invoke-direct/range {v4 .. v9}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;-><init>(IZZZZ)V

    return-object p1
.end method


# virtual methods
.method public getItemViewType(I)I
    .registers 4

    .line 188
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 189
    instance-of v1, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    if-eqz v1, :cond_f

    .line 190
    check-cast v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getDialogItemType()I

    move-result p1

    return p1

    .line 192
    :cond_f
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getSelected()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;
    .registers 4

    const/4 v0, 0x0

    .line 107
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 108
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    .line 109
    invoke-interface {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_14

    return-object v1

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedPosition()I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 120
    :goto_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 121
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    .line 122
    invoke-interface {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_15

    return v1

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_18
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .line 154
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "getView()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 156
    :cond_d
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    .line 158
    invoke-direct {p0, p3, p1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->generateItemLayoutParams(Landroid/view/ViewGroup;I)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;

    move-result-object p1

    if-eqz p2, :cond_5f

    .line 162
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_26

    const-string v1, "  has convertView"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 163
    :cond_26
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

    if-eqz v1, :cond_5f

    .line 164
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_3b

    const-string v1, "  has dialogItem"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 165
    :cond_3b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

    .line 167
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v1

    if-eq v1, v0, :cond_57

    .line 168
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_54

    const-string v1, "  update item"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 170
    :cond_54
    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;->setItem(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    .line 172
    :cond_57
    invoke-virtual {p2, p3, p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;->update(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;)V

    .line 173
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;->getView()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 178
    :cond_5f
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_6c

    const-string p2, "  create new dialogItem"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 179
    :cond_6c
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->mDialogItemFactory:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;

    invoke-virtual {p2, v0, p3}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;->create(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;Landroid/view/ViewGroup;)Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

    move-result-object p2

    .line 180
    invoke-virtual {p2, p3, p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;->update(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;)V

    .line 181
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 183
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;->getView()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->mDialogItemFactory:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;->getDialogItemTypeCount()I

    move-result v0

    return v0
.end method

.method public selectByData(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 78
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 80
    :goto_a
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 81
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    .line 82
    invoke-interface {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelectable()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 83
    invoke-interface {p1, v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->compareData(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)Z

    move-result v3

    if-eqz v3, :cond_27

    const/4 v3, 0x1

    .line 84
    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->setSelected(Z)V

    goto :goto_2a

    .line 86
    :cond_27
    invoke-interface {v2, v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->setSelected(Z)V

    :cond_2a
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_2d
    return-void
.end method

.method public selectByItem(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    .line 96
    :goto_5
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 97
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    .line 98
    invoke-interface {p1, v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->compareData(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v3, 0x1

    .line 99
    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->setSelected(Z)V

    goto :goto_1f

    .line 101
    :cond_1c
    invoke-interface {v2, v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->setSelected(Z)V

    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_22
    return-void
.end method

.method public setItemHeight(I)V
    .registers 3

    .line 61
    iget v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->mItemHeight:I

    if-eq v0, p1, :cond_9

    .line 62
    iput p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->mItemHeight:I

    .line 63
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->notifyDataSetChanged()V

    :cond_9
    return-void
.end method

.method public setRoundTopItemBackground(Z)V
    .registers 3

    .line 71
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->mSetRoundBackgroundTop:Z

    if-eq v0, p1, :cond_9

    .line 72
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->mSetRoundBackgroundTop:Z

    .line 73
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->notifyDataSetChanged()V

    :cond_9
    return-void
.end method
