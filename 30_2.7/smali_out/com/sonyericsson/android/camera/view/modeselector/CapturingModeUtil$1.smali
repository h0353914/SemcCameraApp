.class final Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$1;
.super Ljava/util/ArrayList;
.source "CapturingModeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 108
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "capturing_mode_single_effect"

    .line 109
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$1;->add(Ljava/lang/Object;)Z

    const-string v0, "capturing_mode_sweep_panorama"

    .line 110
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$1;->add(Ljava/lang/Object;)Z

    const-string v0, "GOOGLE_LENS"

    .line 111
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$1;->add(Ljava/lang/Object;)Z

    const-string v0, "PORTRAIT_SELFIE"

    .line 112
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$1;->add(Ljava/lang/Object;)Z

    const-string v0, "BOKEH_EFFECT"

    .line 113
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$1;->add(Ljava/lang/Object;)Z

    const-string v0, "EVERYONE_MODE"

    .line 114
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$1;->add(Ljava/lang/Object;)Z

    const-string v0, "DUAL_BACKGROUND_DEFOCUS"

    .line 115
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$1;->add(Ljava/lang/Object;)Z

    const-string v0, "DUAL_MONOCHROME"

    .line 116
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
