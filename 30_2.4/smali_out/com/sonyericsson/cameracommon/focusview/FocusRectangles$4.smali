.class synthetic Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$4;
.super Ljava/lang/Object;
.source "FocusRectangles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$cameracommon$focusview$FocusRectangles$AutoFocusViewType:[I

.field static final synthetic $SwitchMap$com$sonyericsson$cameracommon$focusview$FocusRectangles$FocusSetType:[I

.field static final synthetic $SwitchMap$com$sonyericsson$cameracommon$focusview$MultiAutoFocusView$FocusState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 2450
    invoke-static {}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;->values()[Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$4;->$SwitchMap$com$sonyericsson$cameracommon$focusview$MultiAutoFocusView$FocusState:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$4;->$SwitchMap$com$sonyericsson$cameracommon$focusview$MultiAutoFocusView$FocusState:[I

    sget-object v2, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;->FOCUSING:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$4;->$SwitchMap$com$sonyericsson$cameracommon$focusview$MultiAutoFocusView$FocusState:[I

    sget-object v3, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;->FOCUSDONE:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    .line 1937
    :catch_1f
    invoke-static {}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->values()[Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$4;->$SwitchMap$com$sonyericsson$cameracommon$focusview$FocusRectangles$FocusSetType:[I

    :try_start_28
    sget-object v2, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$4;->$SwitchMap$com$sonyericsson$cameracommon$focusview$FocusRectangles$FocusSetType:[I

    sget-object v3, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->FIRST:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_32} :catch_32

    :catch_32
    :try_start_32
    sget-object v2, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$4;->$SwitchMap$com$sonyericsson$cameracommon$focusview$FocusRectangles$FocusSetType:[I

    sget-object v3, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->RELEASE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3c} :catch_3c

    :catch_3c
    :try_start_3c
    sget-object v2, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$4;->$SwitchMap$com$sonyericsson$cameracommon$focusview$FocusRectangles$FocusSetType:[I

    sget-object v3, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->MOVE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_47} :catch_47

    .line 718
    :catch_47
    invoke-static {}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;->values()[Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$4;->$SwitchMap$com$sonyericsson$cameracommon$focusview$FocusRectangles$AutoFocusViewType:[I

    :try_start_50
    sget-object v2, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$4;->$SwitchMap$com$sonyericsson$cameracommon$focusview$FocusRectangles$AutoFocusViewType:[I

    sget-object v3, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;->SINGLE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_5a} :catch_5a

    :catch_5a
    :try_start_5a
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$4;->$SwitchMap$com$sonyericsson$cameracommon$focusview$FocusRectangles$AutoFocusViewType:[I

    sget-object v2, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;->MULTI:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$AutoFocusViewType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_64} :catch_64

    :catch_64
    return-void
.end method
