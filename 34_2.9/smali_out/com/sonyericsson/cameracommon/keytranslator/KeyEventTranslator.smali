.class public Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;
.super Ljava/lang/Object;
.source "KeyEventTranslator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;,
        Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;,
        Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyAction;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "KeyEventTranslator"


# instance fields
.field private mCurrentKeyType:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

.field private final mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/setting/UserSettings;)V
    .registers 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->mCurrentKeyType:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    .line 68
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    return-void
.end method

.method private isAvailableNow(Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyAction;)Z
    .registers 11

    .line 192
    sget-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$1;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_42

    const/4 v1, 0x2

    if-eq p1, v1, :cond_33

    const/4 v1, 0x3

    if-eq p1, v1, :cond_24

    const/4 v1, 0x4

    if-eq p1, v1, :cond_15

    goto :goto_50

    .line 206
    :cond_15
    sget-object v4, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v5, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->VOLUME_DOWN_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v6, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->VOLUME_DOWN_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v7, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->isExpectedKeyType(Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyAction;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;)Z

    move-result v0

    goto :goto_50

    .line 202
    :cond_24
    sget-object v3, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v4, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->VOLUME_UP_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v5, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->VOLUME_UP_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v6, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->isExpectedKeyType(Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyAction;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;)Z

    move-result v0

    goto :goto_50

    .line 198
    :cond_33
    sget-object v3, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->CAMERA_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v4, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->CAMERA_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v5, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->CAMERA_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v6, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->CAMERA_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->isExpectedKeyType(Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyAction;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;)Z

    move-result v0

    goto :goto_50

    .line 194
    :cond_42
    sget-object v3, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v4, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->CAMERA_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v5, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->CAMERA_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v6, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->isExpectedKeyType(Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyAction;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;)Z

    move-result v0

    :goto_50
    return v0
.end method

.method private isExpectedKeyType(Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyAction;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;)Z
    .registers 8

    .line 221
    sget-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$1;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$KeyAction:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyAction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_21

    const/4 p2, 0x2

    if-eq p1, p2, :cond_19

    const/4 p2, 0x3

    if-eq p1, p2, :cond_13

    return v0

    .line 239
    :cond_13
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->mCurrentKeyType:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    if-ne p0, p4, :cond_18

    return v1

    :cond_18
    return v0

    .line 231
    :cond_19
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->mCurrentKeyType:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    if-ne p1, p4, :cond_20

    .line 232
    iput-object p5, p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->mCurrentKeyType:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    return v1

    :cond_20
    return v0

    .line 223
    :cond_21
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->mCurrentKeyType:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    if-ne p1, p2, :cond_28

    .line 224
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->mCurrentKeyType:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    return v1

    :cond_28
    return v0
.end method


# virtual methods
.method public reset()V
    .registers 2

    .line 76
    sget-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->mCurrentKeyType:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    return-void
.end method

.method public translateKeyCode(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    .registers 3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_65

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_62

    const/16 v0, 0x42

    if-eq p1, v0, :cond_5f

    const/16 v0, 0x50

    if-eq p1, v0, :cond_5c

    const/16 v0, 0x52

    if-eq p1, v0, :cond_59

    const/16 v0, 0x82

    if-eq p1, v0, :cond_5f

    packed-switch p1, :pswitch_data_68

    .line 141
    sget-object p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    goto :goto_67

    .line 96
    :pswitch_1d
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VOLUME_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    if-nez p0, :cond_2c

    .line 104
    sget-object p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ZOOM:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    goto :goto_67

    .line 108
    :cond_2c
    sget-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VolumeKey:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_56

    const/4 v0, 0x2

    if-eq p0, v0, :cond_53

    const/4 v0, 0x3

    if-eq p0, v0, :cond_49

    .line 123
    const-string p0, "Volume key parameter is invalid state."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 124
    sget-object p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ZOOM:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    goto :goto_67

    :cond_49
    const/16 p0, 0x18

    if-ne p1, p0, :cond_50

    .line 117
    sget-object p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->FOCUS_AND_SHUTTER_UP_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    goto :goto_67

    .line 119
    :cond_50
    sget-object p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->FOCUS_AND_SHUTTER_DOWN_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    goto :goto_67

    .line 113
    :cond_53
    sget-object p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->VOLUME:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    goto :goto_67

    .line 110
    :cond_56
    sget-object p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ZOOM:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    goto :goto_67

    .line 132
    :cond_59
    sget-object p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->MENU:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    goto :goto_67

    .line 88
    :cond_5c
    sget-object p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->FOCUS:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    goto :goto_67

    .line 137
    :cond_5f
    :pswitch_5f
    sget-object p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->FOCUS_AND_SHUTTER_UP_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    goto :goto_67

    .line 91
    :cond_62
    sget-object p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->SHUTTER:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    goto :goto_67

    .line 129
    :cond_65
    sget-object p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->BACK:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    :goto_67
    return-object p0

    :pswitch_data_68
    .packed-switch 0x17
        :pswitch_5f
        :pswitch_1d
        :pswitch_1d
    .end packed-switch
.end method

.method public translateKeyCodeOnDown(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    .registers 3

    .line 153
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCode(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object p1

    .line 154
    sget-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyAction;->DOWN:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyAction;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->isAvailableNow(Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyAction;)Z

    move-result p0

    if-nez p0, :cond_e

    .line 155
    sget-object p1, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->IGNORED:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    :cond_e
    return-object p1
.end method

.method public translateKeyCodeOnLongPress(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    .registers 3

    .line 177
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCode(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object p1

    .line 178
    sget-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyAction;->LONG_PRESS:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyAction;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->isAvailableNow(Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyAction;)Z

    move-result p0

    if-nez p0, :cond_e

    .line 179
    sget-object p1, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->IGNORED:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    :cond_e
    return-object p1
.end method

.method public translateKeyCodeOnUp(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    .registers 3

    .line 165
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCode(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object p1

    .line 166
    sget-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyAction;->UP:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyAction;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->isAvailableNow(Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyAction;)Z

    move-result p0

    if-nez p0, :cond_e

    .line 167
    sget-object p1, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->IGNORED:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    :cond_e
    return-object p1
.end method
