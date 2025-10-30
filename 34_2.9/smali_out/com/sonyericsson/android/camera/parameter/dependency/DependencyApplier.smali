.class public abstract Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
.super Ljava/lang/Object;
.source "DependencyApplier.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DependencyApplier"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    .registers 3

    .line 60
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_7a

    const/4 p0, 0x0

    return-object p0

    .line 86
    :pswitch_11
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/AspectRatioApplier;

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/parameter/dependency/AspectRatioApplier;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;)V

    return-object v0

    .line 84
    :pswitch_19
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/FusionModeApplier;

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/parameter/dependency/FusionModeApplier;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;)V

    return-object v0

    .line 82
    :pswitch_21
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/VideoHdrApplier;

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/parameter/dependency/VideoHdrApplier;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V

    return-object v0

    .line 80
    :pswitch_29
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/TouchIntentionApplier;

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/parameter/dependency/TouchIntentionApplier;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;)V

    return-object v0

    .line 78
    :pswitch_31
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/ShutterSpeedApplier;

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/parameter/dependency/ShutterSpeedApplier;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;)V

    return-object v0

    .line 76
    :pswitch_39
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/ResolutionApplier;

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/parameter/dependency/ResolutionApplier;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V

    return-object v0

    .line 74
    :pswitch_41
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/VideoSizeApplier;

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/parameter/dependency/VideoSizeApplier;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    return-object v0

    .line 72
    :pswitch_49
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/ObjectTrackingApplier;

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/parameter/dependency/ObjectTrackingApplier;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;)V

    return-object v0

    .line 70
    :pswitch_51
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/FocusModeApplier;

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/parameter/dependency/FocusModeApplier;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    return-object v0

    .line 68
    :pswitch_59
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/VideoShutterTriggerApplier;

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/parameter/dependency/VideoShutterTriggerApplier;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;)V

    return-object v0

    .line 66
    :pswitch_61
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/ShutterTriggerApplier;

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/parameter/dependency/ShutterTriggerApplier;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;)V

    return-object v0

    .line 64
    :pswitch_69
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/IsoApplier;

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/parameter/dependency/IsoApplier;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/Iso;)V

    return-object v0

    .line 62
    :pswitch_71
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/HdrApplier;

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/parameter/dependency/HdrApplier;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;)V

    return-object v0

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_71
        :pswitch_69
        :pswitch_61
        :pswitch_59
        :pswitch_51
        :pswitch_49
        :pswitch_41
        :pswitch_39
        :pswitch_31
        :pswitch_29
        :pswitch_21
        :pswitch_19
        :pswitch_11
    .end packed-switch
.end method


# virtual methods
.method public abstract apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
.end method

.method public abstract reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
.end method
