.class public Lcom/sonyericsson/android/camera/parameter/dependency/TaggingApplier;
.super Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
.source "TaggingApplier.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TaggingApplier"


# instance fields
.field private final mValue:Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;)V
    .registers 2
    .param p1    # Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/dependency/TaggingApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;

    return-void
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .registers 4

    .line 41
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/dependency/TaggingApplier;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;

    if-ne v0, v1, :cond_e

    .line 42
    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mBokehStrength:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->unavailable(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    goto :goto_13

    .line 44
    :cond_e
    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mBokehStrength:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    :goto_13
    return-void
.end method

.method public reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .registers 2

    return-void
.end method
