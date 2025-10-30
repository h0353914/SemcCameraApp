.class public Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;
.super Ljava/lang/Object;
.source "SettingDialogFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createModeSelector(Landroid/content/Context;IIZZ)Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;
    .registers 11

    .line 29
    new-instance v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    invoke-direct {v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v3, 0x7f07012a

    const/4 v4, 0x0

    aput v3, v1, v4

    .line 30
    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result v1

    iput v1, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemWidth:I

    new-array v1, v0, [I

    const v3, 0x7f070129

    aput v3, v1, v4

    .line 32
    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result v1

    iput v1, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemHeight:I

    .line 33
    iput p2, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightLandscape:I

    .line 34
    iput p1, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightPortrait:I

    new-array p1, v0, [I

    const p2, 0x7f0701fe

    aput p2, p1, v4

    .line 35
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result p1

    iput p1, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->rightMarginLandscape:I

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0a0006

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->scrollBarDefaultDelayBeforeFade:I

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060068

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->panelBackgroundColor:I

    .line 40
    sget-object p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->SLIDER:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    iput-object p1, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->animationType:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    .line 41
    sget-object p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;->RIGHT:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    iput-object p1, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->horizontalGavity:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    .line 43
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    const/16 v3, 0x50

    move-object v0, p1

    move-object v1, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;IZZ)V

    return-object p1
.end method

.method public static createMonochromeDialog(Landroid/content/Context;ZII)Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;
    .registers 9

    .line 49
    new-instance v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x7f0701bb

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 50
    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result v2

    iput v2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemWidth:I

    new-array v1, v1, [I

    const v2, 0x7f0701bc

    aput v2, v1, v4

    .line 51
    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemHeight:I

    .line 52
    iput p3, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightLandscape:I

    .line 53
    iput p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightPortrait:I

    if-eqz p1, :cond_35

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060068

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->panelBackgroundColor:I

    goto :goto_42

    .line 58
    :cond_35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060069

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->panelBackgroundColor:I

    .line 61
    :goto_42
    sget-object p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->FADE:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    iput-object p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->animationType:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    .line 62
    sget-object p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;->LEFT:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    iput-object p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->horizontalGavity:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    .line 64
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_MONOCHROME:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    invoke-direct {p1, p0, v0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V

    return-object p1
.end method

.method public static createSceneDialog(Landroid/content/Context;II)Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;
    .registers 8

    .line 138
    new-instance v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;-><init>()V

    .line 139
    iput p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemWidth:I

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x7f0701bc

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 140
    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result v2

    iput v2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemHeight:I

    .line 141
    iput p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightLandscape:I

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 142
    fill-array-data p2, :array_5c

    invoke-static {p0, p2}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightPortrait:I

    new-array p1, v1, [I

    const p2, 0x7f0701fe

    aput p2, p1, v4

    .line 145
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result p1

    iput p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->rightMarginLandscape:I

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0a0006

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->scrollBarDefaultDelayBeforeFade:I

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060068

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->panelBackgroundColor:I

    .line 150
    sget-object p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->FADE:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    iput-object p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->animationType:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    .line 151
    sget-object p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;->RIGHT:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    iput-object p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->horizontalGavity:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    .line 153
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_SCENE:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    invoke-direct {p1, p0, v0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V

    return-object p1

    :array_5c
    .array-data 4
        0x7f070118
        0x7f0701a9
    .end array-data
.end method

.method public static createShortcutDialog(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;II)Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;
    .registers 9

    .line 79
    new-instance v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x7f0701bb

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 80
    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result v2

    iput v2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemWidth:I

    new-array v2, v1, [I

    const v3, 0x7f0701bc

    aput v3, v2, v4

    .line 81
    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result v2

    iput v2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemHeight:I

    .line 82
    iput p3, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightLandscape:I

    .line 83
    iput p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightPortrait:I

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 84
    fill-array-data p2, :array_c6

    invoke-static {p0, p2}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result p2

    iput p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->leftMarginLandscape:I

    .line 87
    iget p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->leftMarginLandscape:I

    iput p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->leftMarginPortrait:I

    new-array p2, v1, [I

    const p3, 0x7f0701fe

    aput p3, p2, v4

    .line 88
    invoke-static {p0, p2}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result p2

    iput p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->bottomMarginLandscape:I

    .line 89
    iget p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->bottomMarginLandscape:I

    iput p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->bottomMarginPortrait:I

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0a0006

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->scrollBarDefaultDelayBeforeFade:I

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060068

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->panelBackgroundColor:I

    .line 94
    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->FADE:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    iput-object p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->animationType:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    .line 95
    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;->LEFT:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    iput-object p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->horizontalGavity:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    .line 97
    sget-object p2, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_ae

    const/4 p0, 0x0

    return-object p0

    .line 128
    :pswitch_75
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_NIGHT_MODE:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    invoke-direct {p1, p0, v0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V

    return-object p1

    .line 124
    :pswitch_7d
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_HDR:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    invoke-direct {p1, p0, v0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V

    return-object p1

    .line 120
    :pswitch_85
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_VIDEO_HDR:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    invoke-direct {p1, p0, v0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V

    return-object p1

    .line 116
    :pswitch_8d
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_FUSION_MODE:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    invoke-direct {p1, p0, v0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V

    return-object p1

    .line 112
    :pswitch_95
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_ASPECT_RATIO:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    invoke-direct {p1, p0, v0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V

    return-object p1

    .line 108
    :pswitch_9d
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_SELFTIMER:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    invoke-direct {p1, p0, v0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V

    return-object p1

    .line 104
    :pswitch_a5
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_FLASH:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    invoke-direct {p1, p0, v0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V

    return-object p1

    nop

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_9d
        :pswitch_95
        :pswitch_8d
        :pswitch_85
        :pswitch_7d
        :pswitch_75
    .end packed-switch

    :array_c6
    .array-data 4
        0x7f0701fe
        0x7f070118
    .end array-data
.end method

.method private static varargs dimen(Landroid/content/Context;[I)I
    .registers 7

    .line 169
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v1, v0, :cond_13

    aget v3, p1, v1

    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_13
    return v2
.end method

.method private static inflate(Landroid/content/Context;I)Landroid/view/View;
    .registers 3

    const-string v0, "layout_inflater"

    .line 158
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
