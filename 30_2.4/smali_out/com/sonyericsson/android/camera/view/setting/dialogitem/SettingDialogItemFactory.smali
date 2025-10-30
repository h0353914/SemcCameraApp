.class public Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;
.super Ljava/lang/Object;
.source "SettingDialogItemFactory.java"


# static fields
.field public static final BUTTON:I = 0x1

.field public static final BUTTON_DETAILS:I = 0x5

.field public static final CATEGORY_BUTTON:I = 0x3

.field public static final CATEGORY_SWITCH:I = 0x4

.field public static final END_OF_TYPE_LIST:I = 0x6

.field public static final VALUE_BUTTON:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;Landroid/view/ViewGroup;)Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;
    .registers 5

    .line 29
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 31
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getDialogItemType()I

    move-result v0

    packed-switch v0, :pswitch_data_44

    .line 48
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The specified type is unknown. type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getDialogItemType()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 45
    :pswitch_26
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;

    invoke-direct {v0, p2, p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButtonDetails;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    return-object v0

    .line 42
    :pswitch_2c
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;

    invoke-direct {v0, p2, p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    return-object v0

    .line 39
    :pswitch_32
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;

    invoke-direct {v0, p2, p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    return-object v0

    .line 36
    :pswitch_38
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;

    invoke-direct {v0, p2, p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    return-object v0

    .line 33
    :pswitch_3e
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;

    invoke-direct {v0, p2, p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    return-object v0

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_38
        :pswitch_32
        :pswitch_2c
        :pswitch_26
    .end packed-switch
.end method

.method public getDialogItemTypeCount()I
    .registers 2

    const/4 v0, 0x6

    return v0
.end method
