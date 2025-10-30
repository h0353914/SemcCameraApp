.class Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ShutterSpeedSlider;
.super Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;
.source "ShutterSpeedSlider.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;)V
    .registers 10

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 21
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;ZZLcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;)V

    return-void
.end method


# virtual methods
.method protected getBackgroundImageResource(I)I
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    const p1, 0x7f080192

    return p1

    :cond_7
    const p1, 0x7f080193

    return p1
.end method

.method protected getDefaultSettingItemPosition()I
    .registers 3

    .line 45
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ShutterSpeedSlider;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->getIndexOfDefault()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getMaxValue()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMinValue()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
