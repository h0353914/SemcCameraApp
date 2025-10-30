.class Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/FocusRangeSlider;
.super Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;
.source "FocusRangeSlider.java"


# instance fields
.field private mValueAccessor:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 24
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;ZZLcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;)V

    .line 27
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/FocusRangeSlider;->mValueAccessor:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    return-void
.end method


# virtual methods
.method protected getBackgroundImageResource(I)I
    .registers 2

    const/4 p0, 0x2

    if-ne p1, p0, :cond_7

    const p0, 0x7f08018c

    return p0

    :cond_7
    const p0, 0x7f08018d

    return p0
.end method

.method protected getDefaultSettingItemPosition()I
    .registers 1

    .line 83
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->getThreshold()F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method protected getIndicatorContentDescription(I)Ljava/lang/String;
    .registers 3

    .line 54
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/FocusRangeSlider;->mValueAccessor:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 55
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const v0, 0x7f0f0072

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/FocusRangeSlider;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getMaxValue()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getMemoryStepCount()I
    .registers 1

    const/16 p0, 0x63

    return p0
.end method

.method protected getMinValue()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getSelectedSettingItemPosition()I
    .registers 3

    .line 37
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/FocusRangeSlider;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->AF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 38
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/FocusRangeSlider;->getAutoSettingItemPosition()I

    move-result p0

    return p0

    .line 40
    :cond_1f
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/FocusRangeSlider;->mValueAccessor:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method protected indexOf(I)I
    .registers 3

    .line 88
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/FocusRangeSlider;->getAutoSettingItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_d

    .line 89
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->AF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->ordinal()I

    move-result p0

    return p0

    .line 90
    :cond_d
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/FocusRangeSlider;->getDefaultSettingItemPosition()I

    move-result p0

    if-ne p1, p0, :cond_1a

    .line 91
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->DEFAULT:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->ordinal()I

    move-result p0

    return p0

    .line 93
    :cond_1a
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->MF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->ordinal()I

    move-result p0

    return p0
.end method

.method protected updateSelectedSettingItem(IZ)V
    .registers 5

    .line 45
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/FocusRangeSlider;->getAutoSettingItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_f

    .line 46
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/FocusRangeSlider;->mValueAccessor:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;->set(Ljava/lang/Object;)V

    .line 49
    :cond_f
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->updateSelectedSettingItem(IZ)V

    return-void
.end method
