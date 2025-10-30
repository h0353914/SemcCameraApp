.class Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "CameraSettingsAdapter.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSettingItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->setSettingItems(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .registers 4

    .line 60
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->mSettingItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;->getCameraSettingItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getChildId(II)J
    .registers 3

    int-to-long p1, p2

    return-wide p1
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    if-nez p4, :cond_10

    .line 105
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const p4, 0x7f0c004f

    const/4 p5, 0x0

    .line 106
    invoke-virtual {p3, p4, p5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 109
    :cond_10
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->mSettingItems:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;->getCameraSettingItems()Ljava/util/List;

    move-result-object p1

    .line 110
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    const p2, 0x7f0901ce

    .line 112
    invoke-virtual {p4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 113
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getSettingLayoutType()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    move-result-object p3

    sget-object p5, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->SWITCH:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    const/4 v0, 0x0

    if-ne p3, p5, :cond_42

    .line 114
    invoke-virtual {p2}, Landroid/view/View;->getPaddingStart()I

    move-result p3

    .line 115
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p5

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 114
    invoke-virtual {p2, p3, p5, v0, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_5e

    .line 117
    :cond_42
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p5, 0x7f0701e1

    .line 118
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 119
    invoke-virtual {p2}, Landroid/view/View;->getPaddingStart()I

    move-result p5

    .line 120
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 119
    invoke-virtual {p2, p5, v1, p3, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    :goto_5e
    const p2, 0x7f0901cc

    .line 123
    invoke-virtual {p4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 124
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getTitleResId()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 125
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->isRestricted()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 127
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getValueText()Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f0901ab

    .line 128
    invoke-virtual {p4, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 129
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getSettingLayoutType()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    move-result-object p5

    sget-object v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->SWITCH:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    const/16 v2, 0x8

    if-eq p5, v1, :cond_b4

    .line 130
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_b4

    .line 131
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->isRestricted()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 135
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0701e3

    .line 136
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 135
    invoke-virtual {p4, p2}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_c7

    .line 138
    :cond_b4
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0701e4

    .line 141
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 140
    invoke-virtual {p4, p2}, Landroid/view/View;->setMinimumHeight(I)V

    :goto_c7
    const p2, 0x7f0901b7

    .line 144
    invoke-virtual {p4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    .line 145
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getSettingLayoutType()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    move-result-object p3

    sget-object p5, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->SWITCH:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    if-ne p3, p5, :cond_f4

    .line 146
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getSelectedValueItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    move-result-object p3

    if-eqz p3, :cond_e7

    .line 148
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isOffValue()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 150
    :cond_e7
    invoke-virtual {p2, v0}, Landroid/widget/Switch;->setVisibility(I)V

    .line 151
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->isRestricted()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_f7

    .line 153
    :cond_f4
    invoke-virtual {p2, v2}, Landroid/widget/Switch;->setVisibility(I)V

    .line 156
    :goto_f7
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getAdditionalTextForAccessibility()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object p4
.end method

.method public getChildrenCount(I)I
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->mSettingItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;->getCameraSettingItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->mSettingItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getGroupCount()I
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->mSettingItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    if-nez p3, :cond_10

    .line 82
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c004d

    const/4 p4, 0x0

    .line 83
    invoke-virtual {p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    :cond_10
    const p2, 0x7f0901cc

    .line 86
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 87
    iget-object p4, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->mSettingItems:Ljava/util/List;

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;

    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;->getCategoryNameResId()I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(I)V

    const p2, 0x7f090065

    .line 89
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3d

    if-lez p1, :cond_38

    const/4 p1, 0x0

    .line 92
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3d

    :cond_38
    const/16 p1, 0x8

    .line 94
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_3d
    :goto_3d
    return-object p3
.end method

.method public getSettingItem(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 174
    :goto_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->getGroupCount()I

    move-result v2

    if-ge v1, v2, :cond_2e

    move v2, v0

    .line 175
    :goto_9
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->getChildrenCount(I)I

    move-result v3

    if-ge v2, v3, :cond_2b

    .line 177
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->mSettingItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;->getCameraSettingItems()Ljava/util/List;

    move-result-object v3

    .line 178
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    .line 180
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v4

    if-ne v4, p1, :cond_28

    return-object v3

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2e
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasStableIds()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method setSettingItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsAdapter;->mSettingItems:Ljava/util/List;

    return-void
.end method
