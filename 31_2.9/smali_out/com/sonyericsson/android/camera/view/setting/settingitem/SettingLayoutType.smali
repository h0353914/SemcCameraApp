.class public final enum Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;
.super Ljava/lang/Enum;
.source "SettingLayoutType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

.field public static final enum NONE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

.field public static final enum SWITCH:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

.field public static final enum SWITCH_DETAIL:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

.field public static final enum VALUES:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

.field public static final enum VALUES_DETAIL:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 15
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->NONE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    .line 18
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    const-string v1, "SWITCH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->SWITCH:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    .line 21
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    const-string v1, "SWITCH_DETAIL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->SWITCH_DETAIL:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    .line 24
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    const-string v1, "VALUES"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->VALUES:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    .line 27
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    const-string v1, "VALUES_DETAIL"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->VALUES_DETAIL:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    const/4 v0, 0x5

    .line 12
    new-array v0, v0, [Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    sget-object v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->NONE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->SWITCH:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->SWITCH_DETAIL:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->VALUES:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->VALUES_DETAIL:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->$VALUES:[Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;
    .registers 2

    .line 36
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_1a

    .line 114
    sget-object p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->NONE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    return-object p0

    .line 111
    :pswitch_e
    sget-object p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->VALUES_DETAIL:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    return-object p0

    .line 84
    :pswitch_11
    sget-object p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->VALUES:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    return-object p0

    .line 65
    :pswitch_14
    sget-object p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->SWITCH_DETAIL:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    return-object p0

    .line 62
    :pswitch_17
    sget-object p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->SWITCH:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    return-object p0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;
    .registers 2

    .line 12
    const-class v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;
    .registers 1

    .line 12
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->$VALUES:[Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    return-object v0
.end method
