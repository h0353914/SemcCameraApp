.class synthetic Lcom/sonyericsson/android/camera/configuration/parameters/Iso$1;
.super Ljava/lang/Object;
.source "Iso.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/configuration/parameters/Iso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FusionMode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 227
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FusionMode:[I

    :try_start_9
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FusionMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FusionMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FusionMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    return-void
.end method
