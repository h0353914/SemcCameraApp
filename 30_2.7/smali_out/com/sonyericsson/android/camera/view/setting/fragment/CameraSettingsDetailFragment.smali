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

    .line 46
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;Landroid/view/View;)V
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->handleSwitchBarClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;Landroid/widget/AdapterView;I)V
    .registers 3

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->handleItemClicked(Landroid/widget/AdapterView;I)V

    return-void
.end method

.method private adjustListViewHeightBasedOnChildren()V
    .registers 7

    .line 257
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const v1, 0x7f0901ec

    .line 262
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    if-eqz v0, :cond_45

    .line 263
    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1b

    goto :goto_45

    .line 267
    :cond_1b
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-nez v1, :cond_22

    return-void

    :cond_22
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 275
    :goto_25
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_3b

    const/4 v5, 0x0

    .line 276
    invoke-interface {v1, v3, v5, v0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 277
    invoke-virtual {v5, v2, v2}, Landroid/view/View;->measure(II)V

    .line 278
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 281
    :cond_3b
    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 282
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 283
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_45
    :goto_45
    return-void
.end method

.method private getInformationText()Ljava/lang/String;
    .registers 19

    move-object/from16 v0, p0

    .line 325
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getInformationResId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_d

    return-object v2

    .line 330
    :cond_d
    iget-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->isExclusionInfo()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 331
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 334
    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 335
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    iget-object v4, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getOptions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :cond_36
    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_123

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    .line 338
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getDependencyGuideList()Ljava/util/List;

    move-result-object v9

    .line 339
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_120

    .line 340
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getValueString(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0f03d9

    .line 342
    invoke-virtual {v0, v11}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8b

    .line 343
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getValueString(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0f03dd

    invoke-virtual {v0, v11}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7f

    goto :goto_8b

    .line 353
    :cond_7f
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getValueString(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_98

    :cond_8b
    :goto_8b
    if-nez v6, :cond_36

    const v6, 0x7f0f03dc

    .line 347
    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v8

    .line 356
    :goto_98
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_120

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;

    .line 358
    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;->getDependencyValues()[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v10

    array-length v10, v10

    const v11, 0x7f0f030a

    if-lez v10, :cond_100

    .line 360
    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;->getDependencyValues()[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v10

    array-length v12, v10

    move v13, v5

    :goto_bf
    if-ge v13, v12, :cond_11e

    aget-object v14, v10, v13

    .line 361
    new-array v15, v8, [Ljava/lang/Object;

    .line 363
    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;->getDependencyKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v16

    .line 364
    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getTitleTextId()I

    move-result v2

    .line 363
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v15, v5

    .line 361
    invoke-virtual {v0, v11, v15}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f0f02a3

    .line 365
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-direct {v0, v14}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getValueString(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f0f02a2

    .line 367
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    goto :goto_bf

    .line 372
    :cond_100
    new-array v2, v8, [Ljava/lang/Object;

    .line 374
    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;->getDependencyKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v9

    .line 375
    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getTitleTextId()I

    move-result v9

    .line 374
    invoke-virtual {v0, v9}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v5

    .line 372
    invoke-virtual {v0, v11, v2}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11e
    const/4 v2, 0x0

    goto :goto_a3

    :cond_120
    const/4 v2, 0x0

    goto/16 :goto_36

    .line 382
    :cond_123
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v8

    if-ne v2, v1, :cond_139

    const/16 v17, 0x0

    goto :goto_13f

    :cond_139
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v2

    :goto_13f
    return-object v17
.end method

.method private getInitialSelectedValuePos()I
    .registers 4

    .line 246
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

    .line 247
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

    .line 321
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

    .line 308
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$ValueArrayAdapter;

    .line 309
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$ValueArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    if-eqz p1, :cond_3b

    .line 310
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isSelectable()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 311
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mOnDetailChangedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;

    if-eqz p1, :cond_3b

    .line 312
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    .line 313
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getOptions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    .line 314
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mOnDetailChangedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;

    .line 315
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

    const v0, 0x7f0901b7

    .line 287
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    if-eqz p1, :cond_59

    .line 288
    invoke-virtual {p1}, Landroid/widget/Switch;->getVisibility()I

    move-result v0

    if-nez v0, :cond_59

    .line 289
    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    .line 291
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

    .line 292
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isOffValue()Z

    move-result v2

    if-eq v2, p1, :cond_35

    goto :goto_38

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 298
    :cond_38
    :goto_38
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mOnDetailChangedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;

    if-eqz p1, :cond_59

    .line 299
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    .line 300
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getOptions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    .line 301
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mOnDetailChangedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;

    .line 302
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

    .line 55
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;-><init>()V

    .line 56
    iput-object p0, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    return-object v0
.end method

.method private updateViews(Landroid/view/View;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 122
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getSettingLayoutType()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    move-result-object v2

    .line 123
    iget-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    .line 124
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getSelectedValueItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    move-result-object v3

    const v4, 0x7f0901b0

    .line 126
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0901b5

    .line 127
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0901b7

    .line 128
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Switch;

    const v7, 0x7f0901ec

    .line 129
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    const v8, 0x7f09009a

    .line 130
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0900ce

    .line 131
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0900d0

    .line 132
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f0900cf

    .line 133
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const v12, 0x7f090065

    .line 134
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const v13, 0x7f09017f

    .line 135
    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    const v14, 0x7f090180

    .line 136
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 138
    sget-object v14, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->SWITCH_DETAIL:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    const/4 v15, 0x0

    move-object/from16 v16, v13

    const/16 v13, 0x8

    if-ne v2, v14, :cond_c7

    .line 139
    invoke-virtual {v4, v15}, Landroid/view/View;->setVisibility(I)V

    .line 140
    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    invoke-virtual {v6, v15}, Landroid/widget/Switch;->setVisibility(I)V

    .line 142
    invoke-virtual {v7, v13}, Landroid/widget/ListView;->setVisibility(I)V

    .line 144
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isOffValue()Z

    move-result v2

    const/4 v14, 0x1

    xor-int/2addr v2, v14

    .line 145
    invoke-virtual {v6, v2}, Landroid/widget/Switch;->setChecked(Z)V

    if-eqz v2, :cond_95

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v14, 0x7f060072

    invoke-static {v6, v14}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    goto :goto_a0

    .line 150
    :cond_95
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v14, 0x7f060075

    invoke-static {v6, v14}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    .line 151
    :goto_a0
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

    if-eqz v2, :cond_bc

    const v2, 0x7f080372

    goto :goto_bf

    :cond_bc
    const v2, 0x7f080373

    :goto_bf
    invoke-static {v3, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 163
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_106

    .line 165
    :cond_c7
    sget-object v3, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->VALUES_DETAIL:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    if-ne v2, v3, :cond_fa

    .line 166
    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    .line 167
    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    invoke-virtual {v6, v13}, Landroid/widget/Switch;->setVisibility(I)V

    .line 169
    invoke-virtual {v7, v15}, Landroid/widget/ListView;->setVisibility(I)V

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

    goto :goto_106

    .line 184
    :cond_fa
    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    .line 185
    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    invoke-virtual {v6, v13}, Landroid/widget/Switch;->setVisibility(I)V

    .line 187
    invoke-virtual {v7, v13}, Landroid/widget/ListView;->setVisibility(I)V

    .line 190
    :goto_106
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getDescriptionResId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_146

    .line 192
    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v4, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getAddedDescriptionResId()I

    move-result v4

    if-eq v4, v3, :cond_142

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 197
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_149

    .line 199
    :cond_142
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_149

    .line 202
    :cond_146
    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    :goto_149
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getInformationResId()I

    move-result v2

    if-eq v2, v3, :cond_16c

    .line 209
    invoke-virtual {v9, v15}, Landroid/view/View;->setVisibility(I)V

    .line 210
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getInformationText()Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_168

    .line 213
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    invoke-virtual {v11, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_175

    .line 216
    :cond_168
    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_175

    .line 220
    :cond_16c
    invoke-virtual {v9, v13}, Landroid/view/View;->setVisibility(I)V

    .line 221
    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    .line 225
    :goto_175
    invoke-virtual {v8}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_18b

    .line 226
    invoke-virtual {v7}, Landroid/widget/ListView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_187

    .line 227
    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_18b

    .line 228
    :cond_187
    invoke-virtual {v12, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_18e

    .line 230
    :cond_18b
    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 233
    :goto_18e
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getImageResId()I

    move-result v2

    if-eq v2, v3, :cond_1aa

    .line 235
    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1b2

    :cond_1aa
    move-object/from16 v2, v16

    .line 239
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 240
    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1b2
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

    .line 66
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    :cond_c
    const p2, 0x7f0c004a

    const/4 p3, 0x0

    .line 69
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 70
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->updateViews(Landroid/view/View;)V

    return-object p1
.end method

.method public onItemChanged(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    .line 116
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 117
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

    .line 98
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mOnDetailChangedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;

    return-void
.end method

.method public onResume()V
    .registers 3

    .line 84
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 86
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 88
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getTitleResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 90
    instance-of v1, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;

    if-eqz v1, :cond_1a

    .line 91
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

    .line 104
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 105
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .registers 1

    .line 77
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 79
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->adjustListViewHeightBasedOnChildren()V

    return-void
.end method
