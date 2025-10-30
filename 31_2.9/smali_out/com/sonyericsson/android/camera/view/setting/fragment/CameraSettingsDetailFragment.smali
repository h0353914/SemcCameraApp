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

    .line 48
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;Landroid/view/View;)V
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->handleSwitchBarClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;Landroid/widget/AdapterView;I)V
    .registers 3

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->handleItemClicked(Landroid/widget/AdapterView;I)V

    return-void
.end method

.method private adjustListViewHeightBasedOnChildren()V
    .registers 7

    .line 267
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const v1, 0x7f0901f2

    .line 272
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    if-eqz v0, :cond_45

    .line 273
    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1b

    goto :goto_45

    .line 277
    :cond_1b
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-nez v1, :cond_22

    return-void

    :cond_22
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 285
    :goto_25
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_3b

    const/4 v5, 0x0

    .line 286
    invoke-interface {v1, v3, v5, v0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 287
    invoke-virtual {v5, v2, v2}, Landroid/view/View;->measure(II)V

    .line 288
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 291
    :cond_3b
    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 292
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 293
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_45
    :goto_45
    return-void
.end method

.method private getInformationText()Ljava/lang/String;
    .registers 19

    move-object/from16 v0, p0

    .line 335
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getInformationResId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_d

    return-object v2

    .line 340
    :cond_d
    iget-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->isExclusionInfo()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 341
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 344
    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
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

    .line 348
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getDependencyGuideList()Ljava/util/List;

    move-result-object v9

    .line 349
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_120

    .line 350
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getValueString(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0f047f

    .line 352
    invoke-virtual {v0, v11}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8b

    .line 353
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getValueString(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0f0483

    invoke-virtual {v0, v11}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7f

    goto :goto_8b

    .line 363
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

    const v6, 0x7f0f0482

    .line 357
    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v8

    .line 366
    :goto_98
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_120

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;

    .line 368
    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;->getDependencyValues()[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v10

    array-length v10, v10

    const v11, 0x7f0f035b

    if-lez v10, :cond_100

    .line 370
    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;->getDependencyValues()[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v10

    array-length v12, v10

    move v13, v5

    :goto_bf
    if-ge v13, v12, :cond_11e

    aget-object v14, v10, v13

    .line 371
    new-array v15, v8, [Ljava/lang/Object;

    .line 373
    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;->getDependencyKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v16

    .line 374
    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getTitleTextId()I

    move-result v2

    .line 373
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v15, v5

    .line 371
    invoke-virtual {v0, v11, v15}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f0f02ef

    .line 375
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-direct {v0, v14}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getValueString(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f0f02ee

    .line 377
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    goto :goto_bf

    .line 382
    :cond_100
    new-array v2, v8, [Ljava/lang/Object;

    .line 384
    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;->getDependencyKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v9

    .line 385
    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getTitleTextId()I

    move-result v9

    .line 384
    invoke-virtual {v0, v9}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v5

    .line 382
    invoke-virtual {v0, v11, v2}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11e
    const/4 v2, 0x0

    goto :goto_a3

    :cond_120
    const/4 v2, 0x0

    goto/16 :goto_36

    .line 392
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

    .line 256
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

    .line 257
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

    .line 331
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

    .line 318
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$ValueArrayAdapter;

    .line 319
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$ValueArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    if-eqz p1, :cond_3b

    .line 320
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isSelectable()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 321
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mOnDetailChangedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;

    if-eqz p1, :cond_3b

    .line 322
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    .line 323
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getOptions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    .line 324
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mOnDetailChangedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;

    .line 325
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

    const v0, 0x7f0901bc

    .line 297
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    if-eqz p1, :cond_59

    .line 298
    invoke-virtual {p1}, Landroid/widget/Switch;->getVisibility()I

    move-result v0

    if-nez v0, :cond_59

    .line 299
    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    .line 301
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

    .line 302
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isOffValue()Z

    move-result v2

    if-eq v2, p1, :cond_35

    goto :goto_38

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 308
    :cond_38
    :goto_38
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mOnDetailChangedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;

    if-eqz p1, :cond_59

    .line 309
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    .line 310
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getOptions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mOnDetailChangedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;

    .line 312
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

    .line 57
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;-><init>()V

    .line 58
    iput-object p0, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    return-object v0
.end method

.method private updateViews(Landroid/view/View;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 129
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getSettingLayoutType()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    move-result-object v2

    .line 130
    iget-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    .line 131
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getSelectedValueItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    move-result-object v3

    const v4, 0x7f0901b5

    .line 133
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0901ba

    .line 134
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0901bc

    .line 135
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Switch;

    const v7, 0x7f0901f2

    .line 136
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    const v8, 0x7f09009b

    .line 137
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0900d1

    .line 138
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0900d3

    .line 139
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f0900d2

    .line 140
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const v12, 0x7f090065

    .line 141
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const v13, 0x7f090184

    .line 142
    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    const v14, 0x7f090185

    .line 143
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const v15, 0x7f090182

    .line 144
    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v16, v13

    const v13, 0x7f080381

    move-object/from16 v17, v14

    const/4 v14, 0x0

    invoke-virtual {v15, v13, v14}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 145
    invoke-virtual {v1, v13}, Landroid/widget/ScrollView;->setVerticalScrollbarThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    sget-object v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->SWITCH_DETAIL:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v15, 0x8

    if-ne v2, v1, :cond_e1

    .line 149
    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    .line 150
    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    invoke-virtual {v6, v14}, Landroid/widget/Switch;->setVisibility(I)V

    .line 152
    invoke-virtual {v7, v15}, Landroid/widget/ListView;->setVisibility(I)V

    .line 154
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isOffValue()Z

    move-result v1

    xor-int/2addr v1, v13

    .line 155
    invoke-virtual {v6, v1}, Landroid/widget/Switch;->setChecked(Z)V

    if-eqz v1, :cond_af

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f060073

    invoke-static {v2, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    goto :goto_ba

    .line 160
    :cond_af
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f060076

    invoke-static {v2, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 161
    :goto_ba
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getNameResId()I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(I)V

    .line 164
    new-instance v2, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$1;

    invoke-direct {v2, v0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$1;-><init>(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v1, :cond_d6

    const v1, 0x7f08038d

    goto :goto_d9

    :cond_d6
    const v1, 0x7f08038e

    :goto_d9
    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 173
    invoke-virtual {v4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_11f

    .line 175
    :cond_e1
    sget-object v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->VALUES_DETAIL:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    if-ne v2, v1, :cond_113

    .line 176
    invoke-virtual {v4, v15}, Landroid/view/View;->setVisibility(I)V

    .line 177
    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    invoke-virtual {v6, v15}, Landroid/widget/Switch;->setVisibility(I)V

    .line 179
    invoke-virtual {v7, v14}, Landroid/widget/ListView;->setVisibility(I)V

    .line 181
    invoke-virtual {v7, v13}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 182
    new-instance v1, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$ValueArrayAdapter;

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getOptions()Ljava/util/List;

    move-result-object v3

    .line 184
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getInitialSelectedValuePos()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$ValueArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 182
    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    new-instance v1, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$2;

    invoke-direct {v1, v0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$2;-><init>(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;)V

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_11f

    .line 194
    :cond_113
    invoke-virtual {v4, v15}, Landroid/view/View;->setVisibility(I)V

    .line 195
    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    invoke-virtual {v6, v15}, Landroid/widget/Switch;->setVisibility(I)V

    .line 197
    invoke-virtual {v7, v15}, Landroid/widget/ListView;->setVisibility(I)V

    .line 200
    :goto_11f
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getDescriptionResId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_15f

    .line 202
    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getAddedDescriptionResId()I

    move-result v3

    if-eq v3, v2, :cond_15b

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_162

    .line 209
    :cond_15b
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_162

    .line 212
    :cond_15f
    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    :goto_162
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getInformationResId()I

    move-result v1

    if-eq v1, v2, :cond_185

    .line 219
    invoke-virtual {v9, v14}, Landroid/view/View;->setVisibility(I)V

    .line 220
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getInformationText()Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_181

    .line 223
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    invoke-virtual {v11, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_18e

    .line 226
    :cond_181
    invoke-virtual {v11, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_18e

    .line 230
    :cond_185
    invoke-virtual {v9, v15}, Landroid/view/View;->setVisibility(I)V

    .line 231
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    invoke-virtual {v11, v15}, Landroid/view/View;->setVisibility(I)V

    .line 235
    :goto_18e
    invoke-virtual {v8}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1a4

    .line 236
    invoke-virtual {v7}, Landroid/widget/ListView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1a0

    .line 237
    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1a4

    .line 238
    :cond_1a0
    invoke-virtual {v12, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1a7

    .line 240
    :cond_1a4
    invoke-virtual {v12, v15}, Landroid/view/View;->setVisibility(I)V

    .line 243
    :goto_1a7
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getImageResId()I

    move-result v1

    if-eq v1, v2, :cond_1c5

    move-object/from16 v2, v17

    .line 245
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v13, v16

    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1cf

    :cond_1c5
    move-object/from16 v13, v16

    move-object/from16 v2, v17

    .line 249
    invoke-virtual {v2, v15}, Landroid/view/View;->setVisibility(I)V

    .line 250
    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1cf
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5
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

    if-eqz p3, :cond_1f

    .line 67
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-ge p2, v0, :cond_13

    const-string p2, "CameraSettingItem"

    .line 69
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    goto :goto_1f

    :cond_13
    const-string p2, "CameraSettingItem"

    .line 71
    const-class v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    :cond_1f
    :goto_1f
    const p2, 0x7f0c004a

    const/4 p3, 0x0

    .line 76
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 77
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->updateViews(Landroid/view/View;)V

    return-object p1
.end method

.method public onItemChanged(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    .line 123
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 124
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

    .line 105
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mOnDetailChangedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;

    return-void
.end method

.method public onResume()V
    .registers 3

    .line 91
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 93
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 95
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getTitleResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 97
    instance-of v1, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;

    if-eqz v1, :cond_1a

    .line 98
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

    .line 111
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 112
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .registers 1

    .line 84
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 86
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->adjustListViewHeightBasedOnChildren()V

    return-void
.end method
