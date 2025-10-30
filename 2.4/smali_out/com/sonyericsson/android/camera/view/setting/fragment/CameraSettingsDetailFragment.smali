.class public Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;
.super Landroidx/fragment/app/Fragment;
.source "CameraSettingsDetailFragment.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;,
        Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$ValueArrayAdapter;
    }
.end annotation


# static fields
.field private static final STATE_ITEM_KEY:Ljava/lang/String; = "CameraSettingItem"


# instance fields
.field private mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

.field private mOnDetailChangedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;Landroid/view/View;)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->handleSwitchBarClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;Landroid/widget/AdapterView;I)V
    .registers 3

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->handleItemClicked(Landroid/widget/AdapterView;I)V

    return-void
.end method

.method private adjustListViewHeightBasedOnChildren()V
    .registers 7

    .line 251
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const v1, 0x7f0901fa

    .line 256
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    if-eqz v0, :cond_45

    .line 257
    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1b

    goto :goto_45

    .line 261
    :cond_1b
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-nez v1, :cond_22

    return-void

    :cond_22
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 269
    :goto_25
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_3b

    const/4 v5, 0x0

    .line 270
    invoke-interface {v1, v3, v5, v0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 271
    invoke-virtual {v5, v2, v2}, Landroid/view/View;->measure(II)V

    .line 272
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 275
    :cond_3b
    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 276
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 277
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_45
    :goto_45
    return-void
.end method

.method private getInformationText()Ljava/lang/String;
    .registers 14

    .line 319
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getInformationResId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    return-object v0

    .line 324
    :cond_b
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->isExclusionInfo()Z

    move-result v1

    if-nez v1, :cond_18

    .line 325
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 328
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    .line 331
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getDependencyGuideList()Ljava/util/List;

    move-result-object v3

    .line 332
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_32

    .line 333
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getValueString(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_65
    :goto_65
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;

    .line 337
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;->getDependencyValues()[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v4

    array-length v4, v4

    const v5, 0x7f0e02c1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lez v4, :cond_c3

    .line 339
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;->getDependencyValues()[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v4

    array-length v8, v4

    move v9, v6

    :goto_83
    if-ge v9, v8, :cond_65

    aget-object v10, v4, v9

    .line 340
    new-array v11, v7, [Ljava/lang/Object;

    .line 342
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;->getDependencyKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v12

    .line 343
    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getTitleTextId()I

    move-result v12

    .line 342
    invoke-virtual {p0, v12}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    .line 340
    invoke-virtual {p0, v5, v11}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v11, 0x7f0e026c

    .line 344
    invoke-virtual {p0, v11}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-direct {p0, v10}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getValueString(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v10, 0x7f0e026b

    .line 346
    invoke-virtual {p0, v10}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_83

    .line 351
    :cond_c3
    new-array v4, v7, [Ljava/lang/Object;

    .line 353
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;->getDependencyKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v3

    .line 354
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getTitleTextId()I

    move-result v3

    .line 353
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v6

    .line 351
    invoke-virtual {p0, v5, v4}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_65

    .line 361
    :cond_e2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getInitialSelectedValuePos()I
    .registers 4

    .line 240
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    .line 241
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_21

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_21
    :goto_21
    return v1
.end method

.method private getValueString(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Ljava/lang/String;
    .registers 2

    .line 315
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getTextId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private handleItemClicked(Landroid/widget/AdapterView;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;I)V"
        }
    .end annotation

    .line 302
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$ValueArrayAdapter;

    .line 303
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$ValueArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    if-eqz p1, :cond_3b

    .line 304
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isSelectable()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 305
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mOnDetailChangedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;

    if-eqz p1, :cond_3b

    .line 306
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    .line 307
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getOptions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    .line 308
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mOnDetailChangedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;

    .line 309
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;->onValueChanged(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    :cond_3b
    return-void
.end method

.method private handleSwitchBarClicked(Landroid/view/View;)V
    .registers 5

    const v0, 0x7f0901c5

    .line 281
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    if-eqz p1, :cond_59

    .line 282
    invoke-virtual {p1}, Landroid/widget/Switch;->getVisibility()I

    move-result v0

    if-nez v0, :cond_59

    .line 283
    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    .line 285
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getOptions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    .line 286
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isOffValue()Z

    move-result v2

    if-eq v2, p1, :cond_35

    goto :goto_38

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 292
    :cond_38
    :goto_38
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mOnDetailChangedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;

    if-eqz p1, :cond_59

    .line 293
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    .line 294
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getOptions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    .line 295
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mOnDetailChangedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;

    .line 296
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;->onValueChanged(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    :cond_59
    return-void
.end method

.method public static newInstance(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;
    .registers 2

    .line 54
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;-><init>()V

    .line 55
    iput-object p0, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    return-object v0
.end method

.method private updateViews(Landroid/view/View;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 121
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getSettingLayoutType()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    move-result-object v2

    .line 122
    iget-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    .line 123
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getSelectedValueItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    move-result-object v3

    const v4, 0x7f0901be

    .line 125
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0901c3

    .line 126
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0901c5

    .line 127
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Switch;

    const v7, 0x7f0901fa

    .line 128
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    const v8, 0x7f090097

    .line 129
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0900d7

    .line 130
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0900da

    .line 131
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f0900d9

    .line 132
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const v12, 0x7f090065

    .line 133
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const v13, 0x7f0900d8

    .line 134
    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const v14, 0x7f09018d

    .line 135
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    const v15, 0x7f09018e

    .line 136
    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 138
    sget-object v15, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->SWITCH_DETAIL:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    move-object/from16 v16, v14

    const/4 v14, 0x0

    move-object/from16 v17, v1

    const/16 v1, 0x8

    if-ne v2, v15, :cond_d0

    .line 139
    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    .line 140
    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    invoke-virtual {v6, v14}, Landroid/widget/Switch;->setVisibility(I)V

    .line 142
    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 144
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isOffValue()Z

    move-result v2

    const/4 v15, 0x1

    xor-int/2addr v2, v15

    .line 145
    invoke-virtual {v6, v2}, Landroid/widget/Switch;->setChecked(Z)V

    if-eqz v2, :cond_9e

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v15, 0x7f060083

    invoke-static {v6, v15}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    goto :goto_a9

    .line 150
    :cond_9e
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v15, 0x7f060086

    invoke-static {v6, v15}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    .line 151
    :goto_a9
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getNameResId()I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(I)V

    .line 154
    new-instance v3, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$1;

    invoke-direct {v3, v0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$1;-><init>(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v2, :cond_c5

    const v2, 0x7f080397

    goto :goto_c8

    :cond_c5
    const v2, 0x7f080398

    :goto_c8
    invoke-static {v3, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 163
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_10f

    .line 165
    :cond_d0
    sget-object v3, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->VALUES_DETAIL:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    if-ne v2, v3, :cond_103

    .line 166
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    invoke-virtual {v6, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 169
    invoke-virtual {v7, v14}, Landroid/widget/ListView;->setVisibility(I)V

    const/4 v2, 0x1

    .line 171
    invoke-virtual {v7, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 172
    new-instance v2, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$ValueArrayAdapter;

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getOptions()Ljava/util/List;

    move-result-object v4

    .line 174
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getInitialSelectedValuePos()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$ValueArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 172
    invoke-virtual {v7, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 176
    new-instance v2, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$2;

    invoke-direct {v2, v0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$2;-><init>(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;)V

    invoke-virtual {v7, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_10f

    .line 184
    :cond_103
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    invoke-virtual {v6, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 187
    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 190
    :goto_10f
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getDescriptionResId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_11f

    .line 192
    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_122

    .line 195
    :cond_11f
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    :goto_122
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getInformationResId()I

    move-result v2

    if-eq v2, v3, :cond_141

    .line 200
    invoke-virtual {v9, v14}, Landroid/view/View;->setVisibility(I)V

    .line 201
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getInformationText()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13d

    .line 204
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    :cond_13d
    invoke-virtual {v11, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_14a

    .line 208
    :cond_141
    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    :goto_14a
    invoke-virtual {v8}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_160

    .line 214
    invoke-virtual {v7}, Landroid/widget/ListView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_15c

    .line 215
    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_160

    .line 216
    :cond_15c
    invoke-virtual {v12, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_163

    .line 218
    :cond_160
    invoke-virtual {v12, v1}, Landroid/view/View;->setVisibility(I)V

    .line 221
    :goto_163
    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_16d

    .line 222
    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_170

    .line 224
    :cond_16d
    invoke-virtual {v13, v1}, Landroid/view/View;->setVisibility(I)V

    .line 227
    :goto_170
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getImageResId()I

    move-result v2

    if-eq v2, v3, :cond_18e

    move-object/from16 v3, v17

    .line 229
    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_198

    :cond_18e
    move-object/from16 v2, v16

    move-object/from16 v3, v17

    .line 233
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 234
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_198
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p3, :cond_c

    const-string p2, "CameraSettingItem"

    .line 65
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    :cond_c
    const p2, 0x7f0b0046

    const/4 p3, 0x0

    .line 68
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 69
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->updateViews(Landroid/view/View;)V

    return-object p1
.end method

.method public onItemChanged(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    .line 115
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 116
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->updateViews(Landroid/view/View;)V

    :cond_f
    return-void
.end method

.method public onItemListChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 97
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mOnDetailChangedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;

    return-void
.end method

.method public onResume()V
    .registers 3

    .line 83
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 85
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 87
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getTitleResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 89
    instance-of v1, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;

    if-eqz v1, :cond_1a

    .line 90
    check-cast v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mOnDetailChangedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;

    :cond_1a
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "CameraSettingItem"

    .line 103
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 104
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .registers 1

    .line 76
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 78
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->adjustListViewHeightBasedOnChildren()V

    return-void
.end method
