.class public Lcom/sonymobile/vibrationeffect/VibrationEffect;
.super Ljava/lang/Object;
.source "VibrationEffect.java"


# static fields
.field public static final DEFAULT_AMPLITUDE:I = -0x1

.field public static final EFFECT_AUTHENTICATION_NG:I = 0x2719

.field public static final EFFECT_AUTHENTICATION_OK:I = 0x2718

.field public static final EFFECT_CHANGE_MODE:I = 0x271a

.field public static final EFFECT_CHECKBOX:I = 0x271e

.field public static final EFFECT_CLICK:I = 0x2711

.field public static final EFFECT_DOUBLE_CLICK:I = 0x2712

.field public static final EFFECT_LONG_PRESS:I = 0x2714

.field public static final EFFECT_LONG_PRESS_CAMERA_KEY:I = 0x2715

.field public static final EFFECT_LONG_PRESS_POWER_KEY:I = 0x2716

.field public static final EFFECT_RADIO_BUTTON:I = 0x271d

.field public static final EFFECT_SLIDER:I = 0x271b

.field public static final EFFECT_SWITCH:I = 0x271c

.field public static final EFFECT_TEXT_INPUT:I = 0x271f

.field public static final EFFECT_TICK:I = 0x2713

.field public static final EFFECT_VIRTUAL_KEY:I = 0x2717


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertAndroidEffectId(I)I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public static createOneShot(JI)Landroid/os/VibrationEffect;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createWaveform([JI)Landroid/os/VibrationEffect;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createWaveform([J[II)Landroid/os/VibrationEffect;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public static get(I)Landroid/os/VibrationEffect;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method
